// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'mood_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MoodEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userUID) loadUserMoodData,
    required TResult Function(List<MoodEntry> updatedMoodTracker)
        uploadUserMoodData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userUID)? loadUserMoodData,
    TResult? Function(List<MoodEntry> updatedMoodTracker)? uploadUserMoodData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userUID)? loadUserMoodData,
    TResult Function(List<MoodEntry> updatedMoodTracker)? uploadUserMoodData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadUserMoodData value) loadUserMoodData,
    required TResult Function(UploadUserMoodData value) uploadUserMoodData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadUserMoodData value)? loadUserMoodData,
    TResult? Function(UploadUserMoodData value)? uploadUserMoodData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadUserMoodData value)? loadUserMoodData,
    TResult Function(UploadUserMoodData value)? uploadUserMoodData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MoodEventCopyWith<$Res> {
  factory $MoodEventCopyWith(MoodEvent value, $Res Function(MoodEvent) then) =
      _$MoodEventCopyWithImpl<$Res, MoodEvent>;
}

/// @nodoc
class _$MoodEventCopyWithImpl<$Res, $Val extends MoodEvent>
    implements $MoodEventCopyWith<$Res> {
  _$MoodEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$LoadUserMoodDataImplCopyWith<$Res> {
  factory _$$LoadUserMoodDataImplCopyWith(_$LoadUserMoodDataImpl value,
          $Res Function(_$LoadUserMoodDataImpl) then) =
      __$$LoadUserMoodDataImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String userUID});
}

/// @nodoc
class __$$LoadUserMoodDataImplCopyWithImpl<$Res>
    extends _$MoodEventCopyWithImpl<$Res, _$LoadUserMoodDataImpl>
    implements _$$LoadUserMoodDataImplCopyWith<$Res> {
  __$$LoadUserMoodDataImplCopyWithImpl(_$LoadUserMoodDataImpl _value,
      $Res Function(_$LoadUserMoodDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userUID = null,
  }) {
    return _then(_$LoadUserMoodDataImpl(
      userUID: null == userUID
          ? _value.userUID
          : userUID // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LoadUserMoodDataImpl implements LoadUserMoodData {
  const _$LoadUserMoodDataImpl({required this.userUID});

  @override
  final String userUID;

  @override
  String toString() {
    return 'MoodEvent.loadUserMoodData(userUID: $userUID)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadUserMoodDataImpl &&
            (identical(other.userUID, userUID) || other.userUID == userUID));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userUID);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadUserMoodDataImplCopyWith<_$LoadUserMoodDataImpl> get copyWith =>
      __$$LoadUserMoodDataImplCopyWithImpl<_$LoadUserMoodDataImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userUID) loadUserMoodData,
    required TResult Function(List<MoodEntry> updatedMoodTracker)
        uploadUserMoodData,
  }) {
    return loadUserMoodData(userUID);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userUID)? loadUserMoodData,
    TResult? Function(List<MoodEntry> updatedMoodTracker)? uploadUserMoodData,
  }) {
    return loadUserMoodData?.call(userUID);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userUID)? loadUserMoodData,
    TResult Function(List<MoodEntry> updatedMoodTracker)? uploadUserMoodData,
    required TResult orElse(),
  }) {
    if (loadUserMoodData != null) {
      return loadUserMoodData(userUID);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadUserMoodData value) loadUserMoodData,
    required TResult Function(UploadUserMoodData value) uploadUserMoodData,
  }) {
    return loadUserMoodData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadUserMoodData value)? loadUserMoodData,
    TResult? Function(UploadUserMoodData value)? uploadUserMoodData,
  }) {
    return loadUserMoodData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadUserMoodData value)? loadUserMoodData,
    TResult Function(UploadUserMoodData value)? uploadUserMoodData,
    required TResult orElse(),
  }) {
    if (loadUserMoodData != null) {
      return loadUserMoodData(this);
    }
    return orElse();
  }
}

abstract class LoadUserMoodData implements MoodEvent {
  const factory LoadUserMoodData({required final String userUID}) =
      _$LoadUserMoodDataImpl;

  String get userUID;
  @JsonKey(ignore: true)
  _$$LoadUserMoodDataImplCopyWith<_$LoadUserMoodDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UploadUserMoodDataImplCopyWith<$Res> {
  factory _$$UploadUserMoodDataImplCopyWith(_$UploadUserMoodDataImpl value,
          $Res Function(_$UploadUserMoodDataImpl) then) =
      __$$UploadUserMoodDataImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<MoodEntry> updatedMoodTracker});
}

