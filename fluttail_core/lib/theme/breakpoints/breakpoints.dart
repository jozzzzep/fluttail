import 'package:flutter/widgets.dart';

abstract class FluttailBreakpoints {
  /// Small (mobile)
  double get sm;

  /// Medium (tablet)
  double get md;

  /// Large (laptop)
  double get lg;

  /// Extra large (desktop)
  double get xl;

  /// 2x extra large (wide screen)
  double get x2l;

  /// All built-in breakpoints (named)
  Map<String, double> get all;

  /// All custom breakpoints (registered at runtime)
  Map<String, double> get custom;

  /// Combined built-in + custom breakpoints
  Map<String, double> get combined;

  /// All raw media queries (orientation, print, dark, etc.)
  Map<String, MediaQueryCondition> get mediaQueries;

  /// Combined breakpoints + media queries
  Map<String, dynamic> get combinedAll;

  /// Checks if a breakpoint or media query [name] exists.
  bool has(String name);

  /// Gets the breakpoint or media query by [name].
  dynamic getByName(String name);

  /// Tries to get the breakpoint or media query by [name].
  dynamic tryGet(String name);

  /// Registers a custom breakpoint.
  void registerCustom(String name, double value);

  /// Unregisters a custom breakpoint.
  void unregisterCustom(String name);

  /// Registers a raw media query (orientation, dark mode, etc.)
  void registerMediaQuery(String name, MediaQueryCondition condition);

  /// Unregisters a raw media query.
  void unregisterMediaQuery(String name);

  /// Sorted list of breakpoints (ascending)
  List<MapEntry<String, double>> get sorted;

  /// Active breakpoint for [width]
  String activeBreakpoint(double width);

  /// Active media queries for [context]
  List<String> activeMediaQueries(BuildContext context);

  /// Checks if [width] is at least [name] breakpoint.
  bool isAtLeast(double width, String name);

  /// Checks if [width] is below [name] breakpoint.
  bool isBelow(double width, String name);

  /// Checks if [width] is between [start] and [end] breakpoints.
  bool isBetween(double width, String start, String end);

  /// Checks if [context] matches a media query.
  bool matchesMediaQuery(BuildContext context, String name);
}

/// Defines a condition that can be evaluated against [BuildContext]
/// (usually using MediaQuery or Theme).
abstract class MediaQueryCondition {
  /// Checks if the condition is met in the given [context].
  bool evaluate(BuildContext context);
}
