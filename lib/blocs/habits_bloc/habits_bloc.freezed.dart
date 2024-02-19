// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'habits_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$HabitsEvent {
  String get userUID => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userUID) loadHabits,
    required TResult Function(String userUID, UserHabitsList userUpdatedHabits)
        uploadHabits,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userUID)? loadHabits,
    TResult? Function(String userUID, UserHabitsList userUpdatedHabits)?
        uploadHabits,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userUID)? loadHabits,
    TResult Function(String userUID, UserHabitsList userUpdatedHabits)?
        uploadHabits,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadHabits value) loadHabits,
    required TResult Function(UploadHabits value) uploadHabits,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadHabits value)? loadHabits,
    TResult? Function(UploadHabits value)? uploadHabits,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadHabits value)? loadHabits,
    TResult Function(UploadHabits value)? uploadHabits,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HabitsEventCopyWith<HabitsEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HabitsEventCopyWith<$Res> {
  factory $HabitsEventCopyWith(
          HabitsEvent value, $Res Function(HabitsEvent) then) =
      _$HabitsEventCopyWithImpl<$Res, HabitsEvent>;
  @useResult
  $Res call({String userUID});
}

/// @nodoc
class _$HabitsEventCopyWithImpl<$Res, $Val extends HabitsEvent>
    implements $HabitsEventCopyWith<$Res> {
  _$HabitsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userUID = null,
  }) {
    return _then(_value.copyWith(
      userUID: null == userUID
          ? _value.userUID
          : userUID // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LoadHabitsImplCopyWith<$Res>
    implements $HabitsEventCopyWith<$Res> {
  factory _$$LoadHabitsImplCopyWith(
          _$LoadHabitsImpl value, $Res Function(_$LoadHabitsImpl) then) =
      __$$LoadHabitsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String userUID});
}

/// @nodoc
class __$$LoadHabitsImplCopyWithImpl<$Res>
    extends _$HabitsEventCopyWithImpl<$Res, _$LoadHabitsImpl>
    implements _$$LoadHabitsImplCopyWith<$Res> {
  __$$LoadHabitsImplCopyWithImpl(
      _$LoadHabitsImpl _value, $Res Function(_$LoadHabitsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userUID = null,
  }) {
    return _then(_$LoadHabitsImpl(
      userUID: null == userUID
          ? _value.userUID
          : userUID // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LoadHabitsImpl implements LoadHabits {
  const _$LoadHabitsImpl({required this.userUID});

  @override
  final String userUID;

  @override
  String toString() {
    return 'HabitsEvent.loadHabits(userUID: $userUID)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadHabitsImpl &&
            (identical(other.userUID, userUID) || other.userUID == userUID));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userUID);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadHabitsImplCopyWith<_$LoadHabitsImpl> get copyWith =>
      __$$LoadHabitsImplCopyWithImpl<_$LoadHabitsImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userUID) loadHabits,
    required TResult Function(String userUID, UserHabitsList userUpdatedHabits)
        uploadHabits,
  }) {
    return loadHabits(userUID);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userUID)? loadHabits,
    TResult? Function(String userUID, UserHabitsList userUpdatedHabits)?
        uploadHabits,
  }) {
    return loadHabits?.call(userUID);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userUID)? loadHabits,
    TResult Function(String userUID, UserHabitsList userUpdatedHabits)?
        uploadHabits,
    required TResult orElse(),
  }) {
    if (loadHabits != null) {
      return loadHabits(userUID);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadHabits value) loadHabits,
    required TResult Function(UploadHabits value) uploadHabits,
  }) {
    return loadHabits(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadHabits value)? loadHabits,
    TResult? Function(UploadHabits value)? uploadHabits,
  }) {
    return loadHabits?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadHabits value)? loadHabits,
    TResult Function(UploadHabits value)? uploadHabits,
    required TResult orElse(),
  }) {
    if (loadHabits != null) {
      return loadHabits(this);
    }
    return orElse();
  }
}

abstract class LoadHabits implements HabitsEvent {
  const factory LoadHabits({required final String userUID}) = _$LoadHabitsImpl;

