// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'shared_stories_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SharedStoriesEvent {
  Object get iserUID => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String iserUID) loadRandomStory,
    required TResult Function(String iserUID) loadUserStories,
    required TResult Function(String iserUID, List<SharedStory> stories)
        uploadSharedStories,
    required TResult Function(int iserUID, SharedStory story) addNewStory,
    required TResult Function(int iserUID, SharedStory story) removeStory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String iserUID)? loadRandomStory,
    TResult? Function(String iserUID)? loadUserStories,
    TResult? Function(String iserUID, List<SharedStory> stories)?
        uploadSharedStories,
    TResult? Function(int iserUID, SharedStory story)? addNewStory,
    TResult? Function(int iserUID, SharedStory story)? removeStory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String iserUID)? loadRandomStory,
    TResult Function(String iserUID)? loadUserStories,
    TResult Function(String iserUID, List<SharedStory> stories)?
        uploadSharedStories,
    TResult Function(int iserUID, SharedStory story)? addNewStory,
    TResult Function(int iserUID, SharedStory story)? removeStory,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadRandomStoryEvent value) loadRandomStory,
    required TResult Function(LoadUserStoriesEvent value) loadUserStories,
    required TResult Function(AddSharedStoriesEvent value) uploadSharedStories,
    required TResult Function(AddNewStoryEvent value) addNewStory,
    required TResult Function(RemoveStoryEvent value) removeStory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadRandomStoryEvent value)? loadRandomStory,
    TResult? Function(LoadUserStoriesEvent value)? loadUserStories,
    TResult? Function(AddSharedStoriesEvent value)? uploadSharedStories,
    TResult? Function(AddNewStoryEvent value)? addNewStory,
    TResult? Function(RemoveStoryEvent value)? removeStory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadRandomStoryEvent value)? loadRandomStory,
    TResult Function(LoadUserStoriesEvent value)? loadUserStories,
    TResult Function(AddSharedStoriesEvent value)? uploadSharedStories,
    TResult Function(AddNewStoryEvent value)? addNewStory,
    TResult Function(RemoveStoryEvent value)? removeStory,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SharedStoriesEventCopyWith<$Res> {
  factory $SharedStoriesEventCopyWith(
          SharedStoriesEvent value, $Res Function(SharedStoriesEvent) then) =
      _$SharedStoriesEventCopyWithImpl<$Res, SharedStoriesEvent>;
}

/// @nodoc
class _$SharedStoriesEventCopyWithImpl<$Res, $Val extends SharedStoriesEvent>
    implements $SharedStoriesEventCopyWith<$Res> {
  _$SharedStoriesEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$LoadRandomStoryEventImplCopyWith<$Res> {
  factory _$$LoadRandomStoryEventImplCopyWith(_$LoadRandomStoryEventImpl value,
          $Res Function(_$LoadRandomStoryEventImpl) then) =
      __$$LoadRandomStoryEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String iserUID});
}

/// @nodoc
class __$$LoadRandomStoryEventImplCopyWithImpl<$Res>
    extends _$SharedStoriesEventCopyWithImpl<$Res, _$LoadRandomStoryEventImpl>
    implements _$$LoadRandomStoryEventImplCopyWith<$Res> {
  __$$LoadRandomStoryEventImplCopyWithImpl(_$LoadRandomStoryEventImpl _value,
      $Res Function(_$LoadRandomStoryEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? iserUID = null,
  }) {
    return _then(_$LoadRandomStoryEventImpl(
      iserUID: null == iserUID
          ? _value.iserUID
          : iserUID // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LoadRandomStoryEventImpl implements LoadRandomStoryEvent {
  const _$LoadRandomStoryEventImpl({required this.iserUID});

  @override
  final String iserUID;

  @override
  String toString() {
    return 'SharedStoriesEvent.loadRandomStory(iserUID: $iserUID)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadRandomStoryEventImpl &&
            (identical(other.iserUID, iserUID) || other.iserUID == iserUID));
  }

  @override
  int get hashCode => Object.hash(runtimeType, iserUID);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadRandomStoryEventImplCopyWith<_$LoadRandomStoryEventImpl>
      get copyWith =>
          __$$LoadRandomStoryEventImplCopyWithImpl<_$LoadRandomStoryEventImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String iserUID) loadRandomStory,
    required TResult Function(String iserUID) loadUserStories,
    required TResult Function(String iserUID, List<SharedStory> stories)
        uploadSharedStories,
    required TResult Function(int iserUID, SharedStory story) addNewStory,
    required TResult Function(int iserUID, SharedStory story) removeStory,
  }) {
    return loadRandomStory(iserUID);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String iserUID)? loadRandomStory,
    TResult? Function(String iserUID)? loadUserStories,
    TResult? Function(String iserUID, List<SharedStory> stories)?
        uploadSharedStories,
    TResult? Function(int iserUID, SharedStory story)? addNewStory,
    TResult? Function(int iserUID, SharedStory story)? removeStory,
  }) {
    return loadRandomStory?.call(iserUID);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String iserUID)? loadRandomStory,
    TResult Function(String iserUID)? loadUserStories,
    TResult Function(String iserUID, List<SharedStory> stories)?
        uploadSharedStories,
    TResult Function(int iserUID, SharedStory story)? addNewStory,
    TResult Function(int iserUID, SharedStory story)? removeStory,
    required TResult orElse(),
  }) {
    if (loadRandomStory != null) {
      return loadRandomStory(iserUID);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadRandomStoryEvent value) loadRandomStory,
    required TResult Function(LoadUserStoriesEvent value) loadUserStories,
    required TResult Function(AddSharedStoriesEvent value) uploadSharedStories,
    required TResult Function(AddNewStoryEvent value) addNewStory,
    required TResult Function(RemoveStoryEvent value) removeStory,
  }) {
    return loadRandomStory(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadRandomStoryEvent value)? loadRandomStory,
    TResult? Function(LoadUserStoriesEvent value)? loadUserStories,
    TResult? Function(AddSharedStoriesEvent value)? uploadSharedStories,
    TResult? Function(AddNewStoryEvent value)? addNewStory,
    TResult? Function(RemoveStoryEvent value)? removeStory,
  }) {
    return loadRandomStory?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadRandomStoryEvent value)? loadRandomStory,
    TResult Function(LoadUserStoriesEvent value)? loadUserStories,
    TResult Function(AddSharedStoriesEvent value)? uploadSharedStories,
    TResult Function(AddNewStoryEvent value)? addNewStory,
    TResult Function(RemoveStoryEvent value)? removeStory,
    required TResult orElse(),
  }) {
    if (loadRandomStory != null) {
      return loadRandomStory(this);
    }
    return orElse();
  }
}

