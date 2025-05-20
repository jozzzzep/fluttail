import 'package:fluttail_core/theme/shadows/shadows.dart';
import 'package:flutter/widgets.dart';

class DefaultFluttailShadows implements FluttailShadows {
  final Map<String, List<BoxShadow>> _custom = {};

  static const Color _defaultColor = Color(0x33000000); // rgba(0,0,0,0.2)

  final Map<String, List<BoxShadow>> _builtIn = {
    'none': [],
    'sm': [
      BoxShadow(offset: Offset(0, 1), blurRadius: 2, color: _defaultColor),
    ],
    'md': [
      BoxShadow(
        offset: Offset(0, 4),
        blurRadius: 6,
        spreadRadius: -1,
        color: _defaultColor,
      ),
      BoxShadow(offset: Offset(0, 2), blurRadius: 4, color: _defaultColor),
    ],
    'lg': [
      BoxShadow(
        offset: Offset(0, 10),
        blurRadius: 15,
        spreadRadius: -3,
        color: _defaultColor,
      ),
      BoxShadow(offset: Offset(0, 4), blurRadius: 6, color: _defaultColor),
    ],
    'xl': [
      BoxShadow(
        offset: Offset(0, 20),
        blurRadius: 25,
        spreadRadius: -5,
        color: _defaultColor,
      ),
      BoxShadow(offset: Offset(0, 8), blurRadius: 10, color: _defaultColor),
    ],
    '2xl': [
      BoxShadow(
        offset: Offset(0, 25),
        blurRadius: 50,
        spreadRadius: -12,
        color: _defaultColor,
      ),
    ],
    'inner': [
      BoxShadow(
        offset: Offset(0, 2),
        blurRadius: 4,
        color: _defaultColor,
        blurStyle: BlurStyle.inner,
      ),
    ],
  };

  @override
  List<BoxShadow> get none => _builtIn['none']!;
  @override
  List<BoxShadow> get sm => _builtIn['sm']!;
  @override
  List<BoxShadow> get md => _builtIn['md']!;
  @override
  List<BoxShadow> get lg => _builtIn['lg']!;
  @override
  List<BoxShadow> get xl => _builtIn['xl']!;
  @override
  List<BoxShadow> get x2l => _builtIn['2xl']!;
  @override
  List<BoxShadow> get inner => _builtIn['inner']!;

  @override
  Map<String, List<BoxShadow>> get all => Map.unmodifiable(_builtIn);

  @override
  Map<String, List<BoxShadow>> get custom => Map.unmodifiable(_custom);

  @override
  Map<String, List<BoxShadow>> get combined => {..._builtIn, ..._custom};

  @override
  bool has(String name) => combined.containsKey(name);

  @override
  List<BoxShadow>? tryGet(String name) => combined[name];

  @override
  List<BoxShadow> getByName(String name) {
    final shadow = tryGet(name);
    if (shadow == null) {
      throw ArgumentError('Unknown shadow: $name');
    }
    return shadow;
  }

  @override
  List<BoxShadow>? tryGetWithColor(String name, Color color) {
    final shadow = tryGet(name);
    if (shadow == null) return null;
    return shadow.map((s) => s.copyWith(color: color)).toList();
  }

  @override
  List<BoxShadow> getByNameWithColor(String name, Color color) {
    final shadow = tryGetWithColor(name, color);
    if (shadow == null) {
      throw ArgumentError('Unknown shadow: $name');
    }
    return shadow;
  }

  @override
  List<BoxShadow> combine(List<String> names) {
    final result = <BoxShadow>[];
    for (final name in names) {
      final shadow = tryGet(name);
      if (shadow != null) {
        result.addAll(shadow);
      }
    }
    return result;
  }

  @override
  void registerCustom(String name, List<BoxShadow> shadows) {
    _custom[name] = shadows;
  }

  @override
  void unregisterCustom(String name) {
    _custom.remove(name);
  }

  @override
  List<String> get customKeys => _custom.keys.toList();

  @override
  List<String> get innerShadowKeys =>
      combined.entries
          .where(
            (entry) => entry.value.any((s) => s.blurStyle == BlurStyle.inner),
          )
          .map((entry) => entry.key)
          .toList();

  @override
  List<String> get outerShadowKeys =>
      combined.entries
          .where(
            (entry) => entry.value.every((s) => s.blurStyle != BlurStyle.inner),
          )
          .map((entry) => entry.key)
          .toList();

  @override
  List<BoxShadow>? modifyOffset(String name, Offset offset) {
    final shadow = tryGet(name);
    if (shadow == null) return null;
    return shadow.map((s) => s.copyWith(offset: offset)).toList();
  }
}
