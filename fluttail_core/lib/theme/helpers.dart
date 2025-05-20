import 'package:fluttail_core/theme/fluttail_theme.dart';
import 'package:fluttail_core/theme/theme_data.dart';
import 'package:flutter/cupertino.dart';

extension FluttailContext on BuildContext {
  bool get isDark => FluttailTheme.of(this).darkMode;

  Color? resolveColor(String family, int shade) {
    return FluttailTheme.of(this).colors.getColor(family, shade);
  }

  FluttailThemeData get fluttail => FluttailTheme.of(this);

  Color dynamicColor(Color light, Color dark) => isDark ? dark : light;

  Color? shade(String family, int light, int dark) {
    final familyObj = fluttail.colors.custom[family];
    return familyObj?.shade(isDark ? dark : light);
  }

  Color dynamicTextColor(Color light, Color dark) => dynamicColor(light, dark);

  Color dynamicBackgroundColor(Color light, Color dark) =>
      dynamicColor(light, dark);

  /// Get a shade from the primary family, adapting to light/dark.
  Color primaryShade(int light, int dark) {
    return fluttail.colors.primary.shade(isDark ? dark : light);
  }
}
