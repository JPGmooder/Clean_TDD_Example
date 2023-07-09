import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';
import 'package:internet_connection_checker_plus/internet_connection_checker_plus.dart';
import 'package:tddclean/core/error/failures.dart';
import 'package:tddclean/core/network/info.dart';
import 'package:tddclean/features/activities/data/models/activity_model.dart';
import 'package:tddclean/features/activities/data/repositories/activity_repositpry_impl.dart';
import 'package:tddclean/features/activities/data/services/activity_local_datasource.dart';
import 'package:tddclean/features/activities/data/services/activity_remote_datasource.dart';
import 'package:tddclean/features/activities/logic/entities/activity_entity.dart';
import 'package:tddclean/features/activities/logic/repositories/activity_repository.dart';
import 'package:tddclean/features/activities/logic/usecases/get_random_activity.dart';
import 'package:tddclean/features/activities/logic/usecases/get_random_activity_by_name.dart';
part 'models/activity_event.dart';
part 'models/activity_state.dart';
part 'activity_bloc.freezed.dart';

class ActivityBloc extends Bloc<ActivityEvent, ActivityState> {
  GetRandomActivity getRandomActivity;
  GetRandomActivityByName getRandomActivityByName;
  ActivityBloc(
      {required this.getRandomActivity, required this.getRandomActivityByName})
      : super(ActivityState.initial()) {
    on<ActivityEvent>((event, emit) async {
      event.maybeWhen(
        orElse: () => null,
        loadRandom: () async {
          emit(ActivityState.loading());
          var activity = await getRandomActivity();
          if (activity!.isLeft()) {
            emit(ActivityState.errored((activity as Left).value));
          } else {
            emit(ActivityState.loaded((activity as Right).value));
          }
        },
        loadByType: (type) async {
          emit(ActivityState.loading());
          getRandomActivityByName.params = type;
          var activity = await getRandomActivityByName();
          if (activity!.isLeft()) {
            emit(ActivityState.errored((activity as Left).value));
          } else {
            emit(ActivityState.loaded((activity as Right).value));
          }
        },
      );
    });
  }
}
