// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'quote_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$QuoteEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadQuote,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadQuote,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadQuote,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadQuote value) loadQuote,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadQuote value)? loadQuote,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadQuote value)? loadQuote,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuoteEventCopyWith<$Res> {
  factory $QuoteEventCopyWith(
          QuoteEvent value, $Res Function(QuoteEvent) then) =
      _$QuoteEventCopyWithImpl<$Res, QuoteEvent>;
}

/// @nodoc
class _$QuoteEventCopyWithImpl<$Res, $Val extends QuoteEvent>
    implements $QuoteEventCopyWith<$Res> {
  _$QuoteEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$LoadQuoteImplCopyWith<$Res> {
  factory _$$LoadQuoteImplCopyWith(
          _$LoadQuoteImpl value, $Res Function(_$LoadQuoteImpl) then) =
      __$$LoadQuoteImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadQuoteImplCopyWithImpl<$Res>
    extends _$QuoteEventCopyWithImpl<$Res, _$LoadQuoteImpl>
    implements _$$LoadQuoteImplCopyWith<$Res> {
  __$$LoadQuoteImplCopyWithImpl(
      _$LoadQuoteImpl _value, $Res Function(_$LoadQuoteImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadQuoteImpl implements LoadQuote {
  const _$LoadQuoteImpl();

  @override
  String toString() {
    return 'QuoteEvent.loadQuote()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadQuoteImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadQuote,
  }) {
    return loadQuote();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadQuote,
  }) {
    return loadQuote?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadQuote,
    required TResult orElse(),
  }) {
    if (loadQuote != null) {
      return loadQuote();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadQuote value) loadQuote,
  }) {
    return loadQuote(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadQuote value)? loadQuote,
  }) {
    return loadQuote?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadQuote value)? loadQuote,
    required TResult orElse(),
  }) {
    if (loadQuote != null) {
      return loadQuote(this);
    }
    return orElse();
  }
}

abstract class LoadQuote implements QuoteEvent {
  const factory LoadQuote() = _$LoadQuoteImpl;
}

/// @nodoc
mixin _$QuoteState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String quote) quoteLoaded,
    required TResult Function() quoteError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String quote)? quoteLoaded,
    TResult? Function()? quoteError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String quote)? quoteLoaded,
    TResult Function()? quoteError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_QuoteLoaded value) quoteLoaded,
    required TResult Function(_QuoteError value) quoteError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_QuoteLoaded value)? quoteLoaded,
    TResult? Function(_QuoteError value)? quoteError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_QuoteLoaded value)? quoteLoaded,
    TResult Function(_QuoteError value)? quoteError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuoteStateCopyWith<$Res> {
  factory $QuoteStateCopyWith(
          QuoteState value, $Res Function(QuoteState) then) =
      _$QuoteStateCopyWithImpl<$Res, QuoteState>;
}

/// @nodoc
class _$QuoteStateCopyWithImpl<$Res, $Val extends QuoteState>
    implements $QuoteStateCopyWith<$Res> {
  _$QuoteStateCopyWithImpl(this._value, this._then);

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
    extends _$QuoteStateCopyWithImpl<$Res, _$InitialImpl>
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
    return 'QuoteState.initial()';
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
    required TResult Function(String quote) quoteLoaded,
    required TResult Function() quoteError,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String quote)? quoteLoaded,
    TResult? Function()? quoteError,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String quote)? quoteLoaded,
    TResult Function()? quoteError,
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
    required TResult Function(_QuoteLoaded value) quoteLoaded,
    required TResult Function(_QuoteError value) quoteError,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_QuoteLoaded value)? quoteLoaded,
    TResult? Function(_QuoteError value)? quoteError,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_QuoteLoaded value)? quoteLoaded,
    TResult Function(_QuoteError value)? quoteError,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements QuoteState {
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
    extends _$QuoteStateCopyWithImpl<$Res, _$LoadingImpl>
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
    return 'QuoteState.loading()';
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
    required TResult Function(String quote) quoteLoaded,
    required TResult Function() quoteError,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String quote)? quoteLoaded,
    TResult? Function()? quoteError,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String quote)? quoteLoaded,
    TResult Function()? quoteError,
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
    required TResult Function(_QuoteLoaded value) quoteLoaded,
    required TResult Function(_QuoteError value) quoteError,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_QuoteLoaded value)? quoteLoaded,
    TResult? Function(_QuoteError value)? quoteError,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_QuoteLoaded value)? quoteLoaded,
    TResult Function(_QuoteError value)? quoteError,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements QuoteState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$QuoteLoadedImplCopyWith<$Res> {
  factory _$$QuoteLoadedImplCopyWith(
          _$QuoteLoadedImpl value, $Res Function(_$QuoteLoadedImpl) then) =
      __$$QuoteLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String quote});
}

