import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import '../../../../core/error/exceptions.dart';
import '../models/activity_model.dart';
part 'activity_remote_datasource.g.dart';

abstract class ActivityRemoteDataSource {
  /// Calls for endpoint https://www.boredapi.com/api/activity
  ///
  /// Throws a [ServerException] whenever answer is not correct or not reached client
  Future<ActivityModel>? getRandomActivity();

  /// Calls for endpoint https://www.boredapi.com/api/activity?type={type}
  ///
  /// Throws a [ServerException] whenever answer is not correct or not reached client
  Future<ActivityModel>? getRandomActivityByType(String type);
}

@RestApi(
  baseUrl: "https://www.boredapi.com/api",
)
abstract class ActivityRemoteDataSourceImpl
    implements ActivityRemoteDataSource {
  factory ActivityRemoteDataSourceImpl(Dio dio, {String? baseUrl}) {
    dio.interceptors.add(CustomInterceptor());
    return _ActivityRemoteDataSourceImpl(dio, baseUrl: baseUrl);
  }
  @GET("/activity")
  @override
  Future<ActivityModel>? getRandomActivity();

  @GET("/activity")
  @override
  Future<ActivityModel>? getRandomActivityByType(@Query("type") String type);
}

class CustomInterceptor extends Interceptor {
  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
  
    throw ServerException();
  }
}
