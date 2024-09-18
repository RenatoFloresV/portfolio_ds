import 'package:flutter/material.dart';
import 'package:portfolio_ds/lib.dart';

class DsBtnElevated extends StatelessWidget {
  const DsBtnElevated({
    super.key,
    required this.label,
    required this.onPressed,
    this.onLongPress,
    this.onHover,
    this.onFocusChange,
    this.isExpanded = false,
  });

  final String label;
  final void Function()? onPressed;
  final void Function()? onLongPress;
  final void Function(bool)? onHover;
  final void Function(bool)? onFocusChange;
  final bool isExpanded;

  @override
  Widget build(BuildContext context) {
    Widget button = ElevatedButton(
      key: key,
      onPressed: onPressed,
      onLongPress: onLongPress,
      onHover: onHover,
      onFocusChange: onFocusChange,
      child: Text(label),
    );

    if (isExpanded) {
      button = button.expandedBox();
    }

    return button;
  }
}
