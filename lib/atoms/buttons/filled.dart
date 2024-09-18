import 'package:flutter/material.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:portfolio_ds/portfolio_ds.dart';

class DsBtnFilled extends StatelessWidget {
  const DsBtnFilled({
    super.key,
    required this.label,
    required this.onPressed,
    this.onLongPress,
    this.onHover,
    this.onFocusChange,
    this.isExpanded = false,
    this.height,
    this.backgroundColor,
  });

  final String label;
  final void Function()? onPressed;
  final void Function()? onLongPress;
  final void Function(bool)? onHover;
  final void Function(bool)? onFocusChange;
  final bool isExpanded;
  final double? height;
  final Color? backgroundColor;

  @override
  Widget build(BuildContext context) {
    Widget button = SizedBox(
      height: height,
      child: FilledButton(
        key: key,
        style: ButtonStyle(
          visualDensity: VisualDensity.adaptivePlatformDensity,
          backgroundColor: WidgetStateProperty.resolveWith(
            (states) => backgroundColor,
          ),
          shape: WidgetStateProperty.resolveWith(
            (states) => RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(
                DsSpacing.md,
              ),
            ),
          ),
        ),
        onPressed: onPressed,
        onLongPress: onLongPress,
        onHover: onHover,
        onFocusChange: onFocusChange,
        child: Text(label),
      ),
    );
    if (isExpanded) {
      button = button.expandedBox();
    }

    return button;
  }
}

class DsBtnFilledBottonSheet extends StatelessWidget {
  const DsBtnFilledBottonSheet({
    super.key,
    required this.label,
    required this.onPressed,
  });

  final String label;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return KeyboardVisibilityBuilder(
      builder: (context, isKeyboardVisible) {
        return Padding(
          padding: EdgeInsets.symmetric(
            horizontal: isKeyboardVisible ? DsSpacing.xs : DsSpacing.lg,
          ).copyWith(bottom: isKeyboardVisible ? DsSpacing.sm : DsSpacing.lg),
          child: SizedBox(
            width: double.infinity,
            height: 45,
            child: DsBtnFilled(
              label: label,
              onPressed: onPressed,
            ),
          ),
        );
      },
    );
  }
}