/// @nodoc
class __$$UploadUserMoodDataImplCopyWithImpl<$Res>
    extends _$MoodEventCopyWithImpl<$Res, _$UploadUserMoodDataImpl>
    implements _$$UploadUserMoodDataImplCopyWith<$Res> {
  __$$UploadUserMoodDataImplCopyWithImpl(_$UploadUserMoodDataImpl _value,
      $Res Function(_$UploadUserMoodDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? updatedMoodTracker = null,
  }) {
    return _then(_$UploadUserMoodDataImpl(
      updatedMoodTracker: null == updatedMoodTracker
          ? _value._updatedMoodTracker
          : updatedMoodTracker // ignore: cast_nullable_to_non_nullable
              as List<MoodEntry>,
    ));
  }
}

/// @nodoc

class _$UploadUserMoodDataImpl implements UploadUserMoodData {
  const _$UploadUserMoodDataImpl(
      {required final List<MoodEntry> updatedMoodTracker})
      : _updatedMoodTracker = updatedMoodTracker;

// required String userUID,
// required MoodEntry currentMood,
  final List<MoodEntry> _updatedMoodTracker;
// required String userUID,
// required MoodEntry currentMood,
  @override
  List<MoodEntry> get updatedMoodTracker {
    if (_updatedMoodTracker is EqualUnmodifiableListView)
      return _updatedMoodTracker;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_updatedMoodTracker);
  }

  @override
  String toString() {
    return 'MoodEvent.uploadUserMoodData(updatedMoodTracker: $updatedMoodTracker)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UploadUserMoodDataImpl &&
            const DeepCollectionEquality()
                .equals(other._updatedMoodTracker, _updatedMoodTracker));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_updatedMoodTracker));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UploadUserMoodDataImplCopyWith<_$UploadUserMoodDataImpl> get copyWith =>
      __$$UploadUserMoodDataImplCopyWithImpl<_$UploadUserMoodDataImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userUID) loadUserMoodData,
    required TResult Function(List<MoodEntry> updatedMoodTracker)
        uploadUserMoodData,
  }) {
    return uploadUserMoodData(updatedMoodTracker);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userUID)? loadUserMoodData,
    TResult? Function(List<MoodEntry> updatedMoodTracker)? uploadUserMoodData,
  }) {
    return uploadUserMoodData?.call(updatedMoodTracker);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userUID)? loadUserMoodData,
    TResult Function(List<MoodEntry> updatedMoodTracker)? uploadUserMoodData,
    required TResult orElse(),
  }) {
    if (uploadUserMoodData != null) {
      return uploadUserMoodData(updatedMoodTracker);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadUserMoodData value) loadUserMoodData,
    required TResult Function(UploadUserMoodData value) uploadUserMoodData,
  }) {
    return uploadUserMoodData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadUserMoodData value)? loadUserMoodData,
    TResult? Function(UploadUserMoodData value)? uploadUserMoodData,
  }) {
    return uploadUserMoodData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadUserMoodData value)? loadUserMoodData,
    TResult Function(UploadUserMoodData value)? uploadUserMoodData,
    required TResult orElse(),
  }) {
    if (uploadUserMoodData != null) {
      return uploadUserMoodData(this);
    }
    return orElse();
  }
}

abstract class UploadUserMoodData implements MoodEvent {
  const factory UploadUserMoodData(
          {required final List<MoodEntry> updatedMoodTracker}) =
      _$UploadUserMoodDataImpl;

// required String userUID,
// required MoodEntry currentMood,
  List<MoodEntry> get updatedMoodTracker;
  @JsonKey(ignore: true)
  _$$UploadUserMoodDataImplCopyWith<_$UploadUserMoodDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$MoodState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<MoodEntry> moodEntries) moodLoaded,
    required TResult Function(String errorText) moodLoadingError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<MoodEntry> moodEntries)? moodLoaded,
    TResult? Function(String errorText)? moodLoadingError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<MoodEntry> moodEntries)? moodLoaded,
    TResult Function(String errorText)? moodLoadingError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_MoodLoaded value) moodLoaded,
    required TResult Function(_MoodLoadingError value) moodLoadingError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_MoodLoaded value)? moodLoaded,
    TResult? Function(_MoodLoadingError value)? moodLoadingError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_MoodLoaded value)? moodLoaded,
    TResult Function(_MoodLoadingError value)? moodLoadingError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MoodStateCopyWith<$Res> {
  factory $MoodStateCopyWith(MoodState value, $Res Function(MoodState) then) =
      _$MoodStateCopyWithImpl<$Res, MoodState>;
}

