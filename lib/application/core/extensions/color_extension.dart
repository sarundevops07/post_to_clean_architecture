import 'package:flutter/material.dart';

extension ColorHelper on BuildContext {
  // ColorScheme get colorScheme => Theme.of(this).colorScheme;
  // Color get outline => colorScheme.outline;
  // Color get outlineVariant => colorScheme.outlineVariant;
  // Color get primary => colorScheme.primary;
  // Color get onPrimary => colorScheme.onPrimary;
  // Color get primaryContainer => colorScheme.primaryContainer;
  // Color get onPrimaryContainer => colorScheme.onPrimaryContainer;
  // Color get secondary => colorScheme.secondary;
  // Color get onSecondary => colorScheme.onSecondary;
  // Color get inverseSurface => colorScheme.inverseSurface;
  // Color get onInverseSurface => colorScheme.onInverseSurface;
  // Color get secondaryContainer => colorScheme.secondaryContainer;
  // Color get onSecondaryContainer => colorScheme.onSecondaryContainer;
  // Color get onTertiary => colorScheme.tertiary;
  // Color get tertiary => colorScheme.onTertiary;
  // Color get tertiaryContainer => colorScheme.tertiaryContainer;
  // Color get onTertiaryContainer => colorScheme.onTertiaryContainer;
  // Color get surfaceVariant => colorScheme.surfaceVariant;
  // Color get onSurfaceVariant => colorScheme.onSurfaceVariant;
  // Color get surface => colorScheme.surface;
  // Color get onSurface => colorScheme.onSurface;
  // Color get surfaceTint => colorScheme.surfaceTint;
  // Color get background => colorScheme.background;
  // Color get onBackground => colorScheme.onBackground;
  // Color get error => colorScheme.error;
  // Color get shadow => colorScheme.shadow;
  // Color get errorContainer => colorScheme.errorContainer;
  // Color get onError => colorScheme.onError;
  // Color get onErrorContainer => colorScheme.onErrorContainer;

  Color get primaryLight => const Color(0xffFFFFFF);
  Color get primary => const Color(0xffF9F9F9);
  Color get primaryDark => const Color(0xffE7E9EB);

  Color get secondaryLight => const Color(0xffAFE3C0);
  Color get secondaryDark => const Color(0xff147D5E);
  Color get secondary => const Color(0xff158D69);

  Color get tertiaryExtraLight => const Color(0xffABABAB);
  Color get tertiaryLight => const Color(0xff6A6A6A);
  Color get tertiary => const Color(0xff3A3A3A);
  Color get tertiaryDark => const Color(0xff000000);

  Color get accentLight => const Color(0xffFDB03D);
  Color get accent => const Color(0xffFFBE5E);

  Color get highlight => const Color(0xffD4FAFF);

  Color get red => const Color(0xffF24242);
}