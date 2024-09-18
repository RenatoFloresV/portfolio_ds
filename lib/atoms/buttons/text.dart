import 'package:flutter/material.dart';
import 'package:portfolio_ds/portfolio_ds.dart';

class DsBtnText extends StatelessWidget {
  const DsBtnText({
    super.key,
    required this.label,
    required this.onPressed,
    this.onLongPress,
    this.onHover,
    this.onFocusChange,
    this.isExpanded = false,
    this.style,
  });

  final String label;
  final void Function()? onPressed;
  final void Function()? onLongPress;
  final void Function(bool)? onHover;
  final void Function(bool)? onFocusChange;
  final bool isExpanded;
  final TextStyle? style;

  @override
  Widget build(BuildContext context) {
    Widget button = TextButton(
      key: key,
      onPressed: onPressed,
      onLongPress: onLongPress,
      onHover: onHover,
      onFocusChange: onFocusChange,
      child: Text(
        label,
        style: style,
      ),
    );

    if (isExpanded) {
      button = button.expandedBox();
    }

    return button;
  }
}
