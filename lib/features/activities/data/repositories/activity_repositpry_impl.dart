import 'package:dartz/dartz.dart';

import '../../../../core/error/exceptions.dart';
import '../../../../core/error/failures.dart';
import '../../../../core/network/info.dart';
import '../../logic/entities/activity_entity.dart';
import '../../logic/repositories/activity_repository.dart';
import '../models/activity_model.dart';
import '../services/activity_local_datasource.dart';
import '../services/activity_remote_datasource.dart';

typedef requestActivity = Future<ActivityModel>? Function();

class ActivityRepositoryImpl implements ActivityRepository {
  final ActivityLocalDataSource localDataSource;
  final ActivityRemoteDataSource remoteDataSource;
  final NetworkInfo networkDataSource;
  ActivityRepositoryImpl(
      {required this.localDataSource,
      required this.remoteDataSource,
      required this.networkDataSource});

  @override
  Future<Either<Failure, ActivityEntity>>? getRandomActivity() async =>
      await _getActivity(() => remoteDataSource.getRandomActivity());

  @override
  Future<Either<Failure, ActivityEntity>>? getRandomActivityByType(
          String type) async =>
      await _getActivity(() => remoteDataSource.getRandomActivityByType(type));

  Future<Either<Failure, ActivityEntity>> _getActivity(requestActivity requestActivity) async {
    var networkStatus = await networkDataSource.isConnected;
    try {
      ActivityModel? activity;
      if (networkStatus) {
        activity = await requestActivity();
        if (activity == null) {
          throw ServerException();
        }
        await localDataSource.cacheActivity(activity);
      } else {
        activity = await localDataSource.getLastActivity();
        if (activity == null) {
          throw CacheException();
        }
      }
      return Right(activity);
    } on ServerException {
      return Left(ServerFailure(properties: ['a']));
    } on CacheException {
      return Left(CacheFailure(properties: ['a']));
    }
  }
}
