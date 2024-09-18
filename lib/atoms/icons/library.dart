import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:portfolio_ds/portfolio_ds.dart';

class DsIcon extends StatelessWidget {
  const DsIcon({
    required this.icon,
    super.key,
    this.size = 35,
    this.color,
    this.package = 'portfolio_ds',
  });
  final DsIconData icon;
  final double size;
  final Color? color;
  final String package;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: size,
      height: size,
      child: SvgPicture.asset(
        icon.path,
        package: package,
        colorFilter: color == null
            ? null
            : ColorFilter.mode(color ?? DsColors.black, BlendMode.srcIn),
        semanticsLabel: icon.semantic,
        placeholderBuilder: (context) => const Placeholder(
          fallbackHeight: 50,
          fallbackWidth: 50,
        ),
      ),
    );
  }
}
