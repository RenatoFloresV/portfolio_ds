import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:portfolio_ds/portfolio_ds.dart';

import 'modal/modal_bottom.dart';
import 'modal/modal_container.dart';

enum DsDatePickerStyle {
  material,
  cupertino,
}

class DsDateField extends StatelessWidget {
  final TextEditingController controller;
  final DateTime initialDate;
  final DateTime firstDate;
  final DateTime lastDate;
  final void Function(DateTime?) onDatePicked;
  final BorderRadius? borderRadius;
  final FormFieldValidator<String>? validator;
  final Widget? suffixIcon;
  final String? hintText;
  final String? title;
  final DsDatePickerStyle pickerStyle;
  final bool enabled;
  final String? initialValue;

  const DsDateField({
    Key? key,
    required this.initialDate,
    required this.firstDate,
    required this.lastDate,
    required this.onDatePicked,
    required this.controller,
    this.initialValue,
    this.borderRadius,
    this.validator,
    this.suffixIcon,
    this.hintText,
    this.title,
    this.pickerStyle = DsDatePickerStyle.material,
    this.enabled = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: enabled
          ? () async {
              final DateTime? picked = await _showDatePicker(context);

              if (picked != null) {
                controller.text = DateFormat.yMd('es_ES').format(picked);
              }
              onDatePicked(picked);
            }
          : null,
      child: DsTextField(
        label: title ?? '',
        controller: controller,
        style: context.bodyLarge,
        suffixIcon: suffixIcon ??
            const Icon(
              Icons.calendar_today_outlined,
              size: 15,
            ),
        enable: false,
        validator: validator,
        helperText: hintText,
      ),
    );
  }

  Future<DateTime?> _showDatePicker(BuildContext context) {
    if (pickerStyle == DsDatePickerStyle.cupertino) {
      var dateSelected = initialDate;
      return DsModalBottom.show<DateTime?>(
        context: context,
        backgroundColor: DsColors.onTertiary,
        child: DsModalContainer(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: DsSpacing.lg),
                child: Row(
                  children: [
                    Icon(
                      Icons.calendar_month_outlined,
                      color: DsColors.onTertiary,
                    ),
                    const SizedBox(width: DsSpacing.sm),
                    DsText(
                      title ?? '',
                      style: context.headlineSmall?.copyWith(
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(
                  left: DsSpacing.md,
                  right: DsSpacing.md,
                  top: DsSpacing.sl,
                  bottom: DsSpacing.md,
                ),
                height: MediaQuery.of(context).size.height * 0.3,
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.vertical(
                    top: Radius.circular(10.0),
                  ),
                  color: DsColors.white,
                ),
                child: CupertinoDatePicker(
                  maximumDate: lastDate,
                  minimumDate: firstDate,
                  initialDateTime: initialDate,
                  mode: CupertinoDatePickerMode.date,
                  onDateTimeChanged: (value) {
                    dateSelected = value;
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 4),
                child: Row(
                  children: [
                    const Spacer(),
                    DsBtnFilled(
                      label: 'Aceptar',
                      onPressed: () {
                        Navigator.pop(context, dateSelected);
                      },
                    ),
                  ],
                ),
              ),
              const SizedBox(height: DsSpacing.md),
            ],
          ),
        ),
      );
    } else {
      return showDatePicker(
        locale: const Locale('es', 'ES'),
        context: context,
        helpText: hintText,
        cancelText: 'Cancelar',
        confirmText: 'Aceptar',
        initialDate: initialDate,
        firstDate: firstDate,
        lastDate: lastDate,
      );
    }
  }
}
