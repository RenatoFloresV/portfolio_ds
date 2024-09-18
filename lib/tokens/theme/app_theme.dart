import "package:flutter/material.dart";
import "package:portfolio_ds/lib.dart";

class PortfolioMaterialTheme {
  const PortfolioMaterialTheme(this.textTheme);

  final TextTheme textTheme;

  static MaterialScheme getColors(BuildContext context) =>
      context.colorScheme?.brightness == Brightness.light
          ? lightScheme()
          : darkScheme();

  static MaterialScheme lightScheme() {
    return MaterialScheme(
      brightness: Brightness.light,
      primary: const Color(0xff005192),
      surfaceTint: const Color(0xff0060ab),
      onPrimary: const Color(0xffffffff),
      primaryContainer: const Color(0xff0076d1),
      onPrimaryContainer: const Color(0xffffffff),
      secondary: const Color(0xff00538c),
      onSecondary: const Color(0xffffffff),
      secondaryContainer: const Color(0xff0578c7),
      onSecondaryContainer: const Color(0xffffffff),
      tertiary: const Color(0xff006687),
      onTertiary: const Color(0xffffffff),
      tertiaryContainer: const Color(0xff7ed4ff),
      onTertiaryContainer: const Color(0xff003d53),
      error: const Color(0xff9e1900),
      onError: const Color(0xffffffff),
      errorContainer: const Color(0xffdf2d09),
      onErrorContainer: const Color(0xffffffff),
      surface: const Color(0xfffcf8f8),
      onSurface: const Color(0xff1c1b1b),
      onSurfaceVariant: const Color(0xff444748),
      outline: const Color(0xff747878),
      outlineVariant: const Color(0xffc4c7c7),
      shadow: const Color(0xff000000),
      scrim: const Color(0xff000000),
      inverseSurface: const Color(0xff313030),
      inversePrimary: const Color(0xffa3c9ff),
      primaryFixed: const Color(0xffd3e3ff),
      onPrimaryFixed: const Color(0xff001c39),
      primaryFixedDim: const Color(0xffa3c9ff),
      onPrimaryFixedVariant: const Color(0xff004883),
      secondaryFixed: const Color(0xffd1e4ff),
      onSecondaryFixed: const Color(0xff001d36),
      secondaryFixedDim: const Color(0xff9ecaff),
      onSecondaryFixedVariant: const Color(0xff00497d),
      tertiaryFixed: const Color(0xffc1e8ff),
      onTertiaryFixed: const Color(0xff001e2b),
      tertiaryFixedDim: const Color(0xff74d1ff),
      onTertiaryFixedVariant: const Color(0xff004d67),
      surfaceDim: const Color(0xffddd9d8),
      surfaceBright: const Color(0xfffcf8f8),
      surfaceContainerLowest: const Color(0xffffffff),
      surfaceContainerLow: const Color(0xfff7f3f2),
      surfaceContainer: const Color(0xfff1edec),
      surfaceContainerHigh: const Color(0xffebe7e7),
      surfaceContainerHighest: const Color(0xffe5e2e1),
      success: success.light.color,
      onSuccess: success.light.onColor,
      successContainer: success.light.colorContainer,
      onSuccessContainer: success.light.onColorContainer,
      warning: warning.light.color,
      onWarning: warning.light.onColor,
      warningContainer: warning.light.colorContainer,
      onWarningContainer: warning.light.onColorContainer,
      information: information.light.color,
      onInformation: information.light.onColor,
      informationContainer: information.light.colorContainer,
      onInformationContainer: information.light.onColorContainer,
      white: Colors.white,
      yellow: yellow.light.color,
      onYellow: yellow.light.onColor,
      yellowContainer: yellow.light.colorContainer,
      onYellowContainer: yellow.light.onColorContainer,
      textSecondaryLight: textSecondaryLight.light.color,
      textSecondaryDark: textSecondaryDark.dark.color,
    );
  }

  ThemeData light() {
    return theme(lightScheme().toColorScheme());
  }

  static MaterialScheme lightMediumContrastScheme() {
    return MaterialScheme(
      brightness: Brightness.light,
      primary: const Color(0xff00447c),
      surfaceTint: const Color(0xff0060ab),
      onPrimary: const Color(0xffffffff),
      primaryContainer: const Color(0xff0076d1),
      onPrimaryContainer: const Color(0xffffffff),
      secondary: const Color(0xff004576),
      onSecondary: const Color(0xffffffff),
      secondaryContainer: const Color(0xff0578c7),
      onSecondaryContainer: const Color(0xffffffff),
      tertiary: const Color(0xff004861),
      onTertiary: const Color(0xffffffff),
      tertiaryContainer: const Color(0xff007ea6),
      onTertiaryContainer: const Color(0xffffffff),
      error: const Color(0xff861400),
      onError: const Color(0xffffffff),
      errorContainer: const Color(0xffdf2d09),
      onErrorContainer: const Color(0xffffffff),
      surface: const Color(0xfffcf8f8),
      onSurface: const Color(0xff1c1b1b),
      onSurfaceVariant: const Color(0xff404344),
      outline: const Color(0xff5c6060),
      outlineVariant: const Color(0xff787b7c),
      shadow: const Color(0xff000000),
      scrim: const Color(0xff000000),
      inverseSurface: const Color(0xff313030),
      inversePrimary: const Color(0xffa3c9ff),
      primaryFixed: const Color(0xff0076d1),
      onPrimaryFixed: const Color(0xffffffff),
      primaryFixedDim: const Color(0xff005da7),
      onPrimaryFixedVariant: const Color(0xffffffff),
      secondaryFixed: const Color(0xff0578c7),
      onSecondaryFixed: const Color(0xffffffff),
      secondaryFixedDim: const Color(0xff005f9f),
      onSecondaryFixedVariant: const Color(0xffffffff),
      tertiaryFixed: const Color(0xff007ea6),
      onTertiaryFixed: const Color(0xffffffff),
      tertiaryFixedDim: const Color(0xff006384),
      onTertiaryFixedVariant: const Color(0xffffffff),
      surfaceDim: const Color(0xffddd9d8),
      surfaceBright: const Color(0xfffcf8f8),
      surfaceContainerLowest: const Color(0xffffffff),
      surfaceContainerLow: const Color(0xfff7f3f2),
      surfaceContainer: const Color(0xfff1edec),
      surfaceContainerHigh: const Color(0xffebe7e7),
      surfaceContainerHighest: const Color(0xffe5e2e1),
      success: success.lightMediumContrast.color,
      onSuccess: success.lightMediumContrast.onColor,
      successContainer: success.lightMediumContrast.colorContainer,
      onSuccessContainer: success.lightMediumContrast.onColorContainer,
      warning: warning.lightMediumContrast.color,
      onWarning: warning.lightMediumContrast.onColor,
      warningContainer: warning.lightMediumContrast.colorContainer,
      onWarningContainer: warning.lightMediumContrast.onColorContainer,
      information: information.lightMediumContrast.color,
      onInformation: information.lightMediumContrast.onColor,
      informationContainer: information.lightMediumContrast.colorContainer,
      onInformationContainer: information.lightMediumContrast.onColorContainer,
      white: Colors.white,
      yellow: yellow.lightMediumContrast.color,
      onYellow: yellow.lightMediumContrast.onColor,
      yellowContainer: yellow.lightMediumContrast.colorContainer,
      onYellowContainer: yellow.lightMediumContrast.onColorContainer,
      textSecondaryLight: textSecondaryLight.lightMediumContrast.color,
      textSecondaryDark: textSecondaryDark.darkMediumContrast.color,
    );
  }

