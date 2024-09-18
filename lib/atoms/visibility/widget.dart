import 'package:flutter/material.dart';

class DsVisibility extends StatelessWidget {
  const DsVisibility({
    super.key,
    required this.visible,
    required this.child,
    this.replacement,
  });

  final bool visible;
  final Widget child;
  final Widget? replacement;

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: visible,
      replacement: replacement ?? const SizedBox.shrink(),
      child: visible ? child : const SizedBox.shrink(),
    );
  }
}
