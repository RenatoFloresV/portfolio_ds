import 'package:flutter/material.dart';

class DsColors {
  static const Color seed = Color.fromRGBO(55, 71, 79, 1); // Azul grisáceo

  static ColorScheme get colorScheme => ColorScheme.fromSeed(
        seedColor: DsColors.seed,
        brightness: Brightness.light,
      );

  static ColorScheme get colorSchemeDark => ColorScheme.fromSeed(
        seedColor: DsColors.seed,
        brightness: Brightness.dark,
      );

  static ColorScheme currentSchemeOf(BuildContext context) =>
      Theme.of(context).colorScheme;

  static Color black = const Color(0x00000000);
  static Color white = const Color(0xFFFFFFFF);
  static Color warning = const Color.fromRGBO(255, 152, 0, 1); // Naranja cálido
  static Color info = const Color.fromARGB(255, 10, 52, 96);
  static Color success = const Color.fromRGBO(76, 175, 80, 1); // Verde suave
  static Color primary = const Color.fromRGBO(30, 144, 255, 1); // Azul intenso
  static Color onPrimary = Colors.white;
  static Color primaryContainer = DsColors.colorScheme.primaryContainer;
  static Color onPrimaryContainer = DsColors.colorScheme.onPrimaryContainer;

  static Color secondary = const Color.fromRGBO(245, 245, 245, 1); // Gris claro
  static Color onSecondary = Colors.black;
  static Color secondaryContainer = DsColors.colorScheme.secondaryContainer;
  static Color onSecondaryContainer = DsColors.colorScheme.onSecondaryContainer;

  static Color tertiary = DsColors.colorScheme.tertiary;
  static Color onTertiary = DsColors.colorScheme.onTertiary;
  static Color tertiaryContainer = DsColors.colorScheme.tertiaryContainer;
  static Color onTertiaryContainer = DsColors.colorScheme.onTertiaryContainer;

  static Color error = const Color.fromRGBO(211, 47, 47, 1); // Rojo suave
  static Color errorContainer = DsColors.colorScheme.errorContainer;
  static Color onError = DsColors.colorScheme.onError;
  static Color onErrorContainer = DsColors.colorScheme.onErrorContainer;

  /// chineseSilver = #CCCCCC
  static const Color chineseSilver = Color(0xffCCCCCC);

  /// silver = #aaaaaa
  static const Color silver = Color(0xffaaaaaa);

  /// lotion = #FAFAFA
  static const Color lotion = Color(0xffFAFAFA);
}