  ThemeData lightMediumContrast() {
    return theme(lightMediumContrastScheme().toColorScheme());
  }

  static MaterialScheme lightHighContrastScheme() {
    return MaterialScheme(
      brightness: Brightness.light,
      primary: const Color(0xff002344),
      surfaceTint: const Color(0xff0060ab),
      onPrimary: const Color(0xffffffff),
      primaryContainer: const Color(0xff00447c),
      onPrimaryContainer: const Color(0xffffffff),
      secondary: const Color(0xff002341),
      onSecondary: const Color(0xffffffff),
      secondaryContainer: const Color(0xff004576),
      onSecondaryContainer: const Color(0xffffffff),
      tertiary: const Color(0xff002634),
      onTertiary: const Color(0xffffffff),
      tertiaryContainer: const Color(0xff004861),
      onTertiaryContainer: const Color(0xffffffff),
      error: const Color(0xff4a0700),
      onError: const Color(0xffffffff),
      errorContainer: const Color(0xff861400),
      onErrorContainer: const Color(0xffffffff),
      surface: const Color(0xfffcf8f8),
      onSurface: const Color(0xff000000),
      onSurfaceVariant: const Color(0xff212525),
      outline: const Color(0xff404344),
      outlineVariant: const Color(0xff404344),
      shadow: const Color(0xff000000),
      scrim: const Color(0xff000000),
      inverseSurface: const Color(0xff313030),
      inversePrimary: const Color(0xffe3ecff),
      primaryFixed: const Color(0xff00447c),
      onPrimaryFixed: const Color(0xffffffff),
      primaryFixedDim: const Color(0xff002d56),
      onPrimaryFixedVariant: const Color(0xffffffff),
      secondaryFixed: const Color(0xff004576),
      onSecondaryFixed: const Color(0xffffffff),
      secondaryFixedDim: const Color(0xff002e52),
      onSecondaryFixedVariant: const Color(0xffffffff),
      tertiaryFixed: const Color(0xff004861),
      onTertiaryFixed: const Color(0xffffffff),
      tertiaryFixedDim: const Color(0xff003143),
      onTertiaryFixedVariant: const Color(0xffffffff),
      surfaceDim: const Color(0xffddd9d8),
      surfaceBright: const Color(0xfffcf8f8),
      surfaceContainerLowest: const Color(0xffffffff),
      surfaceContainerLow: const Color(0xfff7f3f2),
      surfaceContainer: const Color(0xfff1edec),
      surfaceContainerHigh: const Color(0xffebe7e7),
      surfaceContainerHighest: const Color(0xffe5e2e1),
      success: success.lightHighContrast.color,
      onSuccess: success.lightHighContrast.onColor,
      successContainer: success.lightHighContrast.colorContainer,
      onSuccessContainer: success.lightHighContrast.onColorContainer,
      warning: warning.lightHighContrast.color,
      onWarning: warning.lightHighContrast.onColor,
      warningContainer: warning.lightHighContrast.colorContainer,
      onWarningContainer: warning.lightHighContrast.onColorContainer,
      information: information.lightHighContrast.color,
      onInformation: information.lightHighContrast.onColor,
      informationContainer: information.lightHighContrast.colorContainer,
      onInformationContainer: information.lightHighContrast.onColorContainer,
      white: Colors.white,
      yellow: yellow.lightHighContrast.color,
      onYellow: yellow.lightHighContrast.onColor,
      yellowContainer: yellow.lightHighContrast.colorContainer,
      onYellowContainer: yellow.lightHighContrast.onColorContainer,
      textSecondaryLight: textSecondaryLight.lightMediumContrast.color,
      textSecondaryDark: textSecondaryDark.darkMediumContrast.color,
    );
  }

  ThemeData lightHighContrast() {
    return theme(lightHighContrastScheme().toColorScheme());
  }

