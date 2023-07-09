import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:hive/hive.dart';
import 'package:internet_connection_checker_plus/internet_connection_checker_plus.dart';
import 'package:tddclean/core/network/info.dart';
import 'package:tddclean/features/activities/data/models/activity_model.dart';
import 'package:tddclean/features/activities/data/repositories/activity_repositpry_impl.dart';
import 'package:tddclean/features/activities/data/services/activity_local_datasource.dart';
import 'package:tddclean/features/activities/data/services/activity_remote_datasource.dart';
import 'package:tddclean/features/activities/logic/repositories/activity_repository.dart';
import 'package:tddclean/features/activities/logic/usecases/get_random_activity.dart';
import 'package:tddclean/features/activities/logic/usecases/get_random_activity_by_name.dart';
import 'package:tddclean/features/activities/view/bloc/activity_bloc.dart';

abstract final class ServiceLocator {
  static final _sl = GetIt.instance;

  static void init() {
    _initExternal();
    _initCore();
    _initFeatures();
  }

  static void _initFeatures() {
    //* Services
    _sl.registerSingleton<ActivityLocalDataSource>(
        ActivityLocalDataSourceImpl(box: _sl()));

    _sl.registerSingleton<ActivityRemoteDataSource>(
        ActivityRemoteDataSourceImpl(_sl()));

    //* Repository
    _sl.registerSingleton<ActivityRepository>(ActivityRepositoryImpl(
        localDataSource: _sl(),
        remoteDataSource: _sl(),
        networkDataSource: _sl()));

    //* Usecases
    _sl.registerSingleton(GetRandomActivity(repository: _sl()));
    _sl.registerSingleton(GetRandomActivityByName(_sl(), params: ""));

    //* Bloc
    _sl.registerFactory(() =>
        ActivityBloc(getRandomActivity: _sl(), getRandomActivityByName: _sl()));
  }

  static void _initCore() {
    _sl.registerSingleton<NetworkInfo>(NetworkInfoImpl(_sl()));
  }

  static void _initExternal() {
    _sl.registerFactory<Box<ActivityModel>>(
        () => Hive.box<ActivityModel>("Models"));
    _sl.registerFactory<InternetConnection>(
        () => InternetConnection.createInstance());
    _sl.registerSingleton<Dio>(Dio());
  }
}