/// @nodoc
class _$MoodStateCopyWithImpl<$Res, $Val extends MoodState>
    implements $MoodStateCopyWith<$Res> {
  _$MoodStateCopyWithImpl(this._value, this._then);

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
    extends _$MoodStateCopyWithImpl<$Res, _$InitialImpl>
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
    return 'MoodState.initial()';
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
    required TResult Function(List<MoodEntry> moodEntries) moodLoaded,
    required TResult Function(String errorText) moodLoadingError,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<MoodEntry> moodEntries)? moodLoaded,
    TResult? Function(String errorText)? moodLoadingError,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<MoodEntry> moodEntries)? moodLoaded,
    TResult Function(String errorText)? moodLoadingError,
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
    required TResult Function(_MoodLoaded value) moodLoaded,
    required TResult Function(_MoodLoadingError value) moodLoadingError,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_MoodLoaded value)? moodLoaded,
    TResult? Function(_MoodLoadingError value)? moodLoadingError,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_MoodLoaded value)? moodLoaded,
    TResult Function(_MoodLoadingError value)? moodLoadingError,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements MoodState {
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
    extends _$MoodStateCopyWithImpl<$Res, _$LoadingImpl>
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
    return 'MoodState.loading()';
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
    required TResult Function(List<MoodEntry> moodEntries) moodLoaded,
    required TResult Function(String errorText) moodLoadingError,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<MoodEntry> moodEntries)? moodLoaded,
    TResult? Function(String errorText)? moodLoadingError,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<MoodEntry> moodEntries)? moodLoaded,
    TResult Function(String errorText)? moodLoadingError,
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
    required TResult Function(_MoodLoaded value) moodLoaded,
    required TResult Function(_MoodLoadingError value) moodLoadingError,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_MoodLoaded value)? moodLoaded,
    TResult? Function(_MoodLoadingError value)? moodLoadingError,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_MoodLoaded value)? moodLoaded,
    TResult Function(_MoodLoadingError value)? moodLoadingError,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements MoodState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$MoodLoadedImplCopyWith<$Res> {
  factory _$$MoodLoadedImplCopyWith(
          _$MoodLoadedImpl value, $Res Function(_$MoodLoadedImpl) then) =
      __$$MoodLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<MoodEntry> moodEntries});
}

/// @nodoc
class __$$MoodLoadedImplCopyWithImpl<$Res>
    extends _$MoodStateCopyWithImpl<$Res, _$MoodLoadedImpl>
    implements _$$MoodLoadedImplCopyWith<$Res> {
  __$$MoodLoadedImplCopyWithImpl(
      _$MoodLoadedImpl _value, $Res Function(_$MoodLoadedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? moodEntries = null,
  }) {
    return _then(_$MoodLoadedImpl(
      null == moodEntries
          ? _value._moodEntries
          : moodEntries // ignore: cast_nullable_to_non_nullable
              as List<MoodEntry>,
    ));
  }
}

/// @nodoc

class _$MoodLoadedImpl implements _MoodLoaded {
  const _$MoodLoadedImpl(final List<MoodEntry> moodEntries)
      : _moodEntries = moodEntries;

