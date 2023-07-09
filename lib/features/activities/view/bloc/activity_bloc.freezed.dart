// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'activity_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ActivityEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadRandom,
    required TResult Function(String type) loadByType,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadRandom,
    TResult? Function(String type)? loadByType,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadRandom,
    TResult Function(String type)? loadByType,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$ActivityLoadRandomEvent value) loadRandom,
    required TResult Function(_$ActivityLoadByTypeEvent value) loadByType,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_$ActivityLoadRandomEvent value)? loadRandom,
    TResult? Function(_$ActivityLoadByTypeEvent value)? loadByType,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$ActivityLoadRandomEvent value)? loadRandom,
    TResult Function(_$ActivityLoadByTypeEvent value)? loadByType,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ActivityEventCopyWith<$Res> {
  factory $ActivityEventCopyWith(
          ActivityEvent value, $Res Function(ActivityEvent) then) =
      _$ActivityEventCopyWithImpl<$Res, ActivityEvent>;
}

/// @nodoc
class _$ActivityEventCopyWithImpl<$Res, $Val extends ActivityEvent>
    implements $ActivityEventCopyWith<$Res> {
  _$ActivityEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_$ActivityLoadRandomEventCopyWith<$Res> {
  factory _$$_$ActivityLoadRandomEventCopyWith(
          _$_$ActivityLoadRandomEvent value,
          $Res Function(_$_$ActivityLoadRandomEvent) then) =
      __$$_$ActivityLoadRandomEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_$ActivityLoadRandomEventCopyWithImpl<$Res>
    extends _$ActivityEventCopyWithImpl<$Res, _$_$ActivityLoadRandomEvent>
    implements _$$_$ActivityLoadRandomEventCopyWith<$Res> {
  __$$_$ActivityLoadRandomEventCopyWithImpl(_$_$ActivityLoadRandomEvent _value,
      $Res Function(_$_$ActivityLoadRandomEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_$ActivityLoadRandomEvent implements _$ActivityLoadRandomEvent {
  const _$_$ActivityLoadRandomEvent();

  @override
  String toString() {
    return 'ActivityEvent.loadRandom()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_$ActivityLoadRandomEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadRandom,
    required TResult Function(String type) loadByType,
  }) {
    return loadRandom();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadRandom,
    TResult? Function(String type)? loadByType,
  }) {
    return loadRandom?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadRandom,
    TResult Function(String type)? loadByType,
    required TResult orElse(),
  }) {
    if (loadRandom != null) {
      return loadRandom();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$ActivityLoadRandomEvent value) loadRandom,
    required TResult Function(_$ActivityLoadByTypeEvent value) loadByType,
  }) {
    return loadRandom(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_$ActivityLoadRandomEvent value)? loadRandom,
    TResult? Function(_$ActivityLoadByTypeEvent value)? loadByType,
  }) {
    return loadRandom?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$ActivityLoadRandomEvent value)? loadRandom,
    TResult Function(_$ActivityLoadByTypeEvent value)? loadByType,
    required TResult orElse(),
  }) {
    if (loadRandom != null) {
      return loadRandom(this);
    }
    return orElse();
  }
}

abstract class _$ActivityLoadRandomEvent implements ActivityEvent {
  const factory _$ActivityLoadRandomEvent() = _$_$ActivityLoadRandomEvent;
}

/// @nodoc
abstract class _$$_$ActivityLoadByTypeEventCopyWith<$Res> {
  factory _$$_$ActivityLoadByTypeEventCopyWith(
          _$_$ActivityLoadByTypeEvent value,
          $Res Function(_$_$ActivityLoadByTypeEvent) then) =
      __$$_$ActivityLoadByTypeEventCopyWithImpl<$Res>;
  @useResult
  $Res call({String type});
}

