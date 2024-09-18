import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:portfolio_ds/lib.dart';

class DsTextField extends StatefulWidget {
  const DsTextField({
    super.key,
    this.label,
    this.placeholder,
    this.initialValue,
    this.onChanged,
    this.validator,
    this.obscureText = false,
    this.keyboardType = TextInputType.text,
    this.enable = true,
    this.controller,
    this.filled = false,
    this.helperText,
    this.prefixIcon,
    this.suffixIcon,
    this.textInputAction,
    this.focusNode,
    this.autovalidateMode,
    this.onTap,
    this.readOnly = false,
    this.inputFormatters,
    this.errorText,
    this.style,
    this.maxLines = 1,
    this.minLines,
  });

  final String? label;
  final String? placeholder;
  final String? helperText;
  final String? initialValue;
  final Function(String)? onChanged;
  final String? Function(String?)? validator;
  final bool obscureText;
  final bool enable;
  final TextInputType keyboardType;
  final TextEditingController? controller;
  final bool filled;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final TextInputAction? textInputAction;
  final FocusNode? focusNode;
  final AutovalidateMode? autovalidateMode;
  final void Function()? onTap;
  final bool readOnly;
  final List<TextInputFormatter>? inputFormatters;
  final String? errorText;
  final TextStyle? style;
  final int? maxLines;
  final int? minLines;

  @override
  State<DsTextField> createState() => _DsTextFieldState();
}

class _DsTextFieldState extends State<DsTextField> {
  late bool obscureText;

  @override
  void initState() {
    obscureText = widget.obscureText;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        DsText(
          widget.label ?? '',
          style: context.titleSmall.bold(),
        ),
        DsVerticalSpace.sm,
        TextFormField(
          maxLines: widget.maxLines,
          minLines: widget.minLines,
          style: widget.style,
          inputFormatters: widget.inputFormatters,
          readOnly: widget.readOnly,
          onTap: widget.onTap,
          onTapOutside: (event) {
            FocusManager.instance.primaryFocus?.unfocus();
          },
          focusNode: widget.focusNode,
          autovalidateMode:
              widget.autovalidateMode ?? AutovalidateMode.onUserInteraction,
          controller: widget.controller,
          enabled: widget.enable,
          initialValue: widget.initialValue,
          onChanged: widget.onChanged,
          validator: widget.validator,
          obscureText: obscureText,
          keyboardType: widget.keyboardType,
          textInputAction: widget.textInputAction,
          decoration: InputDecoration(
            errorText: widget.errorText,
            prefixIcon: widget.prefixIcon,
            suffixIcon: widget.obscureText
                ? PasswordSuffix(
                    onPressed: () {
                      setState(() {
                        obscureText = !obscureText;
                      });
                    },
                  )
                : widget.suffixIcon,
            filled: widget.filled,
            isDense: true,
            labelText: null,
            hintText: widget.placeholder,
            helperText: widget.helperText,
            fillColor: context.colors.surfaceContainer,
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

class PasswordSuffix extends StatelessWidget {
  const PasswordSuffix({
    super.key,
    this.onPressed,
    this.backgroundColor,
  });

  final void Function()? onPressed;
  final Color? backgroundColor;

  @override
  Widget build(BuildContext context) {
    return DsBtnIcon(
      onPressed: onPressed,
      icon: DsIcons.about,
      iconColor: backgroundColor ?? context.colorScheme?.onSurface,
    );
  }
}
