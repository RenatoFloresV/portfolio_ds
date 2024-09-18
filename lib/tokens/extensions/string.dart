import 'dart:convert';

extension DsStringExtension on String? {
  bool isEmail() {
    if (this == null) {
      throw ArgumentError('string: $this');
    }
    if (this!.isEmpty) {
      return false;
    }
    return RegExp(r'^[a-zA-Z0-9_.+-]+@[a-zA-Z0-9-]+\.[a-zA-Z0-9-.]+$')
        .hasMatch(this!);
  }

  String capitalize() {
    if (this == null) {
      throw ArgumentError('string: $this');
    }
    if (this!.isEmpty) {
      return '';
    }
    return '${this?[0].toUpperCase()}${this?.substring(1)}';
  }

  bool isDigits() {
    if (this == null) {
      throw ArgumentError('string: $this');
    }
    if (this!.isEmpty) {
      return false;
    }
    return RegExp(r'^[0-9]+$').hasMatch(this!);
  }

  // Convert to base64.
  String toBase64() {
    if (this == null) {
      throw ArgumentError('string: $this');
    }
    return base64.encode(utf8.encode(this!));
  }

  /// Convert string to bytes.
  List<int> toBytes() {
    if (this == null) {
      throw ArgumentError('string: $this');
    }
    return utf8.encode(this!);
  }

  bool isPasswordValid() {
    if (this == null) {
      throw ArgumentError('string: $this');
    }

    final regExp = RegExp(
      r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~.])(?=.{8,}$)',
    );

    return regExp.hasMatch(this!);
  }

  bool isPasswordLeastOneUpperCase() {
    if (this == null) {
      throw ArgumentError('string: $this');
    }

    final regExp = RegExp(r'^(?=.*?[A-Z])');

    return regExp.hasMatch(this!);
  }

  bool isPasswordLeastOneLowerCase() {
    if (this == null) {
      throw ArgumentError('string: $this');
    }

    final regExp = RegExp(r'^(?=.*[a-z])');

    return regExp.hasMatch(this!);
  }

  bool isPasswordLeastOneDigits() {
    if (this == null) {
      throw ArgumentError('string: $this');
    }

    final regExp = RegExp(r'^(?=.*?[0-9])');

    return regExp.hasMatch(this!);
  }

  bool isPasswordLeastOneSpecialCharacter() {
    if (this == null) {
      throw ArgumentError('string: $this');
    }

    final regExp = RegExp(r'^(?=.*?[!@#\$&*~.])');

    return regExp.hasMatch(this!);
  }

  bool isPasswordLeast8Character() {
    if (this == null) {
      throw ArgumentError('string: $this');
    }

    final regExp = RegExp(r'^.{8,}');

    return regExp.hasMatch(this!);
  }
}
