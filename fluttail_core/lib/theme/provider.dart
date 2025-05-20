import 'package:fluttail_core/theme/fluttail_theme.dart';
import 'package:fluttail_core/theme/theme_data.dart';
import 'package:flutter/widgets.dart';

class FluttailThemeProvider extends StatefulWidget {
  final FluttailThemeData initialTheme;
  final Widget child;

  const FluttailThemeProvider({
    super.key,
    required this.initialTheme,
    required this.child,
  });

  @override
  State<FluttailThemeProvider> createState() => FluttailThemeProviderState();

  static FluttailThemeProviderState of(BuildContext context) {
    final provider =
        context.findAncestorStateOfType<FluttailThemeProviderState>();
    if (provider == null) {
      throw FlutterError(
        'FluttailThemeProvider.of() called outside of a FluttailThemeProvider.',
      );
    }
    return provider;
  }
}

class FluttailThemeProviderState extends State<FluttailThemeProvider> {
  late FluttailThemeData _theme;

  @override
  void initState() {
    super.initState();
    _theme = widget.initialTheme;
  }

  void updateTheme(FluttailThemeData newTheme) {
    setState(() {
      _theme = newTheme;
    });
  }

  @override
  Widget build(BuildContext context) {
    return FluttailTheme(data: _theme, child: widget.child);
  }
}