/// @nodoc
class __$$_$ActivityLoadByTypeEventCopyWithImpl<$Res>
    extends _$ActivityEventCopyWithImpl<$Res, _$_$ActivityLoadByTypeEvent>
    implements _$$_$ActivityLoadByTypeEventCopyWith<$Res> {
  __$$_$ActivityLoadByTypeEventCopyWithImpl(_$_$ActivityLoadByTypeEvent _value,
      $Res Function(_$_$ActivityLoadByTypeEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
  }) {
    return _then(_$_$ActivityLoadByTypeEvent(
      null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_$ActivityLoadByTypeEvent implements _$ActivityLoadByTypeEvent {
  const _$_$ActivityLoadByTypeEvent(this.type);

  @override
  final String type;

  @override
  String toString() {
    return 'ActivityEvent.loadByType(type: $type)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_$ActivityLoadByTypeEvent &&
            (identical(other.type, type) || other.type == type));
  }

  @override
  int get hashCode => Object.hash(runtimeType, type);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_$ActivityLoadByTypeEventCopyWith<_$_$ActivityLoadByTypeEvent>
      get copyWith => __$$_$ActivityLoadByTypeEventCopyWithImpl<
          _$_$ActivityLoadByTypeEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadRandom,
    required TResult Function(String type) loadByType,
  }) {
    return loadByType(type);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadRandom,
    TResult? Function(String type)? loadByType,
  }) {
    return loadByType?.call(type);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadRandom,
    TResult Function(String type)? loadByType,
    required TResult orElse(),
  }) {
    if (loadByType != null) {
      return loadByType(type);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$ActivityLoadRandomEvent value) loadRandom,
    required TResult Function(_$ActivityLoadByTypeEvent value) loadByType,
  }) {
    return loadByType(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_$ActivityLoadRandomEvent value)? loadRandom,
    TResult? Function(_$ActivityLoadByTypeEvent value)? loadByType,
  }) {
    return loadByType?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$ActivityLoadRandomEvent value)? loadRandom,
    TResult Function(_$ActivityLoadByTypeEvent value)? loadByType,
    required TResult orElse(),
  }) {
    if (loadByType != null) {
      return loadByType(this);
    }
    return orElse();
  }
}

abstract class _$ActivityLoadByTypeEvent implements ActivityEvent {
  const factory _$ActivityLoadByTypeEvent(final String type) =
      _$_$ActivityLoadByTypeEvent;

  String get type;
  @JsonKey(ignore: true)
  _$$_$ActivityLoadByTypeEventCopyWith<_$_$ActivityLoadByTypeEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ActivityState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ActivityEntity loadedActivity) loaded,
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Failure error) errored,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ActivityEntity loadedActivity)? loaded,
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Failure error)? errored,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ActivityEntity loadedActivity)? loaded,
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Failure error)? errored,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$ActivityLoadedState value) loaded,
    required TResult Function(_$ActivityInitialState value) initial,
    required TResult Function(_$ActivityLoadingState value) loading,
    required TResult Function(_$ActivityErroredState value) errored,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_$ActivityLoadedState value)? loaded,
    TResult? Function(_$ActivityInitialState value)? initial,
    TResult? Function(_$ActivityLoadingState value)? loading,
    TResult? Function(_$ActivityErroredState value)? errored,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$ActivityLoadedState value)? loaded,
    TResult Function(_$ActivityInitialState value)? initial,
    TResult Function(_$ActivityLoadingState value)? loading,
    TResult Function(_$ActivityErroredState value)? errored,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ActivityStateCopyWith<$Res> {
  factory $ActivityStateCopyWith(
          ActivityState value, $Res Function(ActivityState) then) =
      _$ActivityStateCopyWithImpl<$Res, ActivityState>;
}

