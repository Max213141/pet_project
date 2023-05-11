import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'sample_class.freezed.dart';
part 'sample_class.g.dart';

/// 2. add annotation to class
@freezed
class SampleClass with _$SampleClass {
  const factory SampleClass({
    required String firstName,
    required String lastName,
    required int age,
  }) = _SampleClass;
// const factory SampleClass.freezedConstructor = _FreezedConstructor;
  factory SampleClass.fromJson(Map<String, Object?> json) =>
      _$SampleClassFromJson(json);

  /// add unnamed class constructor, so class instance methods won't get overriden
// const SampleClass.();
}