  static MaterialScheme darkScheme() {
    return MaterialScheme(
      brightness: Brightness.dark,
      primary: const Color(0xffa3c9ff),
      surfaceTint: const Color(0xffa3c9ff),
      onPrimary: const Color(0xff00315c),
      primaryContainer: const Color(0xff006fc4),
      onPrimaryContainer: const Color(0xffffffff),
      secondary: const Color(0xff9ecaff),
      onSecondary: const Color(0xff003258),
      secondaryContainer: const Color(0xff0578c7),
      onSecondaryContainer: const Color(0xffffffff),
      tertiary: const Color(0xffc8eaff),
      onTertiary: const Color(0xff003548),
      tertiaryContainer: const Color(0xff59c7f9),
      onTertiaryContainer: const Color(0xff003245),
      error: const Color(0xffffb4a4),
      onError: const Color(0xff640c00),
      errorContainer: const Color(0xffdf2d09),
      onErrorContainer: const Color(0xffffffff),
      surface: const Color(0xff141313),
      onSurface: const Color(0xffe5e2e1),
      onSurfaceVariant: const Color(0xffc4c7c7),
      outline: const Color(0xff8e9192),
      outlineVariant: const Color(0xff444748),
      shadow: const Color(0xff000000),
      scrim: const Color(0xff000000),
      inverseSurface: const Color(0xffe5e2e1),
      inversePrimary: const Color(0xff0060ab),
      primaryFixed: const Color(0xffd3e3ff),
      onPrimaryFixed: const Color(0xff001c39),
      primaryFixedDim: const Color(0xffa3c9ff),
      onPrimaryFixedVariant: const Color(0xff004883),
      secondaryFixed: const Color(0xffd1e4ff),
      onSecondaryFixed: const Color(0xff001d36),
      secondaryFixedDim: const Color(0xff9ecaff),
      onSecondaryFixedVariant: const Color(0xff00497d),
      tertiaryFixed: const Color(0xffc1e8ff),
      onTertiaryFixed: const Color(0xff001e2b),
      tertiaryFixedDim: const Color(0xff74d1ff),
      onTertiaryFixedVariant: const Color(0xff004d67),
      surfaceDim: const Color(0xff141313),
      surfaceBright: const Color(0xff3a3939),
      surfaceContainerLowest: const Color(0xff0e0e0e),
      surfaceContainerLow: const Color(0xff1c1b1b),
      surfaceContainer: const Color(0xff201f1f),
      surfaceContainerHigh: const Color(0xff2a2a2a),
      surfaceContainerHighest: const Color(0xff353434),
      success: success.dark.color,
      onSuccess: success.dark.onColor,
      successContainer: success.dark.colorContainer,
      onSuccessContainer: success.dark.onColorContainer,
      warning: warning.dark.color,
      onWarning: warning.dark.onColor,
      warningContainer: warning.dark.colorContainer,
      onWarningContainer: warning.dark.onColorContainer,
      information: information.dark.color,
      onInformation: information.dark.onColor,
      informationContainer: information.dark.colorContainer,
      onInformationContainer: information.dark.onColorContainer,
      white: Colors.white,
      yellow: yellow.dark.color,
      onYellow: yellow.dark.onColor,
      yellowContainer: yellow.dark.colorContainer,
      onYellowContainer: yellow.dark.onColorContainer,
      textSecondaryLight: textSecondaryLight.lightMediumContrast.color,
      textSecondaryDark: textSecondaryDark.darkMediumContrast.color,
    );
  }

  ThemeData dark() {
    return theme(darkScheme().toColorScheme());
  }

  static MaterialScheme darkMediumContrastScheme() {
    return MaterialScheme(
      brightness: Brightness.dark,
      primary: const Color(0xffabcdff),
      surfaceTint: const Color(0xffa3c9ff),
      onPrimary: const Color(0xff001730),
      primaryContainer: const Color(0xff3b93f1),
      onPrimaryContainer: const Color(0xff000000),
      secondary: const Color(0xffa6ceff),
      onSecondary: const Color(0xff00172d),
      secondaryContainer: const Color(0xff3d95e6),
      onSecondaryContainer: const Color(0xff000000),
      tertiary: const Color(0xffc8eaff),
      onTertiary: const Color(0xff003042),
      tertiaryContainer: const Color(0xff59c7f9),
      onTertiaryContainer: const Color(0xff000000),
      error: const Color(0xffffbaac),
      onError: const Color(0xff340300),
      errorContainer: const Color(0xffff5635),
      onErrorContainer: const Color(0xff000000),
      surface: const Color(0xff141313),
      onSurface: const Color(0xfffefaf9),
      onSurfaceVariant: const Color(0xffc8cbcc),
      outline: const Color(0xffa0a3a4),
      outlineVariant: const Color(0xff808484),
      shadow: const Color(0xff000000),
      scrim: const Color(0xff000000),
      inverseSurface: const Color(0xffe5e2e1),
      inversePrimary: const Color(0xff004985),
      primaryFixed: const Color(0xffd3e3ff),
      onPrimaryFixed: const Color(0xff001227),
      primaryFixedDim: const Color(0xffa3c9ff),
      onPrimaryFixedVariant: const Color(0xff003766),
      secondaryFixed: const Color(0xffd1e4ff),
      onSecondaryFixed: const Color(0xff001225),
      secondaryFixedDim: const Color(0xff9ecaff),
      onSecondaryFixedVariant: const Color(0xff003861),
      tertiaryFixed: const Color(0xffc1e8ff),
      onTertiaryFixed: const Color(0xff00131d),
      tertiaryFixedDim: const Color(0xff74d1ff),
      onTertiaryFixedVariant: const Color(0xff003b50),
      surfaceDim: const Color(0xff141313),
      surfaceBright: const Color(0xff3a3939),
      surfaceContainerLowest: const Color(0xff0e0e0e),
      surfaceContainerLow: const Color(0xff1c1b1b),
      surfaceContainer: const Color(0xff201f1f),
      surfaceContainerHigh: const Color(0xff2a2a2a),
      surfaceContainerHighest: const Color(0xff353434),
      success: success.darkMediumContrast.color,
      onSuccess: success.darkMediumContrast.onColor,
      successContainer: success.darkMediumContrast.colorContainer,
      onSuccessContainer: success.darkMediumContrast.onColorContainer,
      warning: warning.darkMediumContrast.color,
      onWarning: warning.darkMediumContrast.onColor,
      warningContainer: warning.darkMediumContrast.colorContainer,
      onWarningContainer: warning.darkMediumContrast.onColorContainer,
      information: information.darkMediumContrast.color,
      onInformation: information.darkMediumContrast.onColor,
      informationContainer: information.darkMediumContrast.colorContainer,
      onInformationContainer: information.darkMediumContrast.onColorContainer,
      white: Colors.white,
      yellow: yellow.darkMediumContrast.color,
      onYellow: yellow.darkMediumContrast.onColor,
      yellowContainer: yellow.darkMediumContrast.colorContainer,
      onYellowContainer: yellow.darkMediumContrast.onColorContainer,
      textSecondaryLight: textSecondaryLight.lightMediumContrast.color,
      textSecondaryDark: textSecondaryDark.darkMediumContrast.color,
    );
  }