  @override
  String get userUID;
  @override
  @JsonKey(ignore: true)
  _$$LoadHabitsImplCopyWith<_$LoadHabitsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UploadHabitsImplCopyWith<$Res>
    implements $HabitsEventCopyWith<$Res> {
  factory _$$UploadHabitsImplCopyWith(
          _$UploadHabitsImpl value, $Res Function(_$UploadHabitsImpl) then) =
      __$$UploadHabitsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String userUID, UserHabitsList userUpdatedHabits});
}

/// @nodoc
class __$$UploadHabitsImplCopyWithImpl<$Res>
    extends _$HabitsEventCopyWithImpl<$Res, _$UploadHabitsImpl>
    implements _$$UploadHabitsImplCopyWith<$Res> {
  __$$UploadHabitsImplCopyWithImpl(
      _$UploadHabitsImpl _value, $Res Function(_$UploadHabitsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userUID = null,
    Object? userUpdatedHabits = null,
  }) {
    return _then(_$UploadHabitsImpl(
      userUID: null == userUID
          ? _value.userUID
          : userUID // ignore: cast_nullable_to_non_nullable
              as String,
      userUpdatedHabits: null == userUpdatedHabits
          ? _value.userUpdatedHabits
          : userUpdatedHabits // ignore: cast_nullable_to_non_nullable
              as UserHabitsList,
    ));
  }
}

/// @nodoc

class _$UploadHabitsImpl implements UploadHabits {
  const _$UploadHabitsImpl(
      {required this.userUID, required this.userUpdatedHabits});

  @override
  final String userUID;
  @override
  final UserHabitsList userUpdatedHabits;

  @override
  String toString() {
    return 'HabitsEvent.uploadHabits(userUID: $userUID, userUpdatedHabits: $userUpdatedHabits)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UploadHabitsImpl &&
            (identical(other.userUID, userUID) || other.userUID == userUID) &&
            (identical(other.userUpdatedHabits, userUpdatedHabits) ||
                other.userUpdatedHabits == userUpdatedHabits));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userUID, userUpdatedHabits);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UploadHabitsImplCopyWith<_$UploadHabitsImpl> get copyWith =>
      __$$UploadHabitsImplCopyWithImpl<_$UploadHabitsImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userUID) loadHabits,
    required TResult Function(String userUID, UserHabitsList userUpdatedHabits)
        uploadHabits,
  }) {
    return uploadHabits(userUID, userUpdatedHabits);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userUID)? loadHabits,
    TResult? Function(String userUID, UserHabitsList userUpdatedHabits)?
        uploadHabits,
  }) {
    return uploadHabits?.call(userUID, userUpdatedHabits);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userUID)? loadHabits,
    TResult Function(String userUID, UserHabitsList userUpdatedHabits)?
        uploadHabits,
    required TResult orElse(),
  }) {
    if (uploadHabits != null) {
      return uploadHabits(userUID, userUpdatedHabits);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadHabits value) loadHabits,
    required TResult Function(UploadHabits value) uploadHabits,
  }) {
    return uploadHabits(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadHabits value)? loadHabits,
    TResult? Function(UploadHabits value)? uploadHabits,
  }) {
    return uploadHabits?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadHabits value)? loadHabits,
    TResult Function(UploadHabits value)? uploadHabits,
    required TResult orElse(),
  }) {
    if (uploadHabits != null) {
      return uploadHabits(this);
    }
    return orElse();
  }
}

abstract class UploadHabits implements HabitsEvent {
  const factory UploadHabits(
      {required final String userUID,
      required final UserHabitsList userUpdatedHabits}) = _$UploadHabitsImpl;

