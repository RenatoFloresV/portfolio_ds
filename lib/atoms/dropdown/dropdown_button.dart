import 'package:flutter/material.dart';

class DsDropdownButton extends StatelessWidget {
  const DsDropdownButton({
    super.key,
    required this.items,
    required this.onChanged,
    required this.value,
  });

  final List<DropdownMenuItem<String>> items;
  final void Function(String?)? onChanged;
  final String value;

  @override
  Widget build(BuildContext context) {
    return DropdownButton(
      items: items,
      value: value,
      onChanged: onChanged,
    );
  }
}
