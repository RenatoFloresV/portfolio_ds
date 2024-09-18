import 'package:flutter/material.dart';
import 'package:portfolio_ds/portfolio_ds.dart';

class DsTextTheme {
  const DsTextTheme._();

  static TextTheme textTheme(TextTheme? theme) =>
      DsTypography.fontTextTheme(theme);
}
