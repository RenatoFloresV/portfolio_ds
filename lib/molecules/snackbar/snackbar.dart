import 'package:flutter/material.dart';
import 'package:portfolio_ds/lib.dart';
import 'package:portfolio_ds/portfolio_ds.dart';

class DsSnackBar {
  const DsSnackBar._();

  static void failure(
    BuildContext context, {
    required String title,
    String message = '',
  }) {
    final snackBar = _alert(
      context,
      title: title,
      icon: Icons.error,
      background: context.colorScheme?.errorContainer,
      color: context.colorScheme?.error,
      message: message,
      onClose: () => ScaffoldMessenger.of(context).hideCurrentSnackBar(),
    );

    ScaffoldMessenger.of(context)
      ..hideCurrentSnackBar()
      ..showSnackBar(snackBar);
  }

  static void success(
    BuildContext context, {
    required String title,
    String message = '',
  }) {
    final snackBar = _alert(
      context,
      background: PortfolioMaterialTheme.success.light.onColorContainer,
      color: PortfolioMaterialTheme.success.light.colorContainer,
      icon: Icons.check_circle,
      title: title,
      message: message,
      onClose: () => ScaffoldMessenger.of(context).hideCurrentSnackBar(),
    );

    ScaffoldMessenger.of(context)
      ..hideCurrentSnackBar()
      ..showSnackBar(snackBar);
  }

  static void info(
    BuildContext context, {
    required String title,
    String message = '',
  }) {
    final snackBar = _alert(
      context,
      title: title,
      icon: Icons.info,
      background: DsColors.primary,
      message: message,
      onClose: () => ScaffoldMessenger.of(context).hideCurrentSnackBar(),
    );

    ScaffoldMessenger.of(context)
      ..hideCurrentSnackBar()
      ..showSnackBar(snackBar);
  }

  static void warning(
    BuildContext context, {
    required String title,
    String message = '',
  }) {
    final snackBar = _alert(
      context,
      title: title,
      icon: Icons.warning,
      background: DsColors.warning,
      message: message,
      onClose: () => ScaffoldMessenger.of(context).hideCurrentSnackBar(),
    );

    ScaffoldMessenger.of(context)
      ..hideCurrentSnackBar()
      ..showSnackBar(snackBar);
  }

  static SnackBar _alert(
    BuildContext context, {
    required String title,
    required IconData icon,
    Color? background,
    Color? color,
    String message = '',
    void Function()? onClose,
  }) =>
      SnackBar(
        duration: const Duration(seconds: 5),
        elevation: 0,
        hitTestBehavior: HitTestBehavior.opaque,
        behavior: SnackBarBehavior.fixed,
        backgroundColor: Colors.transparent,
        content: Card(
          color: background,
          // padding: const EdgeInsets.all(10).copyWith(bottom: 0),
          // decoration: BoxDecoration(
          //   borderRadius: BorderRadius.circular(DsSpacing.md),
          //   color: background,
          // ),
          child: ListTile(
            leading: Icon(icon, color: color),
            title: title.isEmpty
                ? null
                : DsText(
                    title,
                    style: context.titleSmall.bold().color(
                          color,
                        ),
                  ),
            subtitle: DsText(
              message,
              style: context.bodySmall.color(
                color,
              ),
            ),
          ),
        ),
      );
}