/// @nodoc
class _$ActivityStateCopyWithImpl<$Res, $Val extends ActivityState>
    implements $ActivityStateCopyWith<$Res> {
  _$ActivityStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_$ActivityLoadedStateCopyWith<$Res> {
  factory _$$_$ActivityLoadedStateCopyWith(_$_$ActivityLoadedState value,
          $Res Function(_$_$ActivityLoadedState) then) =
      __$$_$ActivityLoadedStateCopyWithImpl<$Res>;
  @useResult
  $Res call({ActivityEntity loadedActivity});
}

/// @nodoc
class __$$_$ActivityLoadedStateCopyWithImpl<$Res>
    extends _$ActivityStateCopyWithImpl<$Res, _$_$ActivityLoadedState>
    implements _$$_$ActivityLoadedStateCopyWith<$Res> {
  __$$_$ActivityLoadedStateCopyWithImpl(_$_$ActivityLoadedState _value,
      $Res Function(_$_$ActivityLoadedState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loadedActivity = null,
  }) {
    return _then(_$_$ActivityLoadedState(
      null == loadedActivity
          ? _value.loadedActivity
          : loadedActivity // ignore: cast_nullable_to_non_nullable
              as ActivityEntity,
    ));
  }
}

/// @nodoc

class _$_$ActivityLoadedState implements _$ActivityLoadedState {
  const _$_$ActivityLoadedState(this.loadedActivity);

  @override
  final ActivityEntity loadedActivity;

  @override
  String toString() {
    return 'ActivityState.loaded(loadedActivity: $loadedActivity)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_$ActivityLoadedState &&
            (identical(other.loadedActivity, loadedActivity) ||
                other.loadedActivity == loadedActivity));
  }

  @override
  int get hashCode => Object.hash(runtimeType, loadedActivity);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_$ActivityLoadedStateCopyWith<_$_$ActivityLoadedState> get copyWith =>
      __$$_$ActivityLoadedStateCopyWithImpl<_$_$ActivityLoadedState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ActivityEntity loadedActivity) loaded,
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Failure error) errored,
  }) {
    return loaded(loadedActivity);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ActivityEntity loadedActivity)? loaded,
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Failure error)? errored,
  }) {
    return loaded?.call(loadedActivity);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ActivityEntity loadedActivity)? loaded,
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Failure error)? errored,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(loadedActivity);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$ActivityLoadedState value) loaded,
    required TResult Function(_$ActivityInitialState value) initial,
    required TResult Function(_$ActivityLoadingState value) loading,
    required TResult Function(_$ActivityErroredState value) errored,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_$ActivityLoadedState value)? loaded,
    TResult? Function(_$ActivityInitialState value)? initial,
    TResult? Function(_$ActivityLoadingState value)? loading,
    TResult? Function(_$ActivityErroredState value)? errored,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$ActivityLoadedState value)? loaded,
    TResult Function(_$ActivityInitialState value)? initial,
    TResult Function(_$ActivityLoadingState value)? loading,
    TResult Function(_$ActivityErroredState value)? errored,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _$ActivityLoadedState implements ActivityState {
  const factory _$ActivityLoadedState(final ActivityEntity loadedActivity) =
      _$_$ActivityLoadedState;

  ActivityEntity get loadedActivity;
  @JsonKey(ignore: true)
  _$$_$ActivityLoadedStateCopyWith<_$_$ActivityLoadedState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_$ActivityInitialStateCopyWith<$Res> {
  factory _$$_$ActivityInitialStateCopyWith(_$_$ActivityInitialState value,
          $Res Function(_$_$ActivityInitialState) then) =
      __$$_$ActivityInitialStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_$ActivityInitialStateCopyWithImpl<$Res>
    extends _$ActivityStateCopyWithImpl<$Res, _$_$ActivityInitialState>
    implements _$$_$ActivityInitialStateCopyWith<$Res> {
  __$$_$ActivityInitialStateCopyWithImpl(_$_$ActivityInitialState _value,
      $Res Function(_$_$ActivityInitialState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_$ActivityInitialState implements _$ActivityInitialState {
  const _$_$ActivityInitialState();

  @override
  String toString() {
    return 'ActivityState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_$ActivityInitialState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ActivityEntity loadedActivity) loaded,
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Failure error) errored,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ActivityEntity loadedActivity)? loaded,
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Failure error)? errored,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ActivityEntity loadedActivity)? loaded,
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Failure error)? errored,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$ActivityLoadedState value) loaded,
    required TResult Function(_$ActivityInitialState value) initial,
    required TResult Function(_$ActivityLoadingState value) loading,
    required TResult Function(_$ActivityErroredState value) errored,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_$ActivityLoadedState value)? loaded,
    TResult? Function(_$ActivityInitialState value)? initial,
    TResult? Function(_$ActivityLoadingState value)? loading,
    TResult? Function(_$ActivityErroredState value)? errored,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$ActivityLoadedState value)? loaded,
    TResult Function(_$ActivityInitialState value)? initial,
    TResult Function(_$ActivityLoadingState value)? loading,
    TResult Function(_$ActivityErroredState value)? errored,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _$ActivityInitialState implements ActivityState {
  const factory _$ActivityInitialState() = _$_$ActivityInitialState;
}