  @override
  String get userUID;
  UserHabitsList get userUpdatedHabits;
  @override
  @JsonKey(ignore: true)
  _$$UploadHabitsImplCopyWith<_$UploadHabitsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$HabitsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<UserHabit> userHabits) habitsLoaded,
    required TResult Function() habitsUploaded,
    required TResult Function(String errorText) habitsLoadingError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<UserHabit> userHabits)? habitsLoaded,
    TResult? Function()? habitsUploaded,
    TResult? Function(String errorText)? habitsLoadingError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<UserHabit> userHabits)? habitsLoaded,
    TResult Function()? habitsUploaded,
    TResult Function(String errorText)? habitsLoadingError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_HabitsLoaded value) habitsLoaded,
    required TResult Function(_HabitsUploaded value) habitsUploaded,
    required TResult Function(HabitsLoadingError value) habitsLoadingError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_HabitsLoaded value)? habitsLoaded,
    TResult? Function(_HabitsUploaded value)? habitsUploaded,
    TResult? Function(HabitsLoadingError value)? habitsLoadingError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_HabitsLoaded value)? habitsLoaded,
    TResult Function(_HabitsUploaded value)? habitsUploaded,
    TResult Function(HabitsLoadingError value)? habitsLoadingError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HabitsStateCopyWith<$Res> {
  factory $HabitsStateCopyWith(
          HabitsState value, $Res Function(HabitsState) then) =
      _$HabitsStateCopyWithImpl<$Res, HabitsState>;
}

/// @nodoc
class _$HabitsStateCopyWithImpl<$Res, $Val extends HabitsState>
    implements $HabitsStateCopyWith<$Res> {
  _$HabitsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$HabitsStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'HabitsState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<UserHabit> userHabits) habitsLoaded,
    required TResult Function() habitsUploaded,
    required TResult Function(String errorText) habitsLoadingError,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<UserHabit> userHabits)? habitsLoaded,
    TResult? Function()? habitsUploaded,
    TResult? Function(String errorText)? habitsLoadingError,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<UserHabit> userHabits)? habitsLoaded,
    TResult Function()? habitsUploaded,
    TResult Function(String errorText)? habitsLoadingError,
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
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_HabitsLoaded value) habitsLoaded,
    required TResult Function(_HabitsUploaded value) habitsUploaded,
    required TResult Function(HabitsLoadingError value) habitsLoadingError,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_HabitsLoaded value)? habitsLoaded,
    TResult? Function(_HabitsUploaded value)? habitsUploaded,
    TResult? Function(HabitsLoadingError value)? habitsLoadingError,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_HabitsLoaded value)? habitsLoaded,
    TResult Function(_HabitsUploaded value)? habitsUploaded,
    TResult Function(HabitsLoadingError value)? habitsLoadingError,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements HabitsState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$HabitsStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingImpl implements _Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'HabitsState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<UserHabit> userHabits) habitsLoaded,
    required TResult Function() habitsUploaded,
    required TResult Function(String errorText) habitsLoadingError,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<UserHabit> userHabits)? habitsLoaded,
    TResult? Function()? habitsUploaded,
    TResult? Function(String errorText)? habitsLoadingError,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<UserHabit> userHabits)? habitsLoaded,
    TResult Function()? habitsUploaded,
    TResult Function(String errorText)? habitsLoadingError,
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
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_HabitsLoaded value) habitsLoaded,
    required TResult Function(_HabitsUploaded value) habitsUploaded,
    required TResult Function(HabitsLoadingError value) habitsLoadingError,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_HabitsLoaded value)? habitsLoaded,
    TResult? Function(_HabitsUploaded value)? habitsUploaded,
    TResult? Function(HabitsLoadingError value)? habitsLoadingError,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_HabitsLoaded value)? habitsLoaded,
    TResult Function(_HabitsUploaded value)? habitsUploaded,
    TResult Function(HabitsLoadingError value)? habitsLoadingError,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements HabitsState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$HabitsLoadedImplCopyWith<$Res> {
  factory _$$HabitsLoadedImplCopyWith(
          _$HabitsLoadedImpl value, $Res Function(_$HabitsLoadedImpl) then) =
      __$$HabitsLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<UserHabit> userHabits});
}

/// @nodoc
class __$$HabitsLoadedImplCopyWithImpl<$Res>
    extends _$HabitsStateCopyWithImpl<$Res, _$HabitsLoadedImpl>
    implements _$$HabitsLoadedImplCopyWith<$Res> {
  __$$HabitsLoadedImplCopyWithImpl(
      _$HabitsLoadedImpl _value, $Res Function(_$HabitsLoadedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userHabits = null,
  }) {
    return _then(_$HabitsLoadedImpl(
      userHabits: null == userHabits
          ? _value._userHabits
          : userHabits // ignore: cast_nullable_to_non_nullable
              as List<UserHabit>,
    ));
  }
}

/// @nodoc