  ThemeData darkMediumContrast() {
    return theme(darkMediumContrastScheme().toColorScheme());
  }

  static MaterialScheme darkHighContrastScheme() {
    return MaterialScheme(
      primary: const Color(0xfffbfaff),
      surfaceTint: const Color(0xffa3c9ff),
      onPrimary: const Color(0xff000000),
      primaryContainer: const Color(0xffabcdff),
      onPrimaryContainer: const Color(0xff000000),
      secondary: const Color(0xfffafaff),
      onSecondary: const Color(0xff000000),
      secondaryContainer: const Color(0xffa6ceff),
      onSecondaryContainer: const Color(0xff000000),
      tertiary: const Color(0xfff7fbff),
      onTertiary: const Color(0xff000000),
      tertiaryContainer: const Color(0xff81d5ff),
      onTertiaryContainer: const Color(0xff000000),
      error: const Color(0xfffff9f8),
      onError: const Color(0xff000000),
      errorContainer: const Color(0xffffbaac),
      onErrorContainer: const Color(0xff000000),
      surface: const Color(0xff141313),
      onSurface: const Color(0xffffffff),
      onSurfaceVariant: const Color(0xfff9fbfc),
      outline: const Color(0xffc8cbcc),
      outlineVariant: const Color(0xffc8cbcc),
      shadow: const Color(0xff000000),
      scrim: const Color(0xff000000),
      inverseSurface: const Color(0xffe5e2e1),
      inversePrimary: const Color(0xff002b51),
      primaryFixed: const Color(0xffdae8ff),
      onPrimaryFixed: const Color(0xff000000),
      primaryFixedDim: const Color(0xffabcdff),
      onPrimaryFixedVariant: const Color(0xff001730),
      secondaryFixed: const Color(0xffd9e8ff),
      onSecondaryFixed: const Color(0xff000000),
      secondaryFixedDim: const Color(0xffa6ceff),
      onSecondaryFixedVariant: const Color(0xff00172d),
      tertiaryFixed: const Color(0xffcbebff),
      onTertiaryFixed: const Color(0xff000000),
      tertiaryFixedDim: const Color(0xff81d5ff),
      onTertiaryFixedVariant: const Color(0xff001924),
      surfaceDim: const Color(0xff141313),
      surfaceBright: const Color(0xff3a3939),
      surfaceContainerLowest: const Color(0xff0e0e0e),
      surfaceContainerLow: const Color(0xff1c1b1b),
      surfaceContainer: const Color(0xff201f1f),
      surfaceContainerHigh: const Color(0xff2a2a2a),
      surfaceContainerHighest: const Color(0xff353434),
      brightness: Brightness.dark,
      success: success.darkHighContrast.color,
      onSuccess: success.darkHighContrast.onColor,
      successContainer: success.darkHighContrast.colorContainer,
      onSuccessContainer: success.darkHighContrast.onColorContainer,
      warning: warning.darkHighContrast.color,
      onWarning: warning.darkHighContrast.onColor,
      warningContainer: warning.darkHighContrast.colorContainer,
      onWarningContainer: warning.darkHighContrast.onColorContainer,
      information: information.darkHighContrast.color,
      onInformation: information.darkHighContrast.onColor,
      informationContainer: information.darkHighContrast.colorContainer,
      onInformationContainer: information.darkHighContrast.onColorContainer,
      white: Colors.white,
      yellow: yellow.darkHighContrast.color,
      onYellow: yellow.darkHighContrast.onColor,
      yellowContainer: yellow.darkHighContrast.colorContainer,
      onYellowContainer: yellow.darkHighContrast.onColorContainer,
      textSecondaryLight: textSecondaryLight.lightMediumContrast.color,
      textSecondaryDark: textSecondaryDark.darkMediumContrast.color,
    );
  }

  ThemeData darkHighContrast() {
    return theme(darkHighContrastScheme().toColorScheme());
  }

  ThemeData theme(ColorScheme colorScheme) => ThemeData(
        useMaterial3: true,
        brightness: colorScheme.brightness,
        colorScheme: colorScheme,
        textTheme: textTheme.apply(
          bodyColor: colorScheme.onSurface,
          displayColor: colorScheme.onSurface,
        ),
        scaffoldBackgroundColor: colorScheme.surface,
        canvasColor: colorScheme.surface,
      );

  /// Background
  static const background = ExtendedColor(
    seed: Color(0xfff3f3f3),
    value: Color(0xfff3f3f3),
    light: ColorFamily(
      color: Color(0xff5d5f5f),
      onColor: Color(0xffffffff),
      colorContainer: Color(0xfff5f5f5),
      onColorContainer: Color(0xff515353),
    ),
    lightMediumContrast: ColorFamily(
      color: Color(0xff5d5f5f),
      onColor: Color(0xffffffff),
      colorContainer: Color(0xfff5f5f5),
      onColorContainer: Color(0xff515353),
    ),
    lightHighContrast: ColorFamily(
      color: Color(0xff5d5f5f),
      onColor: Color(0xffffffff),
      colorContainer: Color(0xfff5f5f5),
      onColorContainer: Color(0xff515353),
    ),
    dark: ColorFamily(
      color: Color(0xffffffff),
      onColor: Color(0xff2f3131),
      colorContainer: Color(0xffd4d4d4),
      onColorContainer: Color(0xff3e4040),
    ),
    darkMediumContrast: ColorFamily(
      color: Color(0xffffffff),
      onColor: Color(0xff2f3131),
      colorContainer: Color(0xffd4d4d4),
      onColorContainer: Color(0xff3e4040),
    ),
    darkHighContrast: ColorFamily(
      color: Color(0xffffffff),
      onColor: Color(0xff2f3131),
      colorContainer: Color(0xffd4d4d4),
      onColorContainer: Color(0xff3e4040),
    ),
  );

