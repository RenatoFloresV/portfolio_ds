import 'package:flutter/material.dart';
import 'package:portfolio_ds/lib.dart';

class DsBanner {
  static failure(
    BuildContext context, {
    String title = '',
    String message = '',
  }) async {
    _showBanner(
      context: context,
      title: title,
      message: message,
      background: context.colors.errorContainer,
      color: context.colors.error,
      icon: Icons.error,
    );
  }

  static success(
    BuildContext context, {
    String title = '',
    String message = '',
  }) async {
    _showBanner(
      context: context,
      title: title,
      message: message,
      background: context.colors.onSuccessContainer,
      color: context.colors.successContainer,
      icon: Icons.check_circle,
    );
  }

  static information(
    BuildContext context, {
    String title = '',
    String message = '',
  }) async {
    _showBanner(
      context: context,
      title: title,
      message: message,
      background: context.colors.onInformation,
      color: context.colors.information,
      icon: Icons.info,
    );
  }

  static warning(
    BuildContext context, {
    required String title,
    String message = '',
  }) async {
    _showBanner(
      context: context,
      title: title,
      message: message,
      background: context.colors.warningContainer,
      color: context.colors.onWarningContainer,
      icon: Icons.warning,
    );
  }

  static _showBanner({
    required BuildContext context,
    Color? background,
    required IconData icon,
    Color? color,
    String title = '',
    String message = '',
  }) async {
    ScaffoldMessenger.of(context).clearMaterialBanners();
    final controller = ScaffoldMessenger.of(context).showMaterialBanner(
      MaterialBanner(
        dividerColor: context.colors.surface,
        backgroundColor: background,
        content: ListTile(
          leading: Icon(icon, color: color),
          title: title.isEmpty
              ? DsText(
                  message,
                  style: context.bodySmall.color(
                    color,
                  ),
                )
              : DsText(
                  title,
                  style: context.titleSmall.bold().color(
                        color,
                      ),
                ),
          subtitle: title.isEmpty
              ? null
              : DsText(
                  message,
                  style: context.bodySmall.color(
                    color,
                  ),
                ),
        ),
        actions: [
          DsBtnText(
            label: 'Aceptar',
            style: context.bodyMedium.color(
              color,
            ),
            onPressed: () {
              ScaffoldMessenger.of(context).clearMaterialBanners();
            },
          )
        ],
      ),
    );
    Future.microtask(
      () => Future.delayed(const Duration(seconds: 5)).then(
        (v) => controller.close(),
      ),
    );
  }
}