abstract class LoadRandomStoryEvent implements SharedStoriesEvent {
  const factory LoadRandomStoryEvent({required final String iserUID}) =
      _$LoadRandomStoryEventImpl;

  @override
  String get iserUID;
  @JsonKey(ignore: true)
  _$$LoadRandomStoryEventImplCopyWith<_$LoadRandomStoryEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadUserStoriesEventImplCopyWith<$Res> {
  factory _$$LoadUserStoriesEventImplCopyWith(_$LoadUserStoriesEventImpl value,
          $Res Function(_$LoadUserStoriesEventImpl) then) =
      __$$LoadUserStoriesEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String iserUID});
}

/// @nodoc
class __$$LoadUserStoriesEventImplCopyWithImpl<$Res>
    extends _$SharedStoriesEventCopyWithImpl<$Res, _$LoadUserStoriesEventImpl>
    implements _$$LoadUserStoriesEventImplCopyWith<$Res> {
  __$$LoadUserStoriesEventImplCopyWithImpl(_$LoadUserStoriesEventImpl _value,
      $Res Function(_$LoadUserStoriesEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? iserUID = null,
  }) {
    return _then(_$LoadUserStoriesEventImpl(
      iserUID: null == iserUID
          ? _value.iserUID
          : iserUID // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LoadUserStoriesEventImpl implements LoadUserStoriesEvent {
  const _$LoadUserStoriesEventImpl({required this.iserUID});

  @override
  final String iserUID;

  @override
  String toString() {
    return 'SharedStoriesEvent.loadUserStories(iserUID: $iserUID)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadUserStoriesEventImpl &&
            (identical(other.iserUID, iserUID) || other.iserUID == iserUID));
  }

  @override
  int get hashCode => Object.hash(runtimeType, iserUID);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadUserStoriesEventImplCopyWith<_$LoadUserStoriesEventImpl>
      get copyWith =>
          __$$LoadUserStoriesEventImplCopyWithImpl<_$LoadUserStoriesEventImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String iserUID) loadRandomStory,
    required TResult Function(String iserUID) loadUserStories,
    required TResult Function(String iserUID, List<SharedStory> stories)
        uploadSharedStories,
    required TResult Function(int iserUID, SharedStory story) addNewStory,
    required TResult Function(int iserUID, SharedStory story) removeStory,
  }) {
    return loadUserStories(iserUID);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String iserUID)? loadRandomStory,
    TResult? Function(String iserUID)? loadUserStories,
    TResult? Function(String iserUID, List<SharedStory> stories)?
        uploadSharedStories,
    TResult? Function(int iserUID, SharedStory story)? addNewStory,
    TResult? Function(int iserUID, SharedStory story)? removeStory,
  }) {
    return loadUserStories?.call(iserUID);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String iserUID)? loadRandomStory,
    TResult Function(String iserUID)? loadUserStories,
    TResult Function(String iserUID, List<SharedStory> stories)?
        uploadSharedStories,
    TResult Function(int iserUID, SharedStory story)? addNewStory,
    TResult Function(int iserUID, SharedStory story)? removeStory,
    required TResult orElse(),
  }) {
    if (loadUserStories != null) {
      return loadUserStories(iserUID);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadRandomStoryEvent value) loadRandomStory,
    required TResult Function(LoadUserStoriesEvent value) loadUserStories,
    required TResult Function(AddSharedStoriesEvent value) uploadSharedStories,
    required TResult Function(AddNewStoryEvent value) addNewStory,
    required TResult Function(RemoveStoryEvent value) removeStory,
  }) {
    return loadUserStories(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadRandomStoryEvent value)? loadRandomStory,
    TResult? Function(LoadUserStoriesEvent value)? loadUserStories,
    TResult? Function(AddSharedStoriesEvent value)? uploadSharedStories,
    TResult? Function(AddNewStoryEvent value)? addNewStory,
    TResult? Function(RemoveStoryEvent value)? removeStory,
  }) {
    return loadUserStories?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadRandomStoryEvent value)? loadRandomStory,
    TResult Function(LoadUserStoriesEvent value)? loadUserStories,
    TResult Function(AddSharedStoriesEvent value)? uploadSharedStories,
    TResult Function(AddNewStoryEvent value)? addNewStory,
    TResult Function(RemoveStoryEvent value)? removeStory,
    required TResult orElse(),
  }) {
    if (loadUserStories != null) {
      return loadUserStories(this);
    }
    return orElse();
  }
}

