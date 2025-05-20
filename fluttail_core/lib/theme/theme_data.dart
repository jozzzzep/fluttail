import 'package:fluttail_core/theme/breakpoints/breakpoints.dart';
import 'package:fluttail_core/theme/colors/colors.dart';
import 'package:fluttail_core/theme/shadows/shadows.dart';
import 'package:fluttail_core/tokens/radius.dart';
import 'package:fluttail_core/tokens/spacing.dart';
import 'package:fluttail_core/tokens/typography.dart';

class FluttailThemeData {
  final FluttailColors colors;
  final FluttailShadows shadows;
  final FluttailSpacing spacing;
  final FluttailRadius radius;
  final FluttailTypography typography;
  final FluttailBreakpoints breakpoints;

  /// Added features:
  final bool darkMode;
  final Map<String, dynamic> mediaConditions;
  final Map<String, dynamic> customTokens;

  const FluttailThemeData({
    required this.colors,
    required this.shadows,
    required this.spacing,
    required this.radius,
    required this.typography,
    required this.breakpoints,
    this.darkMode = false,
    this.mediaConditions = const {},
    this.customTokens = const {},
  });

  /// Resolve nested token, e.g., 'colors.primary.500'
  dynamic resolveToken(String path) {
    final parts = path.split('.');
    dynamic current = this;
    for (final part in parts) {
      if (current == null) return null;
      try {
        current = current is Map ? current[part] : current.toJson()[part];
      } catch (_) {
        return null;
      }
    }
    return current;
  }

  /// Merge two themes
  FluttailThemeData merge(FluttailThemeData other) {
    return FluttailThemeData(
      colors: other.colors,
      shadows: other.shadows,
      spacing: other.spacing,
      radius: other.radius,
      typography: other.typography,
      breakpoints: other.breakpoints,
      darkMode: other.darkMode,
      mediaConditions: {...mediaConditions, ...other.mediaConditions},
      customTokens: {...customTokens, ...other.customTokens},
    );
  }

  /// Extend theme with optional overrides
  FluttailThemeData extendWith({
    FluttailColors? colors,
    FluttailShadows? shadows,
    FluttailSpacing? spacing,
    FluttailRadius? radius,
    FluttailTypography? typography,
    FluttailBreakpoints? breakpoints,
    bool? darkMode,
    Map<String, dynamic>? mediaConditions,
    Map<String, dynamic>? customTokens,
  }) {
    return FluttailThemeData(
      colors: colors ?? this.colors,
      shadows: shadows ?? this.shadows,
      spacing: spacing ?? this.spacing,
      radius: radius ?? this.radius,
      typography: typography ?? this.typography,
      breakpoints: breakpoints ?? this.breakpoints,
      darkMode: darkMode ?? this.darkMode,
      mediaConditions: mediaConditions ?? this.mediaConditions,
      customTokens: customTokens ?? this.customTokens,
    );
  }

  /// Check if a media query is active
  bool isMedia(String condition) => mediaConditions[condition] == true;

  /// Convert to Map for internal use
  Map<String, dynamic> toJson() {
    return {
      'colors': colors,
      'shadows': shadows,
      'spacing': spacing,
      'radius': radius,
      'typography': typography,
      'breakpoints': breakpoints,
      'darkMode': darkMode,
      'mediaConditions': mediaConditions,
      'customTokens': customTokens,
    };
  }
}
