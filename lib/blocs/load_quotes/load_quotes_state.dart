// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'load_quotes_bloc.dart';

abstract class LoadQuotesState extends Equatable {
  const LoadQuotesState({
    this.quotes = const <Quote?>[],
  });
  final List<Quote?> quotes;
  @override
  List<Object?> get props => [];
}

class LoadedQuotes extends LoadQuotesState {
  const LoadedQuotes({super.quotes});

  @override
  List<Object> get props => [quotes];

  LoadedQuotes copyWith({
    List<Quote?>? quotes,
  }) {
    return LoadedQuotes(
      quotes: quotes ?? this.quotes,
    );
  }
}

class LoadingQuotes extends LoadQuotesState {
  const LoadingQuotes({this.message = 'Please wait...'});
  final String message;
  @override
  List<Object> get props => [message];

  LoadingQuotes copyWith({
    String? message,
  }) {
    return LoadingQuotes(
      message: message ?? this.message,
    );
  }
}

class ErrorQuotes extends LoadQuotesState {
  const ErrorQuotes({this.message = 'Something went wrong'});
  final String message;
  @override
  List<Object?> get props => [message];

  ErrorQuotes copyWith({
    String? message,
  }) {
    return ErrorQuotes(
      message: message ?? this.message,
    );
  }
}
