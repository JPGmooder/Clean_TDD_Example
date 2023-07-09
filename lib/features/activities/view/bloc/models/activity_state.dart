part of '../activity_bloc.dart';

@freezed
abstract class ActivityState with _$ActivityState {
  const factory ActivityState.loaded(ActivityEntity loadedActivity) =
      _$ActivityLoadedState;
  const factory ActivityState.initial() = _$ActivityInitialState;
    const factory ActivityState.loading() = _$ActivityLoadingState;

  const factory ActivityState.errored(Failure error) = _$ActivityErroredState;
}
