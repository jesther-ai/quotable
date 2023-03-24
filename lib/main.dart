import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quotable_bloc/blocs/load_quotes/load_quotes_bloc.dart';
import 'package:quotable_bloc/quote_repository.dart';

import 'quote_screen/quote_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return RepositoryProvider(
      create: (context) => QuoteRepository(),
      child: MultiBlocProvider(
        providers: [...AllActiveBlocProvider.list],
        child: MaterialApp(
          title: 'List of Quotes',
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          home: const QuoteScreen(),
        ),
      ),
    );
  }
}

class AllActiveBlocProvider {
  static List list = [
    BlocProvider<LoadQuotesBloc>(
      create: (BuildContext context) {
        return LoadQuotesBloc(
          quoteRepository: RepositoryProvider.of<QuoteRepository>(context),
        )..add(
            const OnInitialLoadQuotes(),
          );
      },
    ),
  ];
}