abstract class LoadUserStoriesEvent implements SharedStoriesEvent {
  const factory LoadUserStoriesEvent({required final String iserUID}) =
      _$LoadUserStoriesEventImpl;

  @override
  String get iserUID;
  @JsonKey(ignore: true)
  _$$LoadUserStoriesEventImplCopyWith<_$LoadUserStoriesEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddSharedStoriesEventImplCopyWith<$Res> {
  factory _$$AddSharedStoriesEventImplCopyWith(
          _$AddSharedStoriesEventImpl value,
          $Res Function(_$AddSharedStoriesEventImpl) then) =
      __$$AddSharedStoriesEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String iserUID, List<SharedStory> stories});
}

/// @nodoc
class __$$AddSharedStoriesEventImplCopyWithImpl<$Res>
    extends _$SharedStoriesEventCopyWithImpl<$Res, _$AddSharedStoriesEventImpl>
    implements _$$AddSharedStoriesEventImplCopyWith<$Res> {
  __$$AddSharedStoriesEventImplCopyWithImpl(_$AddSharedStoriesEventImpl _value,
      $Res Function(_$AddSharedStoriesEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? iserUID = null,
    Object? stories = null,
  }) {
    return _then(_$AddSharedStoriesEventImpl(
      iserUID: null == iserUID
          ? _value.iserUID
          : iserUID // ignore: cast_nullable_to_non_nullable
              as String,
      stories: null == stories
          ? _value._stories
          : stories // ignore: cast_nullable_to_non_nullable
              as List<SharedStory>,
    ));
  }
}

/// @nodoc

class _$AddSharedStoriesEventImpl implements AddSharedStoriesEvent {
  const _$AddSharedStoriesEventImpl(
      {required this.iserUID, required final List<SharedStory> stories})
      : _stories = stories;

  @override
  final String iserUID;
  final List<SharedStory> _stories;
  @override
  List<SharedStory> get stories {
    if (_stories is EqualUnmodifiableListView) return _stories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_stories);
  }

  @override
  String toString() {
    return 'SharedStoriesEvent.uploadSharedStories(iserUID: $iserUID, stories: $stories)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddSharedStoriesEventImpl &&
            (identical(other.iserUID, iserUID) || other.iserUID == iserUID) &&
            const DeepCollectionEquality().equals(other._stories, _stories));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, iserUID, const DeepCollectionEquality().hash(_stories));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddSharedStoriesEventImplCopyWith<_$AddSharedStoriesEventImpl>
      get copyWith => __$$AddSharedStoriesEventImplCopyWithImpl<
          _$AddSharedStoriesEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String iserUID) loadRandomStory,
    required TResult Function(String iserUID) loadUserStories,
    required TResult Function(String iserUID, List<SharedStory> stories)
        uploadSharedStories,
    required TResult Function(int iserUID, SharedStory story) addNewStory,
    required TResult Function(int iserUID, SharedStory story) removeStory,
  }) {
    return uploadSharedStories(iserUID, stories);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String iserUID)? loadRandomStory,
    TResult? Function(String iserUID)? loadUserStories,
    TResult? Function(String iserUID, List<SharedStory> stories)?
        uploadSharedStories,
    TResult? Function(int iserUID, SharedStory story)? addNewStory,
    TResult? Function(int iserUID, SharedStory story)? removeStory,
  }) {
    return uploadSharedStories?.call(iserUID, stories);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String iserUID)? loadRandomStory,
    TResult Function(String iserUID)? loadUserStories,
    TResult Function(String iserUID, List<SharedStory> stories)?
        uploadSharedStories,
    TResult Function(int iserUID, SharedStory story)? addNewStory,
    TResult Function(int iserUID, SharedStory story)? removeStory,
    required TResult orElse(),
  }) {
    if (uploadSharedStories != null) {
      return uploadSharedStories(iserUID, stories);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadRandomStoryEvent value) loadRandomStory,
    required TResult Function(LoadUserStoriesEvent value) loadUserStories,
    required TResult Function(AddSharedStoriesEvent value) uploadSharedStories,
    required TResult Function(AddNewStoryEvent value) addNewStory,
    required TResult Function(RemoveStoryEvent value) removeStory,
  }) {
    return uploadSharedStories(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadRandomStoryEvent value)? loadRandomStory,
    TResult? Function(LoadUserStoriesEvent value)? loadUserStories,
    TResult? Function(AddSharedStoriesEvent value)? uploadSharedStories,
    TResult? Function(AddNewStoryEvent value)? addNewStory,
    TResult? Function(RemoveStoryEvent value)? removeStory,
  }) {
    return uploadSharedStories?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadRandomStoryEvent value)? loadRandomStory,
    TResult Function(LoadUserStoriesEvent value)? loadUserStories,
    TResult Function(AddSharedStoriesEvent value)? uploadSharedStories,
    TResult Function(AddNewStoryEvent value)? addNewStory,
    TResult Function(RemoveStoryEvent value)? removeStory,
    required TResult orElse(),
  }) {
    if (uploadSharedStories != null) {
      return uploadSharedStories(this);
    }
    return orElse();
  }
}

