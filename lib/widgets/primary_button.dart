import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quotable_bloc/constant.dart';

enum ButtonState {
  disabled,
  initial,
  loading,
}

class PrimaryButton extends StatelessWidget {
  const PrimaryButton({
    required this.label,
    required this.state,
    required this.action,
    this.height,
    this.width,
    this.image,
    this.margin,
    super.key,
  });
  final String label;
  final double? height;
  final double? width;
  final void Function()? action;
  final ButtonState state;
  final String? image;
  final EdgeInsets? margin;
  @override
  Widget build(BuildContext context) {
    const duration = Duration(milliseconds: 300);
    return Align(
      alignment: Alignment.center,
      child: AnimatedContainer(
        margin: margin,
        duration: duration,
        height: state == ButtonState.loading ? height : height,
        width: state == ButtonState.loading ? height : width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(
            state == ButtonState.loading ? 21.5 : 0,
          ),
        ),
        child: AnimatedOpacity(
          duration: duration,
          opacity: state == ButtonState.disabled ? 0.3 : 1,
          child: ElevatedButton(
            style: ButtonStyle(
              padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                const EdgeInsets.only(top: 5, bottom: 5, left: 20, right: 20),
              ),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(
                    state == ButtonState.loading ? 21.5 : 0,
                  ),
                ),
              ),
              backgroundColor: MaterialStateProperty.all<Color>(
                state == ButtonState.disabled
                    ? Constant.grayScale[6]
                    : Constant.kMainPrimayColor,
              ),
            ),
            onPressed:
                state != ButtonState.disabled && state != ButtonState.loading
                    ? action
                    : null,
            child: AnimatedSwitcher(
              duration: duration,
              child: buttonBody(state, context),
            ),
          ),
        ),
      ),
    );
  }

  Widget buttonBody(ButtonState state, BuildContext context) {
    if (state == ButtonState.initial || state == ButtonState.disabled) {
      return FittedBox(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Visibility(
              visible: image != null,
              child: image != null
                  ? Image.asset(
                      image!,
                      height: 20,
                      width: 20,
                    )
                  : const SizedBox(),
            ),
            const SizedBox(width: 2),
            Text(
              label,
              style: Constant.headlineBold.copyWith(
                color: Theme.of(context).primaryColorDark,
              ),
            ),
          ],
        ),
      );
    }

    if (state == ButtonState.loading) {
      return CupertinoActivityIndicator(
        color: Theme.of(context).primaryColorDark,
      );
    } else {
      return const SizedBox();
    }
  }
}