  final List<MoodEntry> _moodEntries;
  @override
  List<MoodEntry> get moodEntries {
    if (_moodEntries is EqualUnmodifiableListView) return _moodEntries;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_moodEntries);
  }

  @override
  String toString() {
    return 'MoodState.moodLoaded(moodEntries: $moodEntries)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MoodLoadedImpl &&
            const DeepCollectionEquality()
                .equals(other._moodEntries, _moodEntries));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_moodEntries));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MoodLoadedImplCopyWith<_$MoodLoadedImpl> get copyWith =>
      __$$MoodLoadedImplCopyWithImpl<_$MoodLoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<MoodEntry> moodEntries) moodLoaded,
    required TResult Function(String errorText) moodLoadingError,
  }) {
    return moodLoaded(moodEntries);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<MoodEntry> moodEntries)? moodLoaded,
    TResult? Function(String errorText)? moodLoadingError,
  }) {
    return moodLoaded?.call(moodEntries);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<MoodEntry> moodEntries)? moodLoaded,
    TResult Function(String errorText)? moodLoadingError,
    required TResult orElse(),
  }) {
    if (moodLoaded != null) {
      return moodLoaded(moodEntries);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_MoodLoaded value) moodLoaded,
    required TResult Function(_MoodLoadingError value) moodLoadingError,
  }) {
    return moodLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_MoodLoaded value)? moodLoaded,
    TResult? Function(_MoodLoadingError value)? moodLoadingError,
  }) {
    return moodLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_MoodLoaded value)? moodLoaded,
    TResult Function(_MoodLoadingError value)? moodLoadingError,
    required TResult orElse(),
  }) {
    if (moodLoaded != null) {
      return moodLoaded(this);
    }
    return orElse();
  }
}

abstract class _MoodLoaded implements MoodState {
  const factory _MoodLoaded(final List<MoodEntry> moodEntries) =
      _$MoodLoadedImpl;

  List<MoodEntry> get moodEntries;
  @JsonKey(ignore: true)
  _$$MoodLoadedImplCopyWith<_$MoodLoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MoodLoadingErrorImplCopyWith<$Res> {
  factory _$$MoodLoadingErrorImplCopyWith(_$MoodLoadingErrorImpl value,
          $Res Function(_$MoodLoadingErrorImpl) then) =
      __$$MoodLoadingErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String errorText});
}

/// @nodoc
class __$$MoodLoadingErrorImplCopyWithImpl<$Res>
    extends _$MoodStateCopyWithImpl<$Res, _$MoodLoadingErrorImpl>
    implements _$$MoodLoadingErrorImplCopyWith<$Res> {
  __$$MoodLoadingErrorImplCopyWithImpl(_$MoodLoadingErrorImpl _value,
      $Res Function(_$MoodLoadingErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorText = null,
  }) {
    return _then(_$MoodLoadingErrorImpl(
      errorText: null == errorText
          ? _value.errorText
          : errorText // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$MoodLoadingErrorImpl implements _MoodLoadingError {
  const _$MoodLoadingErrorImpl({this.errorText = 'Stories loading error'});

  @override
  @JsonKey()
  final String errorText;

  @override
  String toString() {
    return 'MoodState.moodLoadingError(errorText: $errorText)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MoodLoadingErrorImpl &&
            (identical(other.errorText, errorText) ||
                other.errorText == errorText));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorText);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MoodLoadingErrorImplCopyWith<_$MoodLoadingErrorImpl> get copyWith =>
      __$$MoodLoadingErrorImplCopyWithImpl<_$MoodLoadingErrorImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<MoodEntry> moodEntries) moodLoaded,
    required TResult Function(String errorText) moodLoadingError,
  }) {
    return moodLoadingError(errorText);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<MoodEntry> moodEntries)? moodLoaded,
    TResult? Function(String errorText)? moodLoadingError,
  }) {
    return moodLoadingError?.call(errorText);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<MoodEntry> moodEntries)? moodLoaded,
    TResult Function(String errorText)? moodLoadingError,
    required TResult orElse(),
  }) {
    if (moodLoadingError != null) {
      return moodLoadingError(errorText);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_MoodLoaded value) moodLoaded,
    required TResult Function(_MoodLoadingError value) moodLoadingError,
  }) {
    return moodLoadingError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_MoodLoaded value)? moodLoaded,
    TResult? Function(_MoodLoadingError value)? moodLoadingError,
  }) {
    return moodLoadingError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_MoodLoaded value)? moodLoaded,
    TResult Function(_MoodLoadingError value)? moodLoadingError,
    required TResult orElse(),
  }) {
    if (moodLoadingError != null) {
      return moodLoadingError(this);
    }
    return orElse();
  }
}

abstract class _MoodLoadingError implements MoodState {
  const factory _MoodLoadingError({final String errorText}) =
      _$MoodLoadingErrorImpl;

  String get errorText;
  @JsonKey(ignore: true)
  _$$MoodLoadingErrorImplCopyWith<_$MoodLoadingErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
