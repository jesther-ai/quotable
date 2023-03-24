part of 'load_quotes_bloc.dart';

abstract class LoadQuotesEvent extends Equatable {
  const LoadQuotesEvent();

  @override
  List<Object> get props => [];
}

class OnInitialLoadQuotes extends LoadQuotesEvent {
  const OnInitialLoadQuotes();
}

class OnRefreshQuotes extends LoadQuotesEvent {
  const OnRefreshQuotes();
}
