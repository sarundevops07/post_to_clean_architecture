import 'package:flutter/material.dart';
import 'package:postblocapp/application/core/extensions/color_extension.dart';


extension TextStyleHelper on BuildContext {
  TextStyle? get medium10 => const TextStyle(
      fontFamily: 'Urbanist', fontWeight: FontWeight.w500, fontSize: 10);
  TextStyle? get light12 => const TextStyle(
      fontFamily: 'Urbanist', fontWeight: FontWeight.w300, fontSize: 12);
  TextStyle? get medium12 => const TextStyle(
      fontFamily: 'Urbanist', fontWeight: FontWeight.w500, fontSize: 12);
  TextStyle? get light14 => const TextStyle(
      fontFamily: 'Urbanist', fontWeight: FontWeight.w300, fontSize: 14);
  TextStyle? get regular14 => const TextStyle(
      fontFamily: 'Urbanist', fontWeight: FontWeight.w400, fontSize: 14);
  TextStyle? get regular12 => const TextStyle(
      fontFamily: 'Urbanist', fontWeight: FontWeight.w400, fontSize: 12);
  TextStyle? get medium14 => const TextStyle(
      fontFamily: 'Urbanist', fontWeight: FontWeight.w500, fontSize: 14);
  TextStyle? get light16 => const TextStyle(
      fontFamily: 'Urbanist', fontWeight: FontWeight.w300, fontSize: 16);
  TextStyle? get regular16 => const TextStyle(
      fontFamily: 'Urbanist', fontWeight: FontWeight.w400, fontSize: 16);
  TextStyle? get medium16 => const TextStyle(
      fontFamily: 'Urbanist', fontWeight: FontWeight.w500, fontSize: 16);
  TextStyle? get semiBold16 => const TextStyle(
      fontFamily: 'Urbanist', fontWeight: FontWeight.w600, fontSize: 16);
  TextStyle? get light18 => const TextStyle(
      fontFamily: 'Urbanist', fontWeight: FontWeight.w300, fontSize: 18);
  TextStyle? get regular18 => const TextStyle(
      fontFamily: 'Urbanist', fontWeight: FontWeight.w400, fontSize: 18);
  TextStyle? get medium18 => const TextStyle(
      fontFamily: 'Urbanist', fontWeight: FontWeight.w500, fontSize: 18);
  TextStyle? get regular20 => const TextStyle(
      fontFamily: 'Urbanist', fontWeight: FontWeight.w400, fontSize: 20);
  TextStyle? get medium20 => const TextStyle(
      fontFamily: 'Urbanist', fontWeight: FontWeight.w500, fontSize: 20);
  TextStyle? get semiBold20 => const TextStyle(
      fontFamily: 'Urbanist', fontWeight: FontWeight.w600, fontSize: 20);
  TextStyle? get bold20 => const TextStyle(
      fontFamily: 'Urbanist', fontWeight: FontWeight.w700, fontSize: 20);
  TextStyle? get medium22 => const TextStyle(
      fontFamily: 'Urbanist', fontWeight: FontWeight.w500, fontSize: 22);
  TextStyle? get medium24 => const TextStyle(
      fontFamily: 'Urbanist', fontWeight: FontWeight.w500, fontSize: 24);
  TextStyle? get semiBold24 => const TextStyle(
      fontFamily: 'Urbanist', fontWeight: FontWeight.w600, fontSize: 24);
  TextStyle? get regular26 => const TextStyle(
      fontFamily: 'Urbanist', fontWeight: FontWeight.w400, fontSize: 26);
  TextStyle? get semiBold26 => const TextStyle(
      fontFamily: 'Urbanist', fontWeight: FontWeight.w600, fontSize: 26);
  TextStyle? get bold26 => const TextStyle(
      fontFamily: 'Urbanist', fontWeight: FontWeight.w700, fontSize: 26);
  TextStyle? get semiBold28 => const TextStyle(
      fontFamily: 'Urbanist', fontWeight: FontWeight.w600, fontSize: 28);
  TextStyle? get semiBold30 => const TextStyle(
      fontFamily: 'Urbanist', fontWeight: FontWeight.w600, fontSize: 30);
  TextStyle? get bold40 => const TextStyle(
      fontFamily: 'Urbanist', fontWeight: FontWeight.w700, fontSize: 40);
  TextStyle? get bold34 => const TextStyle(
      fontFamily: 'Urbanist', fontWeight: FontWeight.w700, fontSize: 34);

  // TextStyle? get titleMedium => Theme.of(this).textTheme.titleMedium;
  // TextStyle? get titleSmall => Theme.of(this).textTheme.titleSmall;
  // TextStyle? get bodySmall => Theme.of(this).textTheme.bodySmall;
  // TextStyle? get bodyMedium => Theme.of(this).textTheme.bodyMedium;
  // TextStyle? get bodyLarge => Theme.of(this).textTheme.bodyLarge;
  // TextStyle? get labelLarge => Theme.of(this).textTheme.labelLarge;
  // TextStyle? get labelMedium => Theme.of(this).textTheme.labelMedium;
  // TextStyle? get labelSmall => Theme.of(this).textTheme.labelSmall;
  // TextStyle? get displayLarge => Theme.of(this).textTheme.displayLarge;
  // TextStyle? get displayMedium => Theme.of(this).textTheme.displayMedium;
  // TextStyle? get displaySmall => Theme.of(this).textTheme.displaySmall;
  // TextStyle? get headlineLarge => Theme.of(this).textTheme.headlineLarge;
  // TextStyle? get headlineMedium => Theme.of(this).textTheme.headlineMedium;
  // TextStyle? get headlineSmall => Theme.of(this).textTheme.headlineSmall;
}

extension TextStyleColorMapping on TextStyle {
  TextStyle primaryLight(BuildContext context) {
    return copyWith(color: context.primaryLight);
  }

  TextStyle primary(BuildContext context) {
    return copyWith(color: context.primary);
  }

  TextStyle primaryDark(BuildContext context) {
    return copyWith(color: context.primaryDark);
  }

  TextStyle secondaryLight(BuildContext context) {
    return copyWith(color: context.secondaryLight);
  }

  TextStyle secondary(BuildContext context) {
    return copyWith(color: context.secondary);
  }

  TextStyle secondaryDark(BuildContext context) {
    return copyWith(color: context.secondaryDark);
  }

  TextStyle tertiaryExtraLight(BuildContext context) {
    return copyWith(color: context.tertiaryExtraLight);
  }

  TextStyle tertiaryLight(BuildContext context) {
    return copyWith(color: context.tertiaryLight);
  }

  TextStyle tertiary(BuildContext context) {
    return copyWith(color: context.tertiary);
  }

  TextStyle tertiaryDark(BuildContext context) {
    return copyWith(color: context.tertiaryDark);
  }

  TextStyle accent(BuildContext context) {
    return copyWith(color: context.accent);
  }

  TextStyle accentLight(BuildContext context) {
    return copyWith(color: context.accentLight);
  }

  TextStyle highlight(BuildContext context) {
    return copyWith(color: context.highlight);
  }

  TextStyle red(BuildContext context) {
    return copyWith(color: context.red);
  }
}

//Refactor this class with proper color names from color_extension
