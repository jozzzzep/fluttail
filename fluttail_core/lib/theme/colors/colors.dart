import 'package:flutter/widgets.dart';

/// Abstract color system contract for fluttail.
/// Defines all semantic and neutral color families.
abstract class FluttailColors {
  FluttailColorFamily get primary;
  FluttailColorFamily get secondary;
  FluttailColorFamily get neutral;
  FluttailColorFamily get success;
  FluttailColorFamily get warning;
  FluttailColorFamily get error;
  FluttailColorFamily get info;

  FluttailGrayFamily get gray;

  Color get black;
  Color get white;

  /// Access custom or dynamic families by name
  Map<String, FluttailColorFamily> get custom;

  /// Resolve color dynamically by family + shade.
  /// Example: getColor('primary', 500);
  Color? getColor(String family, int shade);
}

/// Defines a color family with shades, roles, and utilities.
abstract class FluttailColorFamily {
  Color get shade50;
  Color get shade100;
  Color get shade200;
  Color get shade300;
  Color get shade400;
  Color get shade500;
  Color get shade600;
  Color get shade700;
  Color get shade800;
  Color get shade900;

  /// Optional Tailwind-specific deep shade.
  Color? get shade950;

  /// Resolve by shade value.
  /// Example: shade(500), shade(950), with optional dark mode fallback.
  Color shade(int value, {bool darkMode = false});

  /// Apply opacity to a shade.
  Color withAlpha(int alpha, {int shade = 500});

  /// Recommended foreground (text/icon) color on top of this family.
  Color get contrastForeground;

  /// Semantic roles like background, border, ring.
  FluttailColorRole get roles;
}

/// Specialization of FluttailColorFamily with guaranteed 950 shade.
abstract class FluttailGrayFamily extends FluttailColorFamily {
  @override
  Color get shade950;
}

/// Semantic roles for component usage.
abstract class FluttailColorRole {
  Color get background;
  Color get foreground;
  Color get border;
  Color get ring;
}
