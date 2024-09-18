import 'package:flutter/material.dart';

extension DsTextStyle on TextStyle? {
  TextStyle? bold() {
    if (this == null) return this;

    return this!.copyWith(
      fontWeight: FontWeight.bold,
    );
  }

  TextStyle? fontWeight(FontWeight fontWeight) {
    if (this == null) return this;
    return this!.copyWith(
      fontWeight: fontWeight,
    );
  }

  TextStyle? color(Color? color) {
    if (this == null) return this;
    return this!.copyWith(
      color: color,
    );
  }
}