abstract class AddSharedStoriesEvent implements SharedStoriesEvent {
  const factory AddSharedStoriesEvent(
      {required final String iserUID,
      required final List<SharedStory> stories}) = _$AddSharedStoriesEventImpl;

  @override
  String get iserUID;
  List<SharedStory> get stories;
  @JsonKey(ignore: true)
  _$$AddSharedStoriesEventImplCopyWith<_$AddSharedStoriesEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddNewStoryEventImplCopyWith<$Res> {
  factory _$$AddNewStoryEventImplCopyWith(_$AddNewStoryEventImpl value,
          $Res Function(_$AddNewStoryEventImpl) then) =
      __$$AddNewStoryEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int iserUID, SharedStory story});
}

/// @nodoc
class __$$AddNewStoryEventImplCopyWithImpl<$Res>
    extends _$SharedStoriesEventCopyWithImpl<$Res, _$AddNewStoryEventImpl>
    implements _$$AddNewStoryEventImplCopyWith<$Res> {
  __$$AddNewStoryEventImplCopyWithImpl(_$AddNewStoryEventImpl _value,
      $Res Function(_$AddNewStoryEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? iserUID = null,
    Object? story = null,
  }) {
    return _then(_$AddNewStoryEventImpl(
      iserUID: null == iserUID
          ? _value.iserUID
          : iserUID // ignore: cast_nullable_to_non_nullable
              as int,
      story: null == story
          ? _value.story
          : story // ignore: cast_nullable_to_non_nullable
              as SharedStory,
    ));
  }
}

/// @nodoc

class _$AddNewStoryEventImpl implements AddNewStoryEvent {
  const _$AddNewStoryEventImpl({required this.iserUID, required this.story});

  @override
  final int iserUID;
  @override
  final SharedStory story;

  @override
  String toString() {
    return 'SharedStoriesEvent.addNewStory(iserUID: $iserUID, story: $story)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddNewStoryEventImpl &&
            (identical(other.iserUID, iserUID) || other.iserUID == iserUID) &&
            (identical(other.story, story) || other.story == story));
  }

  @override
  int get hashCode => Object.hash(runtimeType, iserUID, story);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddNewStoryEventImplCopyWith<_$AddNewStoryEventImpl> get copyWith =>
      __$$AddNewStoryEventImplCopyWithImpl<_$AddNewStoryEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String iserUID) loadRandomStory,
    required TResult Function(String iserUID) loadUserStories,
    required TResult Function(String iserUID, List<SharedStory> stories)
        uploadSharedStories,
    required TResult Function(int iserUID, SharedStory story) addNewStory,
    required TResult Function(int iserUID, SharedStory story) removeStory,
  }) {
    return addNewStory(iserUID, story);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String iserUID)? loadRandomStory,
    TResult? Function(String iserUID)? loadUserStories,
    TResult? Function(String iserUID, List<SharedStory> stories)?
        uploadSharedStories,
    TResult? Function(int iserUID, SharedStory story)? addNewStory,
    TResult? Function(int iserUID, SharedStory story)? removeStory,
  }) {
    return addNewStory?.call(iserUID, story);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String iserUID)? loadRandomStory,
    TResult Function(String iserUID)? loadUserStories,
    TResult Function(String iserUID, List<SharedStory> stories)?
        uploadSharedStories,
    TResult Function(int iserUID, SharedStory story)? addNewStory,
    TResult Function(int iserUID, SharedStory story)? removeStory,
    required TResult orElse(),
  }) {
    if (addNewStory != null) {
      return addNewStory(iserUID, story);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadRandomStoryEvent value) loadRandomStory,
    required TResult Function(LoadUserStoriesEvent value) loadUserStories,
    required TResult Function(AddSharedStoriesEvent value) uploadSharedStories,
    required TResult Function(AddNewStoryEvent value) addNewStory,
    required TResult Function(RemoveStoryEvent value) removeStory,
  }) {
    return addNewStory(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadRandomStoryEvent value)? loadRandomStory,
    TResult? Function(LoadUserStoriesEvent value)? loadUserStories,
    TResult? Function(AddSharedStoriesEvent value)? uploadSharedStories,
    TResult? Function(AddNewStoryEvent value)? addNewStory,
    TResult? Function(RemoveStoryEvent value)? removeStory,
  }) {
    return addNewStory?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadRandomStoryEvent value)? loadRandomStory,
    TResult Function(LoadUserStoriesEvent value)? loadUserStories,
    TResult Function(AddSharedStoriesEvent value)? uploadSharedStories,
    TResult Function(AddNewStoryEvent value)? addNewStory,
    TResult Function(RemoveStoryEvent value)? removeStory,
    required TResult orElse(),
  }) {
    if (addNewStory != null) {
      return addNewStory(this);
    }
    return orElse();
  }
}

