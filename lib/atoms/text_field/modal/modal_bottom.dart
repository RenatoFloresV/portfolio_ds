import 'package:flutter/material.dart';

class DsModalBottom {
  static Future<T?> show<T>({
    required BuildContext context,
    Widget? child,
    ShapeBorder? shape,
    Color? backgroundColor,
    RouteSettings? routeSettings,
    bool useRootNavigator = true,
    bool isDismissible = true,
    bool enableDrag = true,
  }) async {
    return await showModalBottomSheet<T>(
      routeSettings: routeSettings,
      isScrollControlled: true,
      useRootNavigator: useRootNavigator,
      isDismissible: isDismissible,
      context: context,
      enableDrag: enableDrag,
      shape: shape ??
          const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(12.0),
              topLeft: Radius.circular(12.0),
            ),
          ),
      backgroundColor: backgroundColor ?? Colors.white,
      builder: (context) {
        return AnimatedPadding(
          padding: MediaQuery.of(context).viewInsets,
          duration: const Duration(milliseconds: 100),
          curve: Curves.decelerate,
          child: child,
        );
      },
    );
  }
}