/// @nodoc
class __$$QuoteLoadedImplCopyWithImpl<$Res>
    extends _$QuoteStateCopyWithImpl<$Res, _$QuoteLoadedImpl>
    implements _$$QuoteLoadedImplCopyWith<$Res> {
  __$$QuoteLoadedImplCopyWithImpl(
      _$QuoteLoadedImpl _value, $Res Function(_$QuoteLoadedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? quote = null,
  }) {
    return _then(_$QuoteLoadedImpl(
      quote: null == quote
          ? _value.quote
          : quote // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$QuoteLoadedImpl implements _QuoteLoaded {
  const _$QuoteLoadedImpl({required this.quote});

  @override
  final String quote;

  @override
  String toString() {
    return 'QuoteState.quoteLoaded(quote: $quote)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuoteLoadedImpl &&
            (identical(other.quote, quote) || other.quote == quote));
  }

  @override
  int get hashCode => Object.hash(runtimeType, quote);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$QuoteLoadedImplCopyWith<_$QuoteLoadedImpl> get copyWith =>
      __$$QuoteLoadedImplCopyWithImpl<_$QuoteLoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String quote) quoteLoaded,
    required TResult Function() quoteError,
  }) {
    return quoteLoaded(quote);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String quote)? quoteLoaded,
    TResult? Function()? quoteError,
  }) {
    return quoteLoaded?.call(quote);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String quote)? quoteLoaded,
    TResult Function()? quoteError,
    required TResult orElse(),
  }) {
    if (quoteLoaded != null) {
      return quoteLoaded(quote);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_QuoteLoaded value) quoteLoaded,
    required TResult Function(_QuoteError value) quoteError,
  }) {
    return quoteLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_QuoteLoaded value)? quoteLoaded,
    TResult? Function(_QuoteError value)? quoteError,
  }) {
    return quoteLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_QuoteLoaded value)? quoteLoaded,
    TResult Function(_QuoteError value)? quoteError,
    required TResult orElse(),
  }) {
    if (quoteLoaded != null) {
      return quoteLoaded(this);
    }
    return orElse();
  }
}

abstract class _QuoteLoaded implements QuoteState {
  const factory _QuoteLoaded({required final String quote}) = _$QuoteLoadedImpl;

  String get quote;
  @JsonKey(ignore: true)
  _$$QuoteLoadedImplCopyWith<_$QuoteLoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$QuoteErrorImplCopyWith<$Res> {
  factory _$$QuoteErrorImplCopyWith(
          _$QuoteErrorImpl value, $Res Function(_$QuoteErrorImpl) then) =
      __$$QuoteErrorImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$QuoteErrorImplCopyWithImpl<$Res>
    extends _$QuoteStateCopyWithImpl<$Res, _$QuoteErrorImpl>
    implements _$$QuoteErrorImplCopyWith<$Res> {
  __$$QuoteErrorImplCopyWithImpl(
      _$QuoteErrorImpl _value, $Res Function(_$QuoteErrorImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$QuoteErrorImpl implements _QuoteError {
  const _$QuoteErrorImpl();

  @override
  String toString() {
    return 'QuoteState.quoteError()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$QuoteErrorImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String quote) quoteLoaded,
    required TResult Function() quoteError,
  }) {
    return quoteError();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String quote)? quoteLoaded,
    TResult? Function()? quoteError,
  }) {
    return quoteError?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String quote)? quoteLoaded,
    TResult Function()? quoteError,
    required TResult orElse(),
  }) {
    if (quoteError != null) {
      return quoteError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_QuoteLoaded value) quoteLoaded,
    required TResult Function(_QuoteError value) quoteError,
  }) {
    return quoteError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_QuoteLoaded value)? quoteLoaded,
    TResult? Function(_QuoteError value)? quoteError,
  }) {
    return quoteError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_QuoteLoaded value)? quoteLoaded,
    TResult Function(_QuoteError value)? quoteError,
    required TResult orElse(),
  }) {
    if (quoteError != null) {
      return quoteError(this);
    }
    return orElse();
  }
}

abstract class _QuoteError implements QuoteState {
  const factory _QuoteError() = _$QuoteErrorImpl;
}