  /// Surface
  static const surface = ExtendedColor(
    seed: Color(0xffffffff),
    value: Color(0xffffffff),
    light: ColorFamily(
      color: Color(0xff5d5f5f),
      onColor: Color(0xffffffff),
      colorContainer: Color(0xffffffff),
      onColorContainer: Color(0xff575859),
    ),
    lightMediumContrast: ColorFamily(
      color: Color(0xff5d5f5f),
      onColor: Color(0xffffffff),
      colorContainer: Color(0xffffffff),
      onColorContainer: Color(0xff575859),
    ),
    lightHighContrast: ColorFamily(
      color: Color(0xff5d5f5f),
      onColor: Color(0xffffffff),
      colorContainer: Color(0xffffffff),
      onColorContainer: Color(0xff575859),
    ),
    dark: ColorFamily(
      color: Color(0xffffffff),
      onColor: Color(0xff2f3131),
      colorContainer: Color(0xffd4d4d4),
      onColorContainer: Color(0xff3e4040),
    ),
    darkMediumContrast: ColorFamily(
      color: Color(0xffffffff),
      onColor: Color(0xff2f3131),
      colorContainer: Color(0xffd4d4d4),
      onColorContainer: Color(0xff3e4040),
    ),
    darkHighContrast: ColorFamily(
      color: Color(0xffffffff),
      onColor: Color(0xff2f3131),
      colorContainer: Color(0xffd4d4d4),
      onColorContainer: Color(0xff3e4040),
    ),
  );

  /// Success
  static const success = ExtendedColor(
    seed: Color(0xff16c60c),
    value: Color(0xff16c60c),
    light: ColorFamily(
      color: Color(0xff036e00),
      onColor: Color(0xffffffff),
      colorContainer: Color(0xff2cd21f),
      onColorContainer: Color(0xff013200),
    ),
    lightMediumContrast: ColorFamily(
      color: Color(0xff036e00),
      onColor: Color(0xffffffff),
      colorContainer: Color(0xff2cd21f),
      onColorContainer: Color(0xff013200),
    ),
    lightHighContrast: ColorFamily(
      color: Color(0xff036e00),
      onColor: Color(0xffffffff),
      colorContainer: Color(0xff2cd21f),
      onColorContainer: Color(0xff013200),
    ),
    dark: ColorFamily(
      color: Color(0xff4ae938),
      onColor: Color(0xff013a00),
      colorContainer: Color(0xff05bd00),
      onColorContainer: Color(0xff001d00),
    ),
    darkMediumContrast: ColorFamily(
      color: Color(0xff4ae938),
      onColor: Color(0xff013a00),
      colorContainer: Color(0xff05bd00),
      onColorContainer: Color(0xff001d00),
    ),
    darkHighContrast: ColorFamily(
      color: Color(0xff4ae938),
      onColor: Color(0xff013a00),
      colorContainer: Color(0xff05bd00),
      onColorContainer: Color(0xff001d00),
    ),
  );

  /// Warning
  static const warning = ExtendedColor(
    seed: Color(0xfffff100),
    value: Color(0xfffff100),
    light: ColorFamily(
      color: Color(0xff666000),
      onColor: Color(0xffffffff),
      colorContainer: Color(0xfffff465),
      onColorContainer: Color(0xff565100),
    ),
    lightMediumContrast: ColorFamily(
      color: Color(0xff666000),
      onColor: Color(0xffffffff),
      colorContainer: Color(0xfffff465),
      onColorContainer: Color(0xff565100),
    ),
    lightHighContrast: ColorFamily(
      color: Color(0xff666000),
      onColor: Color(0xffffffff),
      colorContainer: Color(0xfffff465),
      onColorContainer: Color(0xff565100),
    ),
    dark: ColorFamily(
      color: Color(0xffffffff),
      onColor: Color(0xff353100),
      colorContainer: Color(0xffe5d800),
      onColorContainer: Color(0xff454100),
    ),
    darkMediumContrast: ColorFamily(
      color: Color(0xffffffff),
      onColor: Color(0xff353100),
      colorContainer: Color(0xffe5d800),
      onColorContainer: Color(0xff454100),
    ),
    darkHighContrast: ColorFamily(
      color: Color(0xffffffff),
      onColor: Color(0xff353100),
      colorContainer: Color(0xffe5d800),
      onColorContainer: Color(0xff454100),
    ),
  );

  /// Info
  static const information = ExtendedColor(
    seed: Color(0xff0099bc),
    value: Color(0xff0099bc),
    light: ColorFamily(
      color: Color(0xff00586d),
      onColor: Color(0xffffffff),
      colorContainer: Color(0xff007f9d),
      onColorContainer: Color(0xffffffff),
    ),
    lightMediumContrast: ColorFamily(
      color: Color(0xff00586d),
      onColor: Color(0xffffffff),
      colorContainer: Color(0xff007f9d),
      onColorContainer: Color(0xffffffff),
    ),
    lightHighContrast: ColorFamily(
      color: Color(0xff00586d),
      onColor: Color(0xffffffff),
      colorContainer: Color(0xff007f9d),
      onColorContainer: Color(0xffffffff),
    ),
    dark: ColorFamily(
      color: Color(0xff65d4f9),
      onColor: Color(0xff003543),
      colorContainer: Color(0xff007f9d),
      onColorContainer: Color(0xffffffff),
    ),
    darkMediumContrast: ColorFamily(
      color: Color(0xff65d4f9),
      onColor: Color(0xff003543),
      colorContainer: Color(0xff007f9d),
      onColorContainer: Color(0xffffffff),
    ),
    darkHighContrast: ColorFamily(
      color: Color(0xff65d4f9),
      onColor: Color(0xff003543),
      colorContainer: Color(0xff007f9d),
      onColorContainer: Color(0xffffffff),
    ),
  );

  /// On primary
  static const onPrimary = ExtendedColor(
    seed: Color(0xffffffff),
    value: Color(0xffffffff),
    light: ColorFamily(
      color: Color(0xff5d5f5f),
      onColor: Color(0xffffffff),
      colorContainer: Color(0xffffffff),
      onColorContainer: Color(0xff575859),
    ),
    lightMediumContrast: ColorFamily(
      color: Color(0xff5d5f5f),
      onColor: Color(0xffffffff),
      colorContainer: Color(0xffffffff),
      onColorContainer: Color(0xff575859),
    ),
    lightHighContrast: ColorFamily(
      color: Color(0xff5d5f5f),
      onColor: Color(0xffffffff),
      colorContainer: Color(0xffffffff),
      onColorContainer: Color(0xff575859),
    ),
    dark: ColorFamily(
      color: Color(0xffffffff),
      onColor: Color(0xff2f3131),
      colorContainer: Color(0xffd4d4d4),
      onColorContainer: Color(0xff3e4040),
    ),
    darkMediumContrast: ColorFamily(
      color: Color(0xffffffff),
      onColor: Color(0xff2f3131),
      colorContainer: Color(0xffd4d4d4),
      onColorContainer: Color(0xff3e4040),
    ),
    darkHighContrast: ColorFamily(
      color: Color(0xffffffff),
      onColor: Color(0xff2f3131),
      colorContainer: Color(0xffd4d4d4),
      onColorContainer: Color(0xff3e4040),
    ),
  );

