import 'package:flutter/material.dart';

extension DsWidgetExtension on Widget {
  Widget expandedBox() {
    return SizedBox(
      width: double.infinity,
      child: this,
    );
  }

  Widget widthBox(double width) {
    return SizedBox(
      width: width,
      child: this,
    );
  }

  Widget heightBox(double height) {
    return SizedBox(
      height: height,
      child: this,
    );
  }
}
