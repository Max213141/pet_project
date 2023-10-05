// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sample_class.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SampleClass _$SampleClassFromJson(Map<String, dynamic> json) {
  return _SampleClass.fromJson(json);
}

/// @nodoc
mixin _$SampleClass {
  String get firstName => throw _privateConstructorUsedError;
  String get lastName => throw _privateConstructorUsedError;
  int get age => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SampleClassCopyWith<SampleClass> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SampleClassCopyWith<$Res> {
  factory $SampleClassCopyWith(
          SampleClass value, $Res Function(SampleClass) then) =
      _$SampleClassCopyWithImpl<$Res, SampleClass>;
  @useResult
  $Res call({String firstName, String lastName, int age});
}

/// @nodoc
class _$SampleClassCopyWithImpl<$Res, $Val extends SampleClass>
    implements $SampleClassCopyWith<$Res> {
  _$SampleClassCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firstName = null,
    Object? lastName = null,
    Object? age = null,
  }) {
    return _then(_value.copyWith(
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      age: null == age
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SampleClassImplCopyWith<$Res>
    implements $SampleClassCopyWith<$Res> {
  factory _$$SampleClassImplCopyWith(
          _$SampleClassImpl value, $Res Function(_$SampleClassImpl) then) =
      __$$SampleClassImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String firstName, String lastName, int age});
}

/// @nodoc
class __$$SampleClassImplCopyWithImpl<$Res>
    extends _$SampleClassCopyWithImpl<$Res, _$SampleClassImpl>
    implements _$$SampleClassImplCopyWith<$Res> {
  __$$SampleClassImplCopyWithImpl(
      _$SampleClassImpl _value, $Res Function(_$SampleClassImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firstName = null,
    Object? lastName = null,
    Object? age = null,
  }) {
    return _then(_$SampleClassImpl(
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      age: null == age
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SampleClassImpl with DiagnosticableTreeMixin implements _SampleClass {
  const _$SampleClassImpl(
      {required this.firstName, required this.lastName, required this.age});

  factory _$SampleClassImpl.fromJson(Map<String, dynamic> json) =>
      _$$SampleClassImplFromJson(json);

  @override
  final String firstName;
  @override
  final String lastName;
  @override
  final int age;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SampleClass(firstName: $firstName, lastName: $lastName, age: $age)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SampleClass'))
      ..add(DiagnosticsProperty('firstName', firstName))
      ..add(DiagnosticsProperty('lastName', lastName))
      ..add(DiagnosticsProperty('age', age));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SampleClassImpl &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.age, age) || other.age == age));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, firstName, lastName, age);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SampleClassImplCopyWith<_$SampleClassImpl> get copyWith =>
      __$$SampleClassImplCopyWithImpl<_$SampleClassImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SampleClassImplToJson(
      this,
    );
  }
}

abstract class _SampleClass implements SampleClass {
  const factory _SampleClass(
      {required final String firstName,
      required final String lastName,
      required final int age}) = _$SampleClassImpl;

  factory _SampleClass.fromJson(Map<String, dynamic> json) =
      _$SampleClassImpl.fromJson;

  @override
  String get firstName;
  @override
  String get lastName;
  @override
  int get age;
  @override
  @JsonKey(ignore: true)
  _$$SampleClassImplCopyWith<_$SampleClassImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
