import 'package:easy_rich_text/easy_rich_text.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class DsRichText extends StatelessWidget {
  const DsRichText(
    this.text, {
    super.key,
    this.style,
    this.strutStyle,
    this.textAlign,
    this.textDirection,
    this.locale,
    this.softWrap,
    this.overflow,
    this.textScaleFactor,
    this.maxLines,
    this.semanticsLabel,
    this.textWidthBasis,
    this.textHeightBehavior,
    this.selectionColor,
    this.tags = const [],
  });
  final String text;
  final TextStyle? style;
  final StrutStyle? strutStyle;
  final TextAlign? textAlign;
  final TextDirection? textDirection;
  final Locale? locale;
  final bool? softWrap;
  final TextOverflow? overflow;
  final double? textScaleFactor;
  final int? maxLines;
  final String? semanticsLabel;
  final TextWidthBasis? textWidthBasis;
  final TextHeightBehavior? textHeightBehavior;
  final Color? selectionColor;
  final List<DsRichOption> tags;

  @override
  Widget build(BuildContext context) {
    return EasyRichText(
      text,
      defaultStyle: style,
      strutStyle: strutStyle,
      textAlign: textAlign ?? TextAlign.start,
      textDirection: textDirection,
      locale: locale,
      softWrap: softWrap ?? true,
      overflow: overflow ?? TextOverflow.clip,
      textScaleFactor: textScaleFactor ?? 1.0,
      maxLines: maxLines,
      semanticsLabel: semanticsLabel,
      textWidthBasis: textWidthBasis ?? TextWidthBasis.parent,
      textHeightBehavior: textHeightBehavior,
      selectionColor: selectionColor,
      patternList: [
        for (DsRichOption item in tags)
          EasyRichTextPattern(
            targetString: item.tag,
            style: item.style,
            recognizer: TapGestureRecognizer()..onTap = item.onTap,
          ),
      ],
    );
  }
}

class DsRichOption {
  const DsRichOption({
    required this.tag,
    required this.style,
    required this.onTap,
  });

  final String tag;
  final TextStyle? style;
  final void Function()? onTap;
}
