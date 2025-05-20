import 'package:flutter/widgets.dart';
import 'theme_data.dart';

class FluttailTheme extends InheritedWidget {
  final FluttailThemeData data;

  const FluttailTheme({super.key, required this.data, required super.child});

  static FluttailThemeData of(BuildContext context) {
    final theme = context.dependOnInheritedWidgetOfExactType<FluttailTheme>();
    if (theme == null) {
      throw FlutterError(
        'FluttailTheme.of() called with a context that does not contain a FluttailTheme.',
      );
    }
    return theme.data;
  }

  @override
  bool updateShouldNotify(FluttailTheme oldWidget) => data != oldWidget.data;
}