abstract class AddNewStoryEvent implements SharedStoriesEvent {
  const factory AddNewStoryEvent(
      {required final int iserUID,
      required final SharedStory story}) = _$AddNewStoryEventImpl;

  @override
  int get iserUID;
  SharedStory get story;
  @JsonKey(ignore: true)
  _$$AddNewStoryEventImplCopyWith<_$AddNewStoryEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RemoveStoryEventImplCopyWith<$Res> {
  factory _$$RemoveStoryEventImplCopyWith(_$RemoveStoryEventImpl value,
          $Res Function(_$RemoveStoryEventImpl) then) =
      __$$RemoveStoryEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int iserUID, SharedStory story});
}

/// @nodoc
class __$$RemoveStoryEventImplCopyWithImpl<$Res>
    extends _$SharedStoriesEventCopyWithImpl<$Res, _$RemoveStoryEventImpl>
    implements _$$RemoveStoryEventImplCopyWith<$Res> {
  __$$RemoveStoryEventImplCopyWithImpl(_$RemoveStoryEventImpl _value,
      $Res Function(_$RemoveStoryEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? iserUID = null,
    Object? story = null,
  }) {
    return _then(_$RemoveStoryEventImpl(
      iserUID: null == iserUID
          ? _value.iserUID
          : iserUID // ignore: cast_nullable_to_non_nullable
              as int,
      story: null == story
          ? _value.story
          : story // ignore: cast_nullable_to_non_nullable
              as SharedStory,
    ));
  }
}

/// @nodoc

class _$RemoveStoryEventImpl implements RemoveStoryEvent {
  const _$RemoveStoryEventImpl({required this.iserUID, required this.story});

  @override
  final int iserUID;
  @override
  final SharedStory story;

  @override
  String toString() {
    return 'SharedStoriesEvent.removeStory(iserUID: $iserUID, story: $story)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RemoveStoryEventImpl &&
            (identical(other.iserUID, iserUID) || other.iserUID == iserUID) &&
            (identical(other.story, story) || other.story == story));
  }

  @override
  int get hashCode => Object.hash(runtimeType, iserUID, story);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RemoveStoryEventImplCopyWith<_$RemoveStoryEventImpl> get copyWith =>
      __$$RemoveStoryEventImplCopyWithImpl<_$RemoveStoryEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String iserUID) loadRandomStory,
    required TResult Function(String iserUID) loadUserStories,
    required TResult Function(String iserUID, List<SharedStory> stories)
        uploadSharedStories,
    required TResult Function(int iserUID, SharedStory story) addNewStory,
    required TResult Function(int iserUID, SharedStory story) removeStory,
  }) {
    return removeStory(iserUID, story);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String iserUID)? loadRandomStory,
    TResult? Function(String iserUID)? loadUserStories,
    TResult? Function(String iserUID, List<SharedStory> stories)?
        uploadSharedStories,
    TResult? Function(int iserUID, SharedStory story)? addNewStory,
    TResult? Function(int iserUID, SharedStory story)? removeStory,
  }) {
    return removeStory?.call(iserUID, story);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String iserUID)? loadRandomStory,
    TResult Function(String iserUID)? loadUserStories,
    TResult Function(String iserUID, List<SharedStory> stories)?
        uploadSharedStories,
    TResult Function(int iserUID, SharedStory story)? addNewStory,
    TResult Function(int iserUID, SharedStory story)? removeStory,
    required TResult orElse(),
  }) {
    if (removeStory != null) {
      return removeStory(iserUID, story);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadRandomStoryEvent value) loadRandomStory,
    required TResult Function(LoadUserStoriesEvent value) loadUserStories,
    required TResult Function(AddSharedStoriesEvent value) uploadSharedStories,
    required TResult Function(AddNewStoryEvent value) addNewStory,
    required TResult Function(RemoveStoryEvent value) removeStory,
  }) {
    return removeStory(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadRandomStoryEvent value)? loadRandomStory,
    TResult? Function(LoadUserStoriesEvent value)? loadUserStories,
    TResult? Function(AddSharedStoriesEvent value)? uploadSharedStories,
    TResult? Function(AddNewStoryEvent value)? addNewStory,
    TResult? Function(RemoveStoryEvent value)? removeStory,
  }) {
    return removeStory?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadRandomStoryEvent value)? loadRandomStory,
    TResult Function(LoadUserStoriesEvent value)? loadUserStories,
    TResult Function(AddSharedStoriesEvent value)? uploadSharedStories,
    TResult Function(AddNewStoryEvent value)? addNewStory,
    TResult Function(RemoveStoryEvent value)? removeStory,
    required TResult orElse(),
  }) {
    if (removeStory != null) {
      return removeStory(this);
    }
    return orElse();
  }
}