  /// On secondary
  static const onSecondary = ExtendedColor(
    seed: Color(0xffffffff),
    value: Color(0xffffffff),
    light: ColorFamily(
      color: Color(0xff5d5f5f),
      onColor: Color(0xffffffff),
      colorContainer: Color(0xffffffff),
      onColorContainer: Color(0xff575859),
    ),
    lightMediumContrast: ColorFamily(
      color: Color(0xff5d5f5f),
      onColor: Color(0xffffffff),
      colorContainer: Color(0xffffffff),
      onColorContainer: Color(0xff575859),
    ),
    lightHighContrast: ColorFamily(
      color: Color(0xff5d5f5f),
      onColor: Color(0xffffffff),
      colorContainer: Color(0xffffffff),
      onColorContainer: Color(0xff575859),
    ),
    dark: ColorFamily(
      color: Color(0xffffffff),
      onColor: Color(0xff2f3131),
      colorContainer: Color(0xffd4d4d4),
      onColorContainer: Color(0xff3e4040),
    ),
    darkMediumContrast: ColorFamily(
      color: Color(0xffffffff),
      onColor: Color(0xff2f3131),
      colorContainer: Color(0xffd4d4d4),
      onColorContainer: Color(0xff3e4040),
    ),
    darkHighContrast: ColorFamily(
      color: Color(0xffffffff),
      onColor: Color(0xff2f3131),
      colorContainer: Color(0xffd4d4d4),
      onColorContainer: Color(0xff3e4040),
    ),
  );

  /// On tertiary
  static const onTertiary = ExtendedColor(
    seed: Color(0xff000000),
    value: Color(0xff000000),
    light: ColorFamily(
      color: Color(0xff000000),
      onColor: Color(0xffffffff),
      colorContainer: Color(0xff262626),
      onColorContainer: Color(0xffb1b1b1),
    ),
    lightMediumContrast: ColorFamily(
      color: Color(0xff000000),
      onColor: Color(0xffffffff),
      colorContainer: Color(0xff262626),
      onColorContainer: Color(0xffb1b1b1),
    ),
    lightHighContrast: ColorFamily(
      color: Color(0xff000000),
      onColor: Color(0xffffffff),
      colorContainer: Color(0xff262626),
      onColorContainer: Color(0xffb1b1b1),
    ),
    dark: ColorFamily(
      color: Color(0xffc6c6c6),
      onColor: Color(0xff303030),
      colorContainer: Color(0xff000000),
      onColorContainer: Color(0xff969696),
    ),
    darkMediumContrast: ColorFamily(
      color: Color(0xffc6c6c6),
      onColor: Color(0xff303030),
      colorContainer: Color(0xff000000),
      onColorContainer: Color(0xff969696),
    ),
    darkHighContrast: ColorFamily(
      color: Color(0xffc6c6c6),
      onColor: Color(0xff303030),
      colorContainer: Color(0xff000000),
      onColorContainer: Color(0xff969696),
    ),
  );

  /// On error
  static const onError = ExtendedColor(
    seed: Color(0xffffffff),
    value: Color(0xffffffff),
    light: ColorFamily(
      color: Color(0xff5d5f5f),
      onColor: Color(0xffffffff),
      colorContainer: Color(0xffffffff),
      onColorContainer: Color(0xff575859),
    ),
    lightMediumContrast: ColorFamily(
      color: Color(0xff5d5f5f),
      onColor: Color(0xffffffff),
      colorContainer: Color(0xffffffff),
      onColorContainer: Color(0xff575859),
    ),
    lightHighContrast: ColorFamily(
      color: Color(0xff5d5f5f),
      onColor: Color(0xffffffff),
      colorContainer: Color(0xffffffff),
      onColorContainer: Color(0xff575859),
    ),
    dark: ColorFamily(
      color: Color(0xffffffff),
      onColor: Color(0xff2f3131),
      colorContainer: Color(0xffd4d4d4),
      onColorContainer: Color(0xff3e4040),
    ),
    darkMediumContrast: ColorFamily(
      color: Color(0xffffffff),
      onColor: Color(0xff2f3131),
      colorContainer: Color(0xffd4d4d4),
      onColorContainer: Color(0xff3e4040),
    ),
    darkHighContrast: ColorFamily(
      color: Color(0xffffffff),
      onColor: Color(0xff2f3131),
      colorContainer: Color(0xffd4d4d4),
      onColorContainer: Color(0xff3e4040),
    ),
  );

  /// On background
  static const onBackground = ExtendedColor(
    seed: Color(0xff000000),
    value: Color(0xff000000),
    light: ColorFamily(
      color: Color(0xff000000),
      onColor: Color(0xffffffff),
      colorContainer: Color(0xff262626),
      onColorContainer: Color(0xffb1b1b1),
    ),
    lightMediumContrast: ColorFamily(
      color: Color(0xff000000),
      onColor: Color(0xffffffff),
      colorContainer: Color(0xff262626),
      onColorContainer: Color(0xffb1b1b1),
    ),
    lightHighContrast: ColorFamily(
      color: Color(0xff000000),
      onColor: Color(0xffffffff),
      colorContainer: Color(0xff262626),
      onColorContainer: Color(0xffb1b1b1),
    ),
    dark: ColorFamily(
      color: Color(0xffc6c6c6),
      onColor: Color(0xff303030),
      colorContainer: Color(0xff000000),
      onColorContainer: Color(0xff969696),
    ),
    darkMediumContrast: ColorFamily(
      color: Color(0xffc6c6c6),
      onColor: Color(0xff303030),
      colorContainer: Color(0xff000000),
      onColorContainer: Color(0xff969696),
    ),
    darkHighContrast: ColorFamily(
      color: Color(0xffc6c6c6),
      onColor: Color(0xff303030),
      colorContainer: Color(0xff000000),
      onColorContainer: Color(0xff969696),
    ),
  );