class _$HabitsLoadedImpl implements _HabitsLoaded {
  const _$HabitsLoadedImpl({required final List<UserHabit> userHabits})
      : _userHabits = userHabits;

  final List<UserHabit> _userHabits;
  @override
  List<UserHabit> get userHabits {
    if (_userHabits is EqualUnmodifiableListView) return _userHabits;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_userHabits);
  }

  @override
  String toString() {
    return 'HabitsState.habitsLoaded(userHabits: $userHabits)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HabitsLoadedImpl &&
            const DeepCollectionEquality()
                .equals(other._userHabits, _userHabits));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_userHabits));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HabitsLoadedImplCopyWith<_$HabitsLoadedImpl> get copyWith =>
      __$$HabitsLoadedImplCopyWithImpl<_$HabitsLoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<UserHabit> userHabits) habitsLoaded,
    required TResult Function() habitsUploaded,
    required TResult Function(String errorText) habitsLoadingError,
  }) {
    return habitsLoaded(userHabits);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<UserHabit> userHabits)? habitsLoaded,
    TResult? Function()? habitsUploaded,
    TResult? Function(String errorText)? habitsLoadingError,
  }) {
    return habitsLoaded?.call(userHabits);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<UserHabit> userHabits)? habitsLoaded,
    TResult Function()? habitsUploaded,
    TResult Function(String errorText)? habitsLoadingError,
    required TResult orElse(),
  }) {
    if (habitsLoaded != null) {
      return habitsLoaded(userHabits);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_HabitsLoaded value) habitsLoaded,
    required TResult Function(_HabitsUploaded value) habitsUploaded,
    required TResult Function(HabitsLoadingError value) habitsLoadingError,
  }) {
    return habitsLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_HabitsLoaded value)? habitsLoaded,
    TResult? Function(_HabitsUploaded value)? habitsUploaded,
    TResult? Function(HabitsLoadingError value)? habitsLoadingError,
  }) {
    return habitsLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_HabitsLoaded value)? habitsLoaded,
    TResult Function(_HabitsUploaded value)? habitsUploaded,
    TResult Function(HabitsLoadingError value)? habitsLoadingError,
    required TResult orElse(),
  }) {
    if (habitsLoaded != null) {
      return habitsLoaded(this);
    }
    return orElse();
  }
}

abstract class _HabitsLoaded implements HabitsState {
  const factory _HabitsLoaded({required final List<UserHabit> userHabits}) =
      _$HabitsLoadedImpl;

  List<UserHabit> get userHabits;
  @JsonKey(ignore: true)
  _$$HabitsLoadedImplCopyWith<_$HabitsLoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$HabitsUploadedImplCopyWith<$Res> {
  factory _$$HabitsUploadedImplCopyWith(_$HabitsUploadedImpl value,
          $Res Function(_$HabitsUploadedImpl) then) =
      __$$HabitsUploadedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$HabitsUploadedImplCopyWithImpl<$Res>
    extends _$HabitsStateCopyWithImpl<$Res, _$HabitsUploadedImpl>
    implements _$$HabitsUploadedImplCopyWith<$Res> {
  __$$HabitsUploadedImplCopyWithImpl(
      _$HabitsUploadedImpl _value, $Res Function(_$HabitsUploadedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$HabitsUploadedImpl implements _HabitsUploaded {
  const _$HabitsUploadedImpl();

  @override
  String toString() {
    return 'HabitsState.habitsUploaded()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$HabitsUploadedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<UserHabit> userHabits) habitsLoaded,
    required TResult Function() habitsUploaded,
    required TResult Function(String errorText) habitsLoadingError,
  }) {
    return habitsUploaded();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<UserHabit> userHabits)? habitsLoaded,
    TResult? Function()? habitsUploaded,
    TResult? Function(String errorText)? habitsLoadingError,
  }) {
    return habitsUploaded?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<UserHabit> userHabits)? habitsLoaded,
    TResult Function()? habitsUploaded,
    TResult Function(String errorText)? habitsLoadingError,
    required TResult orElse(),
  }) {
    if (habitsUploaded != null) {
      return habitsUploaded();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_HabitsLoaded value) habitsLoaded,
    required TResult Function(_HabitsUploaded value) habitsUploaded,
    required TResult Function(HabitsLoadingError value) habitsLoadingError,
  }) {
    return habitsUploaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_HabitsLoaded value)? habitsLoaded,
    TResult? Function(_HabitsUploaded value)? habitsUploaded,
    TResult? Function(HabitsLoadingError value)? habitsLoadingError,
  }) {
    return habitsUploaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_HabitsLoaded value)? habitsLoaded,
    TResult Function(_HabitsUploaded value)? habitsUploaded,
    TResult Function(HabitsLoadingError value)? habitsLoadingError,
    required TResult orElse(),
  }) {
    if (habitsUploaded != null) {
      return habitsUploaded(this);
    }
    return orElse();
  }
}

