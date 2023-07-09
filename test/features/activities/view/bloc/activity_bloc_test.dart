import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:hive/hive.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:tddclean/core/error/failures.dart';
import 'package:tddclean/features/activities/data/models/activity_model.dart';
import 'package:tddclean/features/activities/logic/entities/activity_entity.dart';
import 'package:tddclean/features/activities/logic/usecases/get_random_activity.dart';
import 'package:tddclean/features/activities/logic/usecases/get_random_activity_by_name.dart';
import 'package:tddclean/features/activities/view/bloc/activity_bloc.dart';
import '../../data/services/activity_local_datasource_test.mocks.dart';
import 'activity_bloc_test.mocks.dart';

@GenerateNiceMocks([
  MockSpec<GetRandomActivity>(),
  MockSpec<GetRandomActivityByName>(),
  MockSpec<HiveInterface>()
])



void main() {
  late ActivityBloc activityBloc;
  late MockGetRandomActivity mockGetRandomActivity;
  late MockGetRandomActivityByName mockGetRandomActivityByName;
  MockHiveInterface mockHive = MockHiveInterface();
  group("Activity bloc test.", () {
    when(mockHive.box<ActivityModel>("Models"))
        .thenReturn(MockBox<ActivityModel>());

    setUp(() {
      mockGetRandomActivity = MockGetRandomActivity();
      mockGetRandomActivityByName = MockGetRandomActivityByName();
      activityBloc = ActivityBloc(
          getRandomActivity: mockGetRandomActivity,
          getRandomActivityByName: mockGetRandomActivityByName);
    });
    group("Should emit ErroredState", () {
      test("when ServerFailure returned", () async {
        when(mockGetRandomActivity())
            .thenAnswer((_) async => Left(ServerFailure(properties: ['a'])));
        activityBloc.add(ActivityEvent.loadRandom());
        expectLater(
            activityBloc.stream,
            emitsInOrder([
              ActivityState.loading(),
              ActivityState.errored(ServerFailure(properties: ['a']))
            ]));
      });
      test("when CacheFailure returned", () async {
        when(mockGetRandomActivity())
            .thenAnswer((_) async => Left(CacheFailure(properties: ['a'])));
        activityBloc.add(ActivityEvent.loadRandom());
        expectLater(
            activityBloc.stream,
            emitsInOrder([
              ActivityState.loading(),
              ActivityState.errored(CacheFailure(properties: ['a']))
            ]));
      });
    });

    group(
        "Should emit LoadedState with correct model when ActivityModel returned",
        () {
      var tActivityEntity = ActivityEntity(name: "A", url: "A", type: "A");
      test("from getRandomActivity", () async {
        when(mockGetRandomActivity())
            .thenAnswer((_) async => Right(tActivityEntity));
        activityBloc.add(ActivityEvent.loadRandom());
        expectLater(
            activityBloc.stream,
            emitsInOrder([
              ActivityState.loading(),
              ActivityState.loaded(tActivityEntity)
            ]));
      });

      test("from getActivityByName", () async {
        when(mockGetRandomActivityByName())
            .thenAnswer((_) async => Right(tActivityEntity));
        activityBloc.add(ActivityEvent.loadByType("A"));
        expectLater(
            activityBloc.stream,
            emitsInOrder([
              ActivityState.loading(),
              ActivityState.loaded(tActivityEntity)
            ]));
      });
    });
  });
}
