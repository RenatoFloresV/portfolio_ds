import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfolio_ds/portfolio_ds.dart';

class DsLoading {
  const DsLoading._();
  static void show(BuildContext context, {String message = ''}) => showDialog(
        context: context,
        barrierDismissible: false,
        useSafeArea: false,
        useRootNavigator: false,
        builder: (ctx) => Material(
          color: DsColors.black.withOpacity(.6),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CupertinoActivityIndicator(
                radius: 20,
                color: DsColors.onPrimary,
              ),
              if (message.isNotEmpty) ...[
                DsVerticalSpace.sm,
                Text(
                  message,
                  style: context.labelLarge.color(DsColors.white),
                )
              ]
            ],
          ),
        ),
      );
}