abstract class RemoveStoryEvent implements SharedStoriesEvent {
  const factory RemoveStoryEvent(
      {required final int iserUID,
      required final SharedStory story}) = _$RemoveStoryEventImpl;

  @override
  int get iserUID;
  SharedStory get story;
  @JsonKey(ignore: true)
  _$$RemoveStoryEventImplCopyWith<_$RemoveStoryEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SharedStoriesState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() storiesUploaded,
    required TResult Function(
            List<SharedStory> userStories, List<SharedStory> randomStories)
        storiesLoaded,
    required TResult Function(String errorText) storiesLoadingError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? storiesUploaded,
    TResult? Function(
            List<SharedStory> userStories, List<SharedStory> randomStories)?
        storiesLoaded,
    TResult? Function(String errorText)? storiesLoadingError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? storiesUploaded,
    TResult Function(
            List<SharedStory> userStories, List<SharedStory> randomStories)?
        storiesLoaded,
    TResult Function(String errorText)? storiesLoadingError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_StoriesUploaded value) storiesUploaded,
    required TResult Function(_StoriesLoaded value) storiesLoaded,
    required TResult Function(_StoriesLoadingError value) storiesLoadingError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_StoriesUploaded value)? storiesUploaded,
    TResult? Function(_StoriesLoaded value)? storiesLoaded,
    TResult? Function(_StoriesLoadingError value)? storiesLoadingError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_StoriesUploaded value)? storiesUploaded,
    TResult Function(_StoriesLoaded value)? storiesLoaded,
    TResult Function(_StoriesLoadingError value)? storiesLoadingError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SharedStoriesStateCopyWith<$Res> {
  factory $SharedStoriesStateCopyWith(
          SharedStoriesState value, $Res Function(SharedStoriesState) then) =
      _$SharedStoriesStateCopyWithImpl<$Res, SharedStoriesState>;
}

/// @nodoc
class _$SharedStoriesStateCopyWithImpl<$Res, $Val extends SharedStoriesState>
    implements $SharedStoriesStateCopyWith<$Res> {
  _$SharedStoriesStateCopyWithImpl(this._value, this._then);

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
    extends _$SharedStoriesStateCopyWithImpl<$Res, _$InitialImpl>
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
    return 'SharedStoriesState.initial()';
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
    required TResult Function() storiesUploaded,
    required TResult Function(
            List<SharedStory> userStories, List<SharedStory> randomStories)
        storiesLoaded,
    required TResult Function(String errorText) storiesLoadingError,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? storiesUploaded,
    TResult? Function(
            List<SharedStory> userStories, List<SharedStory> randomStories)?
        storiesLoaded,
    TResult? Function(String errorText)? storiesLoadingError,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? storiesUploaded,
    TResult Function(
            List<SharedStory> userStories, List<SharedStory> randomStories)?
        storiesLoaded,
    TResult Function(String errorText)? storiesLoadingError,
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
    required TResult Function(_StoriesUploaded value) storiesUploaded,
    required TResult Function(_StoriesLoaded value) storiesLoaded,
    required TResult Function(_StoriesLoadingError value) storiesLoadingError,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_StoriesUploaded value)? storiesUploaded,
    TResult? Function(_StoriesLoaded value)? storiesLoaded,
    TResult? Function(_StoriesLoadingError value)? storiesLoadingError,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_StoriesUploaded value)? storiesUploaded,
    TResult Function(_StoriesLoaded value)? storiesLoaded,
    TResult Function(_StoriesLoadingError value)? storiesLoadingError,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements SharedStoriesState {
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
    extends _$SharedStoriesStateCopyWithImpl<$Res, _$LoadingImpl>
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
    return 'SharedStoriesState.loading()';
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
    required TResult Function() storiesUploaded,
    required TResult Function(
            List<SharedStory> userStories, List<SharedStory> randomStories)
        storiesLoaded,
    required TResult Function(String errorText) storiesLoadingError,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? storiesUploaded,
    TResult? Function(
            List<SharedStory> userStories, List<SharedStory> randomStories)?
        storiesLoaded,
    TResult? Function(String errorText)? storiesLoadingError,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? storiesUploaded,
    TResult Function(
            List<SharedStory> userStories, List<SharedStory> randomStories)?
        storiesLoaded,
    TResult Function(String errorText)? storiesLoadingError,
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
    required TResult Function(_StoriesUploaded value) storiesUploaded,
    required TResult Function(_StoriesLoaded value) storiesLoaded,
    required TResult Function(_StoriesLoadingError value) storiesLoadingError,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_StoriesUploaded value)? storiesUploaded,
    TResult? Function(_StoriesLoaded value)? storiesLoaded,
    TResult? Function(_StoriesLoadingError value)? storiesLoadingError,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_StoriesUploaded value)? storiesUploaded,
    TResult Function(_StoriesLoaded value)? storiesLoaded,
    TResult Function(_StoriesLoadingError value)? storiesLoadingError,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements SharedStoriesState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$StoriesUploadedImplCopyWith<$Res> {
  factory _$$StoriesUploadedImplCopyWith(_$StoriesUploadedImpl value,
          $Res Function(_$StoriesUploadedImpl) then) =
      __$$StoriesUploadedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StoriesUploadedImplCopyWithImpl<$Res>
    extends _$SharedStoriesStateCopyWithImpl<$Res, _$StoriesUploadedImpl>
    implements _$$StoriesUploadedImplCopyWith<$Res> {
  __$$StoriesUploadedImplCopyWithImpl(
      _$StoriesUploadedImpl _value, $Res Function(_$StoriesUploadedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$StoriesUploadedImpl implements _StoriesUploaded {
  const _$StoriesUploadedImpl();

  @override
  String toString() {
    return 'SharedStoriesState.storiesUploaded()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StoriesUploadedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() storiesUploaded,
    required TResult Function(
            List<SharedStory> userStories, List<SharedStory> randomStories)
        storiesLoaded,
    required TResult Function(String errorText) storiesLoadingError,
  }) {
    return storiesUploaded();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? storiesUploaded,
    TResult? Function(
            List<SharedStory> userStories, List<SharedStory> randomStories)?
        storiesLoaded,
    TResult? Function(String errorText)? storiesLoadingError,
  }) {
    return storiesUploaded?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? storiesUploaded,
    TResult Function(
            List<SharedStory> userStories, List<SharedStory> randomStories)?
        storiesLoaded,
    TResult Function(String errorText)? storiesLoadingError,
    required TResult orElse(),
  }) {
    if (storiesUploaded != null) {
      return storiesUploaded();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_StoriesUploaded value) storiesUploaded,
    required TResult Function(_StoriesLoaded value) storiesLoaded,
    required TResult Function(_StoriesLoadingError value) storiesLoadingError,
  }) {
    return storiesUploaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_StoriesUploaded value)? storiesUploaded,
    TResult? Function(_StoriesLoaded value)? storiesLoaded,
    TResult? Function(_StoriesLoadingError value)? storiesLoadingError,
  }) {
    return storiesUploaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_StoriesUploaded value)? storiesUploaded,
    TResult Function(_StoriesLoaded value)? storiesLoaded,
    TResult Function(_StoriesLoadingError value)? storiesLoadingError,
    required TResult orElse(),
  }) {
    if (storiesUploaded != null) {
      return storiesUploaded(this);
    }
    return orElse();
  }
}

