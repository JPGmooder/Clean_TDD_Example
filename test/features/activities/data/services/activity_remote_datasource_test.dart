import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:tddclean/core/error/exceptions.dart';
import 'package:tddclean/features/activities/data/models/activity_model.dart';
import 'package:tddclean/features/activities/data/services/activity_remote_datasource.dart';
import 'package:http_mock_adapter/http_mock_adapter.dart';

void main() {
  late ActivityRemoteDataSourceImpl remoteDataSourceImpl;

  late Dio dio;
  late DioAdapter mockedDio;
  setUp(() {
    dio = Dio();
    mockedDio = DioAdapter(dio: dio, matcher: const UrlRequestMatcher());
    remoteDataSourceImpl = ActivityRemoteDataSourceImpl(dio);
  });

  group("Dio functions.", () {
    var tModel = ActivityModel(name: "a", url: "a", type: "a");
    var tBase = "https://www.boredapi.com/api";
    var tGetRandom = "/activity";
    test("should return valid data when request", () async {
      mockedDio.onGet(tGetRandom, (server) {
        server.reply(200, tModel.toJson());
      }, data: null);

      var result = await remoteDataSourceImpl.getRandomActivity();
      expect(tModel, result);
      verifyNoMoreInteractions(mockedDio);
    });

    test("should raise ServerException when status code isn't valid", () async {
      mockedDio.onGet(tGetRandom, (server) {
        server.reply(404, null);
      }, data: null);
      var call = () async => await remoteDataSourceImpl.getRandomActivity();
      expect(call(), throwsA(ServerException()));
    });
  });
}
