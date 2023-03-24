import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quotable_bloc/constant.dart';

class LoadingState extends StatelessWidget {
  const LoadingState({
    super.key,
    required this.message,
  });
  final String message;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CupertinoActivityIndicator(
            color: Theme.of(context).primaryColor,
          ),
          const SizedBox(height: 20),
          Text(
            message,
            textAlign: TextAlign.center,
            style: Constant.subheadRegular.copyWith(
              color: Theme.of(context).primaryColor,
            ),
          ),
        ],
      ),
    );
  }
}
