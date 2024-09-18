import 'package:flutter/material.dart';

class DsBtnFab extends StatelessWidget {
  const DsBtnFab({
    super.key,
    this.icon,
    required this.onPressed,
  });

  final Icon? icon;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      key: key,
      onPressed: onPressed,
      child: icon ?? const Icon(Icons.add),
    );
  }
}
