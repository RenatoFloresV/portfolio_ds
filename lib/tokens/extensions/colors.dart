import 'package:flutter/material.dart';

extension DsBuildContextColor on BuildContext {
  ColorScheme? get colorScheme => Theme.of(this).colorScheme;
}
