import 'package:fluttail_core/theme/breakpoints/breakpoints.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/foundation.dart';

class DefaultFluttailBreakpoints implements FluttailBreakpoints {
  static const _defaultBreakpoints = <String, double>{
    'sm': 640,
    'md': 768,
    'lg': 1024,
    'xl': 1280,
    '2xl': 1536,
  };

  final Map<String, double> _custom = {};
  final Map<String, MediaQueryCondition> _mediaQueries = {
    'dark': _DarkModeCondition(),
    'light': _LightModeCondition(),
    'portrait': _PortraitCondition(),
    'landscape': _LandscapeCondition(),
    'print': _PrintCondition(),
    'reduceMotion': _ReduceMotionCondition(),
  };

  @override
  double get sm => _defaultBreakpoints['sm']!;
  @override
  double get md => _defaultBreakpoints['md']!;
  @override
  double get lg => _defaultBreakpoints['lg']!;
  @override
  double get xl => _defaultBreakpoints['xl']!;
  @override
  double get x2l => _defaultBreakpoints['2xl']!;

  @override
  Map<String, double> get all => Map.unmodifiable(_defaultBreakpoints);

  @override
  Map<String, double> get custom => Map.unmodifiable(_custom);

  @override
  Map<String, double> get combined => {..._defaultBreakpoints, ..._custom};

  @override
  Map<String, MediaQueryCondition> get mediaQueries =>
      Map.unmodifiable(_mediaQueries);

  @override
  Map<String, dynamic> get combinedAll => {...combined, ..._mediaQueries};

  @override
  bool has(String name) =>
      combined.containsKey(name) || _mediaQueries.containsKey(name);

  @override
  dynamic getByName(String name) =>
      combined[name] ?? _mediaQueries[name] ?? (throw Exception('Not found'));

  @override
  dynamic tryGet(String name) => combined[name] ?? _mediaQueries[name];

  @override
  void registerCustom(String name, double value) {
    _custom[name] = value;
  }

  @override
  void unregisterCustom(String name) {
    _custom.remove(name);
  }

  @override
  void registerMediaQuery(String name, MediaQueryCondition condition) {
    _mediaQueries[name] = condition;
  }

  @override
  void unregisterMediaQuery(String name) {
    _mediaQueries.remove(name);
  }

  @override
  List<MapEntry<String, double>> get sorted =>
      combined.entries.toList()..sort((a, b) => a.value.compareTo(b.value));

  @override
  String activeBreakpoint(double width) {
    String current = 'sm';
    for (final entry in sorted) {
      if (width >= entry.value) {
        current = entry.key;
      }
    }
    return current;
  }

  @override
  List<String> activeMediaQueries(BuildContext context) {
    return _mediaQueries.entries
        .where((entry) => entry.value.evaluate(context))
        .map((entry) => entry.key)
        .toList();
  }

  @override
  bool isAtLeast(double width, String name) {
    final bp = combined[name];
    if (bp == null) return false;
    return width >= bp;
  }

  @override
  bool isBelow(double width, String name) {
    final bp = combined[name];
    if (bp == null) return false;
    return width < bp;
  }

  @override
  bool isBetween(double width, String start, String end) {
    final startVal = combined[start];
    final endVal = combined[end];
    if (startVal == null || endVal == null) return false;
    return width >= startVal && width < endVal;
  }

  @override
  bool matchesMediaQuery(BuildContext context, String name) {
    final mq = _mediaQueries[name];
    if (mq == null) return false;
    return mq.evaluate(context);
  }
}

class _DarkModeCondition implements MediaQueryCondition {
  @override
  bool evaluate(BuildContext context) =>
      MediaQuery.of(context).platformBrightness == Brightness.dark;
}

class _LightModeCondition implements MediaQueryCondition {
  @override
  bool evaluate(BuildContext context) =>
      MediaQuery.of(context).platformBrightness == Brightness.light;
}

class _PortraitCondition implements MediaQueryCondition {
  @override
  bool evaluate(BuildContext context) =>
      MediaQuery.of(context).orientation == Orientation.portrait;
}

class _LandscapeCondition implements MediaQueryCondition {
  @override
  bool evaluate(BuildContext context) =>
      MediaQuery.of(context).orientation == Orientation.landscape;
}

class _PrintCondition implements MediaQueryCondition {
  @override
  bool evaluate(BuildContext context) =>
      kIsWeb && MediaQuery.of(context).size.width == 0;
}

class _ReduceMotionCondition implements MediaQueryCondition {
  @override
  bool evaluate(BuildContext context) =>
      MediaQuery.of(context).disableAnimations;
}
