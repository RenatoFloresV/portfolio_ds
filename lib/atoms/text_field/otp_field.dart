import 'package:flutter/material.dart';
import 'package:portfolio_ds/portfolio_ds.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class DsOTPField extends StatelessWidget {
  const DsOTPField({
    super.key,
    this.lenght = 6,
    this.onChanged,
    this.beforeTextPaste,
    this.onCompleted,
    this.controller,
    this.focus,
  });

  final void Function(String)? onChanged;
  final bool Function(String?)? beforeTextPaste;
  final void Function(String)? onCompleted;
  final int lenght;
  final TextEditingController? controller;
  final FocusNode? focus;

  @override
  Widget build(BuildContext context) {
    return PinCodeTextField(
      focusNode: focus,
      controller: controller,
      length: lenght,
      autoFocus: true,
      mainAxisAlignment: MainAxisAlignment.center,
      obscureText: false,
      cursorColor: context.colorScheme?.primary,
      animationType: AnimationType.fade,
      keyboardType: TextInputType.number,
      textStyle: context.displaySmall,
      pinTheme: PinTheme(
        shape: PinCodeFieldShape.underline,
        borderRadius: BorderRadius.circular(5),
        fieldHeight: 60,
        fieldWidth: 35,
        fieldOuterPadding: const EdgeInsets.symmetric(horizontal: DsSpacing.sm),
        activeColor: context.colorScheme?.primary,
        selectedColor: context.colorScheme?.primary,
        inactiveColor: context.colorScheme?.primary,
        disabledColor: context.colorScheme?.surface,
        activeFillColor: context.colorScheme?.surface,
        selectedFillColor: context.colorScheme?.surface,
        inactiveFillColor: context.colorScheme?.surface,
        errorBorderColor: context.colorScheme?.error,
      ),
      enableActiveFill: true,
      onCompleted: onCompleted,
      onChanged: onChanged,
      beforeTextPaste: beforeTextPaste,
      appContext: context,
    );
  }
}