/// @nodoc
abstract class _$$_$ActivityLoadingStateCopyWith<$Res> {
  factory _$$_$ActivityLoadingStateCopyWith(_$_$ActivityLoadingState value,
          $Res Function(_$_$ActivityLoadingState) then) =
      __$$_$ActivityLoadingStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_$ActivityLoadingStateCopyWithImpl<$Res>
    extends _$ActivityStateCopyWithImpl<$Res, _$_$ActivityLoadingState>
    implements _$$_$ActivityLoadingStateCopyWith<$Res> {
  __$$_$ActivityLoadingStateCopyWithImpl(_$_$ActivityLoadingState _value,
      $Res Function(_$_$ActivityLoadingState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_$ActivityLoadingState implements _$ActivityLoadingState {
  const _$_$ActivityLoadingState();

  @override
  String toString() {
    return 'ActivityState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_$ActivityLoadingState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ActivityEntity loadedActivity) loaded,
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Failure error) errored,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ActivityEntity loadedActivity)? loaded,
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Failure error)? errored,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ActivityEntity loadedActivity)? loaded,
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Failure error)? errored,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$ActivityLoadedState value) loaded,
    required TResult Function(_$ActivityInitialState value) initial,
    required TResult Function(_$ActivityLoadingState value) loading,
    required TResult Function(_$ActivityErroredState value) errored,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_$ActivityLoadedState value)? loaded,
    TResult? Function(_$ActivityInitialState value)? initial,
    TResult? Function(_$ActivityLoadingState value)? loading,
    TResult? Function(_$ActivityErroredState value)? errored,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$ActivityLoadedState value)? loaded,
    TResult Function(_$ActivityInitialState value)? initial,
    TResult Function(_$ActivityLoadingState value)? loading,
    TResult Function(_$ActivityErroredState value)? errored,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _$ActivityLoadingState implements ActivityState {
  const factory _$ActivityLoadingState() = _$_$ActivityLoadingState;
}

/// @nodoc
abstract class _$$_$ActivityErroredStateCopyWith<$Res> {
  factory _$$_$ActivityErroredStateCopyWith(_$_$ActivityErroredState value,
          $Res Function(_$_$ActivityErroredState) then) =
      __$$_$ActivityErroredStateCopyWithImpl<$Res>;
  @useResult
  $Res call({Failure error});
}

/// @nodoc
class __$$_$ActivityErroredStateCopyWithImpl<$Res>
    extends _$ActivityStateCopyWithImpl<$Res, _$_$ActivityErroredState>
    implements _$$_$ActivityErroredStateCopyWith<$Res> {
  __$$_$ActivityErroredStateCopyWithImpl(_$_$ActivityErroredState _value,
      $Res Function(_$_$ActivityErroredState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$_$ActivityErroredState(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as Failure,
    ));
  }
}

/// @nodoc

class _$_$ActivityErroredState implements _$ActivityErroredState {
  const _$_$ActivityErroredState(this.error);

  @override
  final Failure error;

  @override
  String toString() {
    return 'ActivityState.errored(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_$ActivityErroredState &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_$ActivityErroredStateCopyWith<_$_$ActivityErroredState> get copyWith =>
      __$$_$ActivityErroredStateCopyWithImpl<_$_$ActivityErroredState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ActivityEntity loadedActivity) loaded,
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Failure error) errored,
  }) {
    return errored(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ActivityEntity loadedActivity)? loaded,
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Failure error)? errored,
  }) {
    return errored?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ActivityEntity loadedActivity)? loaded,
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Failure error)? errored,
    required TResult orElse(),
  }) {
    if (errored != null) {
      return errored(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$ActivityLoadedState value) loaded,
    required TResult Function(_$ActivityInitialState value) initial,
    required TResult Function(_$ActivityLoadingState value) loading,
    required TResult Function(_$ActivityErroredState value) errored,
  }) {
    return errored(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_$ActivityLoadedState value)? loaded,
    TResult? Function(_$ActivityInitialState value)? initial,
    TResult? Function(_$ActivityLoadingState value)? loading,
    TResult? Function(_$ActivityErroredState value)? errored,
  }) {
    return errored?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$ActivityLoadedState value)? loaded,
    TResult Function(_$ActivityInitialState value)? initial,
    TResult Function(_$ActivityLoadingState value)? loading,
    TResult Function(_$ActivityErroredState value)? errored,
    required TResult orElse(),
  }) {
    if (errored != null) {
      return errored(this);
    }
    return orElse();
  }
}

abstract class _$ActivityErroredState implements ActivityState {
  const factory _$ActivityErroredState(final Failure error) =
      _$_$ActivityErroredState;

  Failure get error;
  @JsonKey(ignore: true)
  _$$_$ActivityErroredStateCopyWith<_$_$ActivityErroredState> get copyWith =>
      throw _privateConstructorUsedError;
}
