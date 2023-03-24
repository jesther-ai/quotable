import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:quotable_bloc/models/qoute.dart';
import 'package:quotable_bloc/quote_repository.dart';

part 'load_quotes_event.dart';
part 'load_quotes_state.dart';

class LoadQuotesBloc extends Bloc<LoadQuotesEvent, LoadQuotesState> {
  LoadQuotesBloc({required this.quoteRepository})
      : super(const LoadingQuotes()) {
    on<OnInitialLoadQuotes>(_onInitialLoad);
    on<OnRefreshQuotes>(_onRefresh);
  }

  final QuoteRepository quoteRepository;

  _onInitialLoad(
    OnInitialLoadQuotes event,
    Emitter<LoadQuotesState> emit,
  ) async {
    try {
      emit(const LoadingQuotes().copyWith(
        message: 'Fetching Quotes,\nPlease wait...',
      ));
      var result = await quoteRepository.loadQuotes(page: 1, limit: 10);
      emit(const LoadedQuotes().copyWith(
        quotes: result,
      ));
    } catch (e) {
      emit(const ErrorQuotes().copyWith(message: e.toString()));
    }
  }

  _onRefresh(
    OnRefreshQuotes event,
    Emitter<LoadQuotesState> emit,
  ) async {
    try {
      emit(const LoadingQuotes().copyWith(
        message: 'Refreshing Quotes,\nPlease wait...',
      ));
      var result = await quoteRepository.loadQuotes(page: 1, limit: 10);
      emit(const LoadedQuotes().copyWith(
        quotes: result,
      ));
    } catch (e) {
      emit(const ErrorQuotes().copyWith(message: e.toString()));
    }
  }
}
