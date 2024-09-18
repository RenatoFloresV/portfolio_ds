import 'package:flutter/material.dart';
import 'package:portfolio_ds/lib.dart';

class DsModalContainer extends StatelessWidget {
  const DsModalContainer({
    Key? key,
    required this.child,
    this.padding,
    this.height,
  }) : super(key: key);

  final Widget child;
  final EdgeInsetsGeometry? padding;
  final double? height;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Stack(
            children: <Widget>[
              Container(
                padding: const EdgeInsets.only(top: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    const SizedBox(
                      width: 10.0,
                    ),
                    Container(
                      width: 80,
                      height: 5,
                      decoration: const BoxDecoration(
                        color: DsColors.chineseSilver,
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                child: Align(
                  alignment: Alignment.centerRight,
                  child: IconButton(
                    icon: const Icon(Icons.close),
                    color: DsColors.silver,
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                ),
              ),
            ],
          ),
          Container(
            height: height == null ? null : height! - 56,
            padding: padding,
            child: child,
          ),
        ],
      ),
    );
  }
}
