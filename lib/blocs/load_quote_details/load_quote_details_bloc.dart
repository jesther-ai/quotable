import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:quotable_bloc/models/qoute.dart';
import 'package:quotable_bloc/quote_repository.dart';

part 'load_quote_details_event.dart';
part 'load_quote_details_state.dart';

class LoadQuoteDetailsBloc extends Bloc<LoadQuoteDetailsEvent, Quote?> {
  LoadQuoteDetailsBloc({
    required this.quoteRepository,
  }) : super(null) {
    on<LoadDetails>(_loadDetails);
  }
  final QuoteRepository quoteRepository;

  _loadDetails(
    LoadDetails event,
    Emitter<Quote?> emit,
  ) async {
    var x = await quoteRepository.loadQuoteDetails(quoteId: event.id);
    emit(x);
  }
}
