import 'package:flutter/material.dart';

class DsBtnFabExtended extends StatelessWidget {
  const DsBtnFabExtended({
    super.key,
    this.icon,
    required this.label,
    required this.onPressed,
  });

  final Icon? icon;
  final String label;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton.extended(
      key: key,
      onPressed: onPressed,
      icon: icon ?? const Icon(Icons.add),
      label: Text(label),
    );
  }
}