abstract class _StoriesUploaded implements SharedStoriesState {
  const factory _StoriesUploaded() = _$StoriesUploadedImpl;
}

/// @nodoc
abstract class _$$StoriesLoadedImplCopyWith<$Res> {
  factory _$$StoriesLoadedImplCopyWith(
          _$StoriesLoadedImpl value, $Res Function(_$StoriesLoadedImpl) then) =
      __$$StoriesLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<SharedStory> userStories, List<SharedStory> randomStories});
}

/// @nodoc
class __$$StoriesLoadedImplCopyWithImpl<$Res>
    extends _$SharedStoriesStateCopyWithImpl<$Res, _$StoriesLoadedImpl>
    implements _$$StoriesLoadedImplCopyWith<$Res> {
  __$$StoriesLoadedImplCopyWithImpl(
      _$StoriesLoadedImpl _value, $Res Function(_$StoriesLoadedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userStories = null,
    Object? randomStories = null,
  }) {
    return _then(_$StoriesLoadedImpl(
      userStories: null == userStories
          ? _value._userStories
          : userStories // ignore: cast_nullable_to_non_nullable
              as List<SharedStory>,
      randomStories: null == randomStories
          ? _value._randomStories
          : randomStories // ignore: cast_nullable_to_non_nullable
              as List<SharedStory>,
    ));
  }
}

/// @nodoc

class _$StoriesLoadedImpl implements _StoriesLoaded {
  const _$StoriesLoadedImpl(
      {final List<SharedStory> userStories = const [],
      final List<SharedStory> randomStories = const []})
      : _userStories = userStories,
        _randomStories = randomStories;

  final List<SharedStory> _userStories;
  @override
  @JsonKey()
  List<SharedStory> get userStories {
    if (_userStories is EqualUnmodifiableListView) return _userStories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_userStories);
  }

  final List<SharedStory> _randomStories;
  @override
  @JsonKey()
  List<SharedStory> get randomStories {
    if (_randomStories is EqualUnmodifiableListView) return _randomStories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_randomStories);
  }

  @override
  String toString() {
    return 'SharedStoriesState.storiesLoaded(userStories: $userStories, randomStories: $randomStories)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StoriesLoadedImpl &&
            const DeepCollectionEquality()
                .equals(other._userStories, _userStories) &&
            const DeepCollectionEquality()
                .equals(other._randomStories, _randomStories));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_userStories),
      const DeepCollectionEquality().hash(_randomStories));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StoriesLoadedImplCopyWith<_$StoriesLoadedImpl> get copyWith =>
      __$$StoriesLoadedImplCopyWithImpl<_$StoriesLoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() storiesUploaded,
    required TResult Function(
            List<SharedStory> userStories, List<SharedStory> randomStories)
        storiesLoaded,
    required TResult Function(String errorText) storiesLoadingError,
  }) {
    return storiesLoaded(userStories, randomStories);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? storiesUploaded,
    TResult? Function(
            List<SharedStory> userStories, List<SharedStory> randomStories)?
        storiesLoaded,
    TResult? Function(String errorText)? storiesLoadingError,
  }) {
    return storiesLoaded?.call(userStories, randomStories);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? storiesUploaded,
    TResult Function(
            List<SharedStory> userStories, List<SharedStory> randomStories)?
        storiesLoaded,
    TResult Function(String errorText)? storiesLoadingError,
    required TResult orElse(),
  }) {
    if (storiesLoaded != null) {
      return storiesLoaded(userStories, randomStories);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_StoriesUploaded value) storiesUploaded,
    required TResult Function(_StoriesLoaded value) storiesLoaded,
    required TResult Function(_StoriesLoadingError value) storiesLoadingError,
  }) {
    return storiesLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_StoriesUploaded value)? storiesUploaded,
    TResult? Function(_StoriesLoaded value)? storiesLoaded,
    TResult? Function(_StoriesLoadingError value)? storiesLoadingError,
  }) {
    return storiesLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_StoriesUploaded value)? storiesUploaded,
    TResult Function(_StoriesLoaded value)? storiesLoaded,
    TResult Function(_StoriesLoadingError value)? storiesLoadingError,
    required TResult orElse(),
  }) {
    if (storiesLoaded != null) {
      return storiesLoaded(this);
    }
    return orElse();
  }
}