  /// On surface
  static const onSurface = ExtendedColor(
    seed: Color(0xff000000),
    value: Color(0xff000000),
    light: ColorFamily(
      color: Color(0xff000000),
      onColor: Color(0xffffffff),
      colorContainer: Color(0xff262626),
      onColorContainer: Color(0xffb1b1b1),
    ),
    lightMediumContrast: ColorFamily(
      color: Color(0xff000000),
      onColor: Color(0xffffffff),
      colorContainer: Color(0xff262626),
      onColorContainer: Color(0xffb1b1b1),
    ),
    lightHighContrast: ColorFamily(
      color: Color(0xff000000),
      onColor: Color(0xffffffff),
      colorContainer: Color(0xff262626),
      onColorContainer: Color(0xffb1b1b1),
    ),
    dark: ColorFamily(
      color: Color(0xffc6c6c6),
      onColor: Color(0xff303030),
      colorContainer: Color(0xff000000),
      onColorContainer: Color(0xff969696),
    ),
    darkMediumContrast: ColorFamily(
      color: Color(0xffc6c6c6),
      onColor: Color(0xff303030),
      colorContainer: Color(0xff000000),
      onColorContainer: Color(0xff969696),
    ),
    darkHighContrast: ColorFamily(
      color: Color(0xffc6c6c6),
      onColor: Color(0xff303030),
      colorContainer: Color(0xff000000),
      onColorContainer: Color(0xff969696),
    ),
  );

  /// Text secondary light
  static const textSecondaryLight = ExtendedColor(
    seed: Color(0xff5d5d5d),
    value: Color(0xff5d5d5d),
    light: ColorFamily(
      color: Color(0xff484848),
      onColor: Color(0xffffffff),
      colorContainer: Color(0xff6c6c6c),
      onColorContainer: Color(0xffffffff),
    ),
    lightMediumContrast: ColorFamily(
      color: Color(0xff484848),
      onColor: Color(0xffffffff),
      colorContainer: Color(0xff6c6c6c),
      onColorContainer: Color(0xffffffff),
    ),
    lightHighContrast: ColorFamily(
      color: Color(0xff484848),
      onColor: Color(0xffffffff),
      colorContainer: Color(0xff6c6c6c),
      onColorContainer: Color(0xffffffff),
    ),
    dark: ColorFamily(
      color: Color(0xffc7c6c6),
      onColor: Color(0xff303030),
      colorContainer: Color(0xff535353),
      onColorContainer: Color(0xfff7f5f4),
    ),
    darkMediumContrast: ColorFamily(
      color: Color(0xffc7c6c6),
      onColor: Color(0xff303030),
      colorContainer: Color(0xff535353),
      onColorContainer: Color(0xfff7f5f4),
    ),
    darkHighContrast: ColorFamily(
      color: Color(0xffc7c6c6),
      onColor: Color(0xff303030),
      colorContainer: Color(0xff535353),
      onColorContainer: Color(0xfff7f5f4),
    ),
  );

  /// Text secondary dark
  static const textSecondaryDark = ExtendedColor(
    seed: Color(0xffcccccc),
    value: Color(0xffcccccc),
    light: ColorFamily(
      color: Color(0xff5d5e5f),
      onColor: Color(0xffffffff),
      colorContainer: Color(0xffd3d3d3),
      onColorContainer: Color(0xff3d3f3f),
    ),
    lightMediumContrast: ColorFamily(
      color: Color(0xff5d5e5f),
      onColor: Color(0xffffffff),
      colorContainer: Color(0xffd3d3d3),
      onColorContainer: Color(0xff3d3f3f),
    ),
    lightHighContrast: ColorFamily(
      color: Color(0xff5d5e5f),
      onColor: Color(0xffffffff),
      colorContainer: Color(0xffd3d3d3),
      onColorContainer: Color(0xff3d3f3f),
    ),
    dark: ColorFamily(
      color: Color(0xfff2f1f1),
      onColor: Color(0xff2f3131),
      colorContainer: Color(0xffc7c7c7),
      onColorContainer: Color(0xff353737),
    ),
    darkMediumContrast: ColorFamily(
      color: Color(0xfff2f1f1),
      onColor: Color(0xff2f3131),
      colorContainer: Color(0xffc7c7c7),
      onColorContainer: Color(0xff353737),
    ),
    darkHighContrast: ColorFamily(
      color: Color(0xfff2f1f1),
      onColor: Color(0xff2f3131),
      colorContainer: Color(0xffc7c7c7),
      onColorContainer: Color(0xff353737),
    ),
  );

  /// Yellow
  static const yellow = ExtendedColor(
    seed: Color(0xfffddb00),
    value: Color(0xfffddb00),
    light: ColorFamily(
      color: Color(0xff6d5e00),
      onColor: Color(0xffffffff),
      colorContainer: Color(0xffffe03f),
      onColorContainer: Color(0xff534600),
    ),
    lightMediumContrast: ColorFamily(
      color: Color(0xff6d5e00),
      onColor: Color(0xffffffff),
      colorContainer: Color(0xffffe03f),
      onColorContainer: Color(0xff534600),
    ),
    lightHighContrast: ColorFamily(
      color: Color(0xff6d5e00),
      onColor: Color(0xffffffff),
      colorContainer: Color(0xffffe03f),
      onColorContainer: Color(0xff534600),
    ),
    dark: ColorFamily(
      color: Color(0xffffffff),
      onColor: Color(0xff393000),
      colorContainer: Color(0xfff4d300),
      onColorContainer: Color(0xff4a3f00),
    ),
    darkMediumContrast: ColorFamily(
      color: Color(0xffffffff),
      onColor: Color(0xff393000),
      colorContainer: Color(0xfff4d300),
      onColorContainer: Color(0xff4a3f00),
    ),
    darkHighContrast: ColorFamily(
      color: Color(0xffffffff),
      onColor: Color(0xff393000),
      colorContainer: Color(0xfff4d300),
      onColorContainer: Color(0xff4a3f00),
    ),
  );

