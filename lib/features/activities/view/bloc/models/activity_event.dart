part of '../activity_bloc.dart';
@freezed
abstract class ActivityEvent with _$ActivityEvent {
  const factory ActivityEvent.loadRandom() = _$ActivityLoadRandomEvent;
  const factory ActivityEvent.loadByType(String type) =
      _$ActivityLoadByTypeEvent;
}
