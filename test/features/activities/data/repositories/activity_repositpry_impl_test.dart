import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:tddclean/core/error/exceptions.dart';
import 'package:tddclean/core/error/failures.dart';
import 'package:tddclean/core/network/info.dart';
import 'package:tddclean/features/activities/data/models/activity_model.dart';
import 'package:tddclean/features/activities/data/repositories/activity_repositpry_impl.dart';
import 'package:tddclean/features/activities/data/services/activity_local_datasource.dart';
import 'package:tddclean/features/activities/data/services/activity_remote_datasource.dart';
import 'package:tddclean/features/activities/logic/entities/activity_entity.dart';
import 'activity_repositpry_impl_test.mocks.dart';

@GenerateNiceMocks([
  MockSpec<ActivityRemoteDataSource>(),
  MockSpec<ActivityLocalDataSource>(),
  MockSpec<NetworkInfo>()
])
void main() {
  late ActivityRepositoryImpl activityRepositoryImpl;
  late MockActivityLocalDataSource activityLocalDataSource;
  late MockActivityRemoteDataSource activityRemoteDataSource;
  late MockNetworkInfo networkInfo;

  setUp(() {
    activityLocalDataSource = MockActivityLocalDataSource();
    activityRemoteDataSource = MockActivityRemoteDataSource();
    networkInfo = MockNetworkInfo();
    activityRepositoryImpl = ActivityRepositoryImpl(
        localDataSource: activityLocalDataSource,
        remoteDataSource: activityRemoteDataSource,
        networkDataSource: networkInfo);
  });

  group("Activity by name.", () {
    const searchType = "Chill";
    const tModel = ActivityModel(name: "Чилка", url: "", type: "Chill");
    const tEntity = tModel as ActivityEntity;
    final tServerFailure = ServerFailure(properties: ["a"]);
    final tCacheFailure = CacheFailure(properties: ["a"]);

    test("should check if device is online", () async {
      when(networkInfo.isConnected).thenAnswer((realInvocation) async => true);
      var result =
          await activityRepositoryImpl.getRandomActivityByType(searchType);
      verify(networkInfo.isConnected).called(1);
    });

    group("When device is online", () {
      setUp(() {
        when(networkInfo.isConnected)
            .thenAnswer((realInvocation) async => true);
      });

      test(
          "should return remote data when call to remote data source is successfull",
          () async {
        when(activityRemoteDataSource.getRandomActivityByType(any))
            .thenAnswer((realInvocation) async {
          return tModel;
        });

        final result =
            await activityRepositoryImpl.getRandomActivityByType(searchType);

        verify(activityRemoteDataSource.getRandomActivityByType(searchType));
        expect(result, equals(Right(tEntity)));
      });

      test(
          "should cache data localy when call to remote data source is successfull",
          () async {
        when(activityRemoteDataSource.getRandomActivityByType(any))
            .thenAnswer((realInvocation) async {
          return tModel;
        });

        await activityRepositoryImpl.getRandomActivityByType(searchType);

        verify(activityRemoteDataSource.getRandomActivityByType(searchType));
        verify(activityLocalDataSource.cacheActivity(tModel));
      });

      test(
          "should return server failute when call to remote data source is unsuccessfull",
          () async {
        when(activityRemoteDataSource.getRandomActivityByType(any))
            .thenThrow(ServerException());
        var result =
            await activityRepositoryImpl.getRandomActivityByType(searchType);

        verify(activityRemoteDataSource.getRandomActivityByType(searchType))
            .called(1);
        expect(result, Left(tServerFailure));
        verifyZeroInteractions(activityLocalDataSource);
      });
    });

    group("When device is offline", () {
      setUp(() {
        when(networkInfo.isConnected)
            .thenAnswer((realInvocation) async => false);
      });
      test("should return cached data when it exists", () async {
        when(activityLocalDataSource.getLastActivity()).thenAnswer((_) async {
          return tModel;
        });

        var result =
            await activityRepositoryImpl.getRandomActivityByType(searchType);
        verify(activityLocalDataSource.getLastActivity()).called(1);
        expect(result, Right(tEntity));
        verifyNoMoreInteractions(activityLocalDataSource);
        verifyZeroInteractions(activityRemoteDataSource);
      });

      test("should return failure when data isn't exists", () async {
        when(activityLocalDataSource.getLastActivity())
            .thenThrow(CacheException());
        var result =
            await activityRepositoryImpl.getRandomActivityByType(searchType);
        verify(activityLocalDataSource.getLastActivity()).called(1);
        expect(result, Left(tCacheFailure));
        verifyNoMoreInteractions(activityLocalDataSource);
        verifyZeroInteractions(activityRemoteDataSource);
      });
    });

   
  });
}