abstract class _HabitsUploaded implements HabitsState {
  const factory _HabitsUploaded() = _$HabitsUploadedImpl;
}

/// @nodoc
abstract class _$$HabitsLoadingErrorImplCopyWith<$Res> {
  factory _$$HabitsLoadingErrorImplCopyWith(_$HabitsLoadingErrorImpl value,
          $Res Function(_$HabitsLoadingErrorImpl) then) =
      __$$HabitsLoadingErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String errorText});
}

/// @nodoc
class __$$HabitsLoadingErrorImplCopyWithImpl<$Res>
    extends _$HabitsStateCopyWithImpl<$Res, _$HabitsLoadingErrorImpl>
    implements _$$HabitsLoadingErrorImplCopyWith<$Res> {
  __$$HabitsLoadingErrorImplCopyWithImpl(_$HabitsLoadingErrorImpl _value,
      $Res Function(_$HabitsLoadingErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorText = null,
  }) {
    return _then(_$HabitsLoadingErrorImpl(
      errorText: null == errorText
          ? _value.errorText
          : errorText // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$HabitsLoadingErrorImpl implements HabitsLoadingError {
  const _$HabitsLoadingErrorImpl({this.errorText = 'habits loading error'});

  @override
  @JsonKey()
  final String errorText;

  @override
  String toString() {
    return 'HabitsState.habitsLoadingError(errorText: $errorText)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HabitsLoadingErrorImpl &&
            (identical(other.errorText, errorText) ||
                other.errorText == errorText));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorText);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HabitsLoadingErrorImplCopyWith<_$HabitsLoadingErrorImpl> get copyWith =>
      __$$HabitsLoadingErrorImplCopyWithImpl<_$HabitsLoadingErrorImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<UserHabit> userHabits) habitsLoaded,
    required TResult Function() habitsUploaded,
    required TResult Function(String errorText) habitsLoadingError,
  }) {
    return habitsLoadingError(errorText);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<UserHabit> userHabits)? habitsLoaded,
    TResult? Function()? habitsUploaded,
    TResult? Function(String errorText)? habitsLoadingError,
  }) {
    return habitsLoadingError?.call(errorText);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<UserHabit> userHabits)? habitsLoaded,
    TResult Function()? habitsUploaded,
    TResult Function(String errorText)? habitsLoadingError,
    required TResult orElse(),
  }) {
    if (habitsLoadingError != null) {
      return habitsLoadingError(errorText);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_HabitsLoaded value) habitsLoaded,
    required TResult Function(_HabitsUploaded value) habitsUploaded,
    required TResult Function(HabitsLoadingError value) habitsLoadingError,
  }) {
    return habitsLoadingError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_HabitsLoaded value)? habitsLoaded,
    TResult? Function(_HabitsUploaded value)? habitsUploaded,
    TResult? Function(HabitsLoadingError value)? habitsLoadingError,
  }) {
    return habitsLoadingError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_HabitsLoaded value)? habitsLoaded,
    TResult Function(_HabitsUploaded value)? habitsUploaded,
    TResult Function(HabitsLoadingError value)? habitsLoadingError,
    required TResult orElse(),
  }) {
    if (habitsLoadingError != null) {
      return habitsLoadingError(this);
    }
    return orElse();
  }
}

abstract class HabitsLoadingError implements HabitsState {
  const factory HabitsLoadingError({final String errorText}) =
      _$HabitsLoadingErrorImpl;

  String get errorText;
  @JsonKey(ignore: true)
  _$$HabitsLoadingErrorImplCopyWith<_$HabitsLoadingErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
