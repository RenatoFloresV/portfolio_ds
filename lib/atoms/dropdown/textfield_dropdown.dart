import 'package:flutter/material.dart';
import 'package:portfolio_ds/lib.dart';

class DsDropdownFormField extends StatelessWidget {
  const DsDropdownFormField({
    super.key,
    required this.label,
    required this.firstLabel,
    this.placeholder = '',
    required this.items,
    required this.onChanged,
    required this.initialValue,
    this.validator,
  });

  final String label;
  final String firstLabel;
  final String placeholder;
  final List<DsDropdownOption> items;
  final void Function(DsDropdownOption) onChanged;
  final String initialValue;
  final String? Function(String?)? validator;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        DsText(
          label,
          style: context.titleSmall.bold(),
        ),
        DsVerticalSpace.sm,
        DropdownButtonFormField(
          icon: const Icon(Icons.arrow_drop_down),
          validator: validator,
          items: <DropdownMenuItem<String>>[
            DropdownMenuItem(
              value: '',
              enabled: false,
              child: DsText(
                firstLabel,
                style: context.titleMedium.color(context.colorScheme?.outline),
              ),
            ),
            for (DsDropdownOption item in items)
              DropdownMenuItem(
                key: Key(item.id),
                value: item.id,
                child: DsText(
                  item.label,
                ),
              ),
          ],
          value: initialValue,
          onChanged: (uuid) {
            if (uuid == null) return;

            final option = items.where((item) => item.id == uuid);
            if (option.isEmpty) return;

            onChanged(option.first);
          },
          decoration: InputDecoration(
            suffixIconConstraints: const BoxConstraints(
              maxHeight: 40,
              minHeight: 40,
            ),
            isDense: true,
            labelText: null,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(
                DsSpacing.md,
              ),
            ),
            errorMaxLines: 10,
          ),
        ),
      ],
    );
  }
}
