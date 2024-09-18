import 'package:flutter/material.dart';
import 'package:portfolio_ds/portfolio_ds.dart';

class PlaceholderTextField extends StatelessWidget {
  const PlaceholderTextField({
    super.key,
    this.placeholder = '',
    this.label = '',
  });

  final String placeholder;
  final String label;

  @override
  Widget build(BuildContext context) {
    return PlaceholderGeneric(
      child: Column(
        children: [
          DsTextField(
              readOnly: true,
              label: label,
              placeholder: placeholder,
              validator: (s) => ''),
          DsVerticalSpace.lg,
        ],
      ),
    );
  }
}
