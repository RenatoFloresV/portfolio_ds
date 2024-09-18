import 'package:flutter/material.dart';
import 'package:portfolio_ds/portfolio_ds.dart';

class DsPlaceholderBox extends StatelessWidget {
  const DsPlaceholderBox({
    super.key,
    this.width = 50.0,
    this.height = 50.0,
  });

  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return PlaceholderGeneric(
      child: SizedBox(
        height: context.height(height),
        width: context.width(width),
      ),
    );
  }
}

extension ContextExtension on BuildContext {
  double width(double value) => MediaQuery.of(this).size.width * value / 100;
  double height(double value) => MediaQuery.of(this).size.height * value / 100;
}
