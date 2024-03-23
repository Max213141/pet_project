part of 'quote_bloc.dart';

@freezed
class QuoteState with _$QuoteState {
  const factory QuoteState.initial() = _Initial;
  const factory QuoteState.loading() = _Loading;

  const factory QuoteState.quoteLoaded({
    required String quote,
  }) = _QuoteLoaded;

  const factory QuoteState.quoteError() = _QuoteError;
}