  List<ExtendedColor> get extendedColors => [
        background,
        surface,
        success,
        warning,
        onPrimary,
        onSecondary,
        onTertiary,
        onError,
        onBackground,
        onSurface,
        textSecondaryLight,
        textSecondaryDark,
        yellow,
        success,
        warning,
        information,
      ];
}

class MaterialScheme {
  const MaterialScheme({
    required this.brightness,
    required this.primary,
    required this.surfaceTint,
    required this.onPrimary,
    required this.primaryContainer,
    required this.onPrimaryContainer,
    required this.secondary,
    required this.onSecondary,
    required this.secondaryContainer,
    required this.onSecondaryContainer,
    required this.tertiary,
    required this.onTertiary,
    required this.tertiaryContainer,
    required this.onTertiaryContainer,
    required this.error,
    required this.onError,
    required this.errorContainer,
    required this.onErrorContainer,
    required this.surface,
    required this.onSurface,
    required this.onSurfaceVariant,
    required this.outline,
    required this.outlineVariant,
    required this.shadow,
    required this.scrim,
    required this.inverseSurface,
    required this.inversePrimary,
    required this.primaryFixed,
    required this.onPrimaryFixed,
    required this.primaryFixedDim,
    required this.onPrimaryFixedVariant,
    required this.secondaryFixed,
    required this.onSecondaryFixed,
    required this.secondaryFixedDim,
    required this.onSecondaryFixedVariant,
    required this.tertiaryFixed,
    required this.onTertiaryFixed,
    required this.tertiaryFixedDim,
    required this.onTertiaryFixedVariant,
    required this.surfaceDim,
    required this.surfaceBright,
    required this.surfaceContainerLowest,
    required this.surfaceContainerLow,
    required this.surfaceContainer,
    required this.surfaceContainerHigh,
    required this.surfaceContainerHighest,
    required this.success,
    required this.successContainer,
    required this.onSuccess,
    required this.onSuccessContainer,
    required this.warning,
    required this.warningContainer,
    required this.onWarning,
    required this.onWarningContainer,
    required this.information,
    required this.informationContainer,
    required this.onInformation,
    required this.onInformationContainer,
    required this.white,
    required this.yellow,
    required this.onYellow,
    required this.yellowContainer,
    required this.onYellowContainer,
    required this.textSecondaryLight,
    required this.textSecondaryDark,
  });

  final Brightness brightness;
  final Color primary;
  final Color surfaceTint;
  final Color onPrimary;
  final Color primaryContainer;
  final Color onPrimaryContainer;
  final Color secondary;
  final Color onSecondary;
  final Color secondaryContainer;
  final Color onSecondaryContainer;
  final Color tertiary;
  final Color onTertiary;
  final Color tertiaryContainer;
  final Color onTertiaryContainer;
  final Color error;
  final Color onError;
  final Color errorContainer;
  final Color onErrorContainer;
  final Color surface;
  final Color onSurface;
  final Color onSurfaceVariant;
  final Color outline;
  final Color outlineVariant;
  final Color shadow;
  final Color scrim;
  final Color inverseSurface;
  final Color inversePrimary;
  final Color primaryFixed;
  final Color onPrimaryFixed;
  final Color primaryFixedDim;
  final Color onPrimaryFixedVariant;
  final Color secondaryFixed;
  final Color onSecondaryFixed;
  final Color secondaryFixedDim;
  final Color onSecondaryFixedVariant;
  final Color tertiaryFixed;
  final Color onTertiaryFixed;
  final Color tertiaryFixedDim;
  final Color onTertiaryFixedVariant;
  final Color surfaceDim;
  final Color surfaceBright;
  final Color surfaceContainerLowest;
  final Color surfaceContainerLow;
  final Color surfaceContainer;
  final Color surfaceContainerHigh;
  final Color surfaceContainerHighest;
  final Color success;
  final Color successContainer;
  final Color onSuccess;
  final Color onSuccessContainer;

  final Color warning;
  final Color warningContainer;
  final Color onWarning;
  final Color onWarningContainer;

  final Color information;
  final Color informationContainer;
  final Color onInformation;
  final Color onInformationContainer;
  final Color white;

  final Color yellow;
  final Color yellowContainer;
  final Color onYellow;
  final Color onYellowContainer;

  final Color textSecondaryLight;
  final Color textSecondaryDark;
}

extension MaterialSchemeUtils on MaterialScheme {
  ColorScheme toColorScheme() {
    return ColorScheme(
      brightness: brightness,
      primary: primary,
      onPrimary: onPrimary,
      primaryContainer: primaryContainer,
      onPrimaryContainer: onPrimaryContainer,
      secondary: secondary,
      onSecondary: onSecondary,
      secondaryContainer: secondaryContainer,
      onSecondaryContainer: onSecondaryContainer,
      tertiary: tertiary,
      onTertiary: onTertiary,
      tertiaryContainer: tertiaryContainer,
      onTertiaryContainer: onTertiaryContainer,
      error: error,
      onError: onError,
      errorContainer: errorContainer,
      onErrorContainer: onErrorContainer,
      surface: surface,
      onSurface: onSurface,
      onSurfaceVariant: onSurfaceVariant,
      outline: outline,
      outlineVariant: outlineVariant,
      shadow: shadow,
      scrim: scrim,
      inverseSurface: inverseSurface,
      inversePrimary: inversePrimary,
    );
  }
}

class ExtendedColor {
  final Color seed, value;
  final ColorFamily light;
  final ColorFamily lightHighContrast;
  final ColorFamily lightMediumContrast;
  final ColorFamily dark;
  final ColorFamily darkHighContrast;
  final ColorFamily darkMediumContrast;

  const ExtendedColor({
    required this.seed,
    required this.value,
    required this.light,
    required this.lightHighContrast,
    required this.lightMediumContrast,
    required this.dark,
    required this.darkHighContrast,
    required this.darkMediumContrast,
  });
}

class ColorFamily {
  const ColorFamily({
    required this.color,
    required this.onColor,
    required this.colorContainer,
    required this.onColorContainer,
  });

  final Color color;
  final Color onColor;
  final Color colorContainer;
  final Color onColorContainer;
}
