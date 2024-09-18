import 'package:flutter/material.dart';
import 'package:portfolio_ds/portfolio_ds.dart';
import 'package:shimmer/shimmer.dart';

class PlaceholderGeneric extends StatelessWidget {
  const PlaceholderGeneric({super.key, this.child});

  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: context.colors.outline,
      highlightColor: context.colors.surfaceContainerHighest,
      child: child ??
          const SizedBox(
            height: 16,
            width: double.infinity,
          ),
    );
  }
}
