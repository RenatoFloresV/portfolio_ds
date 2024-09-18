import 'package:flutter/material.dart';
import 'package:portfolio_ds/portfolio_ds.dart';

class DsBtnIcon extends StatelessWidget {
  const DsBtnIcon({
    required this.onPressed,
    super.key,
    this.icon,
    this.background,
    this.isExpanded = false,
    this.iconColor,
  });

  final DsIconData? icon;
  final void Function()? onPressed;
  final Color? background;
  final bool isExpanded;
  final Color? iconColor;

  @override
  Widget build(BuildContext context) {
    Widget button = IconButton(
      key: key,
      onPressed: onPressed,
      icon: DsIcon(icon: icon ?? DsIcons.about, color: iconColor),
      style: ButtonStyle(
        backgroundColor: WidgetStateProperty.resolveWith(
          (states) => background,
        ),
      ),
    );

    if (isExpanded) {
      button = button.expandedBox();
    }

    return button;
  }
}
