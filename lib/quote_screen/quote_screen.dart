import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quotable_bloc/blocs/load_quotes/load_quotes_bloc.dart';
import 'package:quotable_bloc/constant.dart';

import 'quote_card.dart';
import 'quote_loading_state.dart';

class QuoteScreen extends StatelessWidget {
  const QuoteScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Quotes'),
      ),
      body: BlocBuilder<LoadQuotesBloc, LoadQuotesState>(
        buildWhen: (x, y) => x.quotes != y.quotes,
        builder: (context, state) {
          return AnimatedSwitcher(
            duration: const Duration(milliseconds: 550),
            child: state is LoadingQuotes
                ? LoadingState(
                    message: state.message,
                  )
                : state is LoadedQuotes
                    ? RefreshIndicator(
                        onRefresh: () async {
                          context.read<LoadQuotesBloc>().add(
                                const OnRefreshQuotes(),
                              );
                        },
                        backgroundColor: Constant.kMainPrimayColor,
                        color: Theme.of(context).primaryColorDark,
                        child: ListView.builder(
                          itemCount: state.quotes.length,
                          itemBuilder: (context, index) {
                            return QuoteCard(
                              index: index,
                            );
                          },
                        ),
                      )
                    : null,
          );
        },
      ),
    );
  }
}
