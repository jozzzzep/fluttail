import 'package:flutter/widgets.dart';

/// Abstract contract for the Fluttail shadow system.
abstract class FluttailShadows {
  /// No shadow.
  List<BoxShadow> get none;

  /// Small shadow.
  List<BoxShadow> get sm;

  /// Medium shadow.
  List<BoxShadow> get md;

  /// Large shadow.
  List<BoxShadow> get lg;

  /// Extra large shadow.
  List<BoxShadow> get xl;

  /// 2x extra large shadow.
  List<BoxShadow> get x2l;

  /// Inner shadow.
  List<BoxShadow> get inner;

  /// A map of all built-in named shadows.
  Map<String, List<BoxShadow>> get all;

  /// A map of all custom-registered shadows.
  Map<String, List<BoxShadow>> get custom;

  /// Returns a combined map of built-in + custom shadows.
  Map<String, List<BoxShadow>> get combined;

  /// Checks if the system contains the shadow [name]
  /// (from either built-in or custom).
  bool has(String name);

  /// Tries to get a shadow by [name].
  /// Returns null if the name is not found.
  List<BoxShadow>? tryGet(String name);

  /// Gets a shadow by [name].
  /// Throws an exception if the name is not found.
  List<BoxShadow> getByName(String name);

  /// Gets a shadow by [name], overriding its color.
  /// Returns null if the name is not found.
  List<BoxShadow>? tryGetWithColor(String name, Color color);

  /// Gets a shadow by [name], overriding its color.
  /// Throws if the name is not found.
  List<BoxShadow> getByNameWithColor(String name, Color color);

  /// Combines multiple named shadows into a single list.
  /// Ignores names not found.
  List<BoxShadow> combine(List<String> names);

  /// Registers a custom shadow definition.
  /// Example: registerCustom('glow', [...])
  void registerCustom(String name, List<BoxShadow> shadows);

  /// Unregisters a custom shadow definition.
  void unregisterCustom(String name);

  /// List of all custom keys.
  List<String> get customKeys;

  /// List of all inner shadow keys (built-in + custom).
  List<String> get innerShadowKeys;

  /// List of all outer shadow keys (built-in + custom).
  List<String> get outerShadowKeys;

  /// Returns a shadow by [name] with a modified [offset].
  /// Returns null if the name is not found.
  List<BoxShadow>? modifyOffset(String name, Offset offset);
}
