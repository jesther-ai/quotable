part of 'load_quote_details_bloc.dart';

abstract class LoadQuoteDetailsEvent extends Equatable {
  const LoadQuoteDetailsEvent();

  @override
  List<Object> get props => [];
}

class LoadDetails extends LoadQuoteDetailsEvent {
  const LoadDetails({
    required this.id,
  });
  final String id;
  @override
  List<Object> get props => [id];
}
