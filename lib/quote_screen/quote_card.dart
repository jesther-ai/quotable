import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quotable_bloc/blocs/load_quotes/load_quotes_bloc.dart';
import 'package:quotable_bloc/constant.dart';

class QuoteCard extends StatelessWidget {
  const QuoteCard({
    super.key,
    required this.index,
  });
  final int index;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        width: double.maxFinite,
        color: Colors.transparent,
        margin: const EdgeInsets.all(20),
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            BlocBuilder<LoadQuotesBloc, LoadQuotesState>(
              buildWhen: (_, y) => y is LoadedQuotes,
              builder: (context, state) {
                return state is LoadedQuotes
                    ? Text(
                        state.quotes[index]?.author ?? '--',
                        style: Constant.header1ExtraBold,
                      )
                    : const SizedBox();
              },
            ),
            const SizedBox(height: 20),
            BlocBuilder<LoadQuotesBloc, LoadQuotesState>(
              buildWhen: (x, y) {
                var r = false;
                if (y is LoadedQuotes) {
                  if (x.quotes[index]?.content != y.quotes[index]?.content) {
                    r = true;
                  }
                }
                return r;
              },
              builder: (context, state) {
                debugPrint('build content of index: $index');
                return state is LoadedQuotes
                    ? Text(
                        state.quotes[index]?.content ?? '--',
                        style: Constant.headlineBold,
                      )
                    : const SizedBox();
              },
            ),
          ],
        ),
      ),
    );
  }
}