abstract class _StoriesLoaded implements SharedStoriesState {
  const factory _StoriesLoaded(
      {final List<SharedStory> userStories,
      final List<SharedStory> randomStories}) = _$StoriesLoadedImpl;

  List<SharedStory> get userStories;
  List<SharedStory> get randomStories;
  @JsonKey(ignore: true)
  _$$StoriesLoadedImplCopyWith<_$StoriesLoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$StoriesLoadingErrorImplCopyWith<$Res> {
  factory _$$StoriesLoadingErrorImplCopyWith(_$StoriesLoadingErrorImpl value,
          $Res Function(_$StoriesLoadingErrorImpl) then) =
      __$$StoriesLoadingErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String errorText});
}

/// @nodoc
class __$$StoriesLoadingErrorImplCopyWithImpl<$Res>
    extends _$SharedStoriesStateCopyWithImpl<$Res, _$StoriesLoadingErrorImpl>
    implements _$$StoriesLoadingErrorImplCopyWith<$Res> {
  __$$StoriesLoadingErrorImplCopyWithImpl(_$StoriesLoadingErrorImpl _value,
      $Res Function(_$StoriesLoadingErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorText = null,
  }) {
    return _then(_$StoriesLoadingErrorImpl(
      errorText: null == errorText
          ? _value.errorText
          : errorText // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$StoriesLoadingErrorImpl implements _StoriesLoadingError {
  const _$StoriesLoadingErrorImpl({this.errorText = 'Stories loading error'});

  @override
  @JsonKey()
  final String errorText;

  @override
  String toString() {
    return 'SharedStoriesState.storiesLoadingError(errorText: $errorText)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StoriesLoadingErrorImpl &&
            (identical(other.errorText, errorText) ||
                other.errorText == errorText));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorText);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StoriesLoadingErrorImplCopyWith<_$StoriesLoadingErrorImpl> get copyWith =>
      __$$StoriesLoadingErrorImplCopyWithImpl<_$StoriesLoadingErrorImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() storiesUploaded,
    required TResult Function(
            List<SharedStory> userStories, List<SharedStory> randomStories)
        storiesLoaded,
    required TResult Function(String errorText) storiesLoadingError,
  }) {
    return storiesLoadingError(errorText);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? storiesUploaded,
    TResult? Function(
            List<SharedStory> userStories, List<SharedStory> randomStories)?
        storiesLoaded,
    TResult? Function(String errorText)? storiesLoadingError,
  }) {
    return storiesLoadingError?.call(errorText);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? storiesUploaded,
    TResult Function(
            List<SharedStory> userStories, List<SharedStory> randomStories)?
        storiesLoaded,
    TResult Function(String errorText)? storiesLoadingError,
    required TResult orElse(),
  }) {
    if (storiesLoadingError != null) {
      return storiesLoadingError(errorText);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_StoriesUploaded value) storiesUploaded,
    required TResult Function(_StoriesLoaded value) storiesLoaded,
    required TResult Function(_StoriesLoadingError value) storiesLoadingError,
  }) {
    return storiesLoadingError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_StoriesUploaded value)? storiesUploaded,
    TResult? Function(_StoriesLoaded value)? storiesLoaded,
    TResult? Function(_StoriesLoadingError value)? storiesLoadingError,
  }) {
    return storiesLoadingError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_StoriesUploaded value)? storiesUploaded,
    TResult Function(_StoriesLoaded value)? storiesLoaded,
    TResult Function(_StoriesLoadingError value)? storiesLoadingError,
    required TResult orElse(),
  }) {
    if (storiesLoadingError != null) {
      return storiesLoadingError(this);
    }
    return orElse();
  }
}

abstract class _StoriesLoadingError implements SharedStoriesState {
  const factory _StoriesLoadingError({final String errorText}) =
      _$StoriesLoadingErrorImpl;

  String get errorText;
  @JsonKey(ignore: true)
  _$$StoriesLoadingErrorImplCopyWith<_$StoriesLoadingErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
