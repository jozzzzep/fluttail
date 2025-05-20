import 'package:fluttail_core/theme/radius/radius.dart';
import 'package:flutter/widgets.dart';

class DefaultFluttailRadius implements FluttailRadius {
  @override
  final double none = 0;
  @override
  final double sm = 2;
  @override
  final double base = 4;
  @override
  final double md = 6;
  @override
  final double lg = 8;
  @override
  final double xl = 12;
  @override
  final double x2l = 16;
  @override
  final double x3l = 24;
  @override
  final double full = 9999;

  final Map<String, double> _tokens;

  DefaultFluttailRadius()
    : _tokens = {
        'none': 0,
        'sm': 2,
        'base': 4,
        'md': 6,
        'lg': 8,
        'xl': 12,
        '2xl': 16,
        '3xl': 24,
        'full': 9999,
      };

  @override
  List<String> get availableKeys => _tokens.keys.toList();

  @override
  bool hasKey(String name) => _tokens.containsKey(name);

  @override
  double? tryRadius(String name) => _tokens[name];

  @override
  double? getRadius(String name) {
    if (_tokens.containsKey(name)) return _tokens[name];

    final parts = name.split('-');
    if (parts.length == 2 && _tokens.containsKey(parts[1])) {
      return _tokens[parts[1]];
    }
    return null;
  }

  @override
  BorderRadius? borderRadius(String name) {
    final value = getRadius(name);
    return value != null ? BorderRadius.circular(value) : null;
  }

  @override
  BorderRadius borderRadiusOnly({
    String? top,
    String? right,
    String? bottom,
    String? left,
  }) {
    return BorderRadius.only(
      topLeft: Radius.circular(getRadius(top ?? 'none') ?? 0),
      topRight: Radius.circular(getRadius(right ?? 'none') ?? 0),
      bottomRight: Radius.circular(getRadius(bottom ?? 'none') ?? 0),
      bottomLeft: Radius.circular(getRadius(left ?? 'none') ?? 0),
    );
  }

  @override
  BorderRadius borderRadiusCorners({
    String? topLeft,
    String? topRight,
    String? bottomLeft,
    String? bottomRight,
  }) {
    return BorderRadius.only(
      topLeft: Radius.circular(getRadius(topLeft ?? 'none') ?? 0),
      topRight: Radius.circular(getRadius(topRight ?? 'none') ?? 0),
      bottomLeft: Radius.circular(getRadius(bottomLeft ?? 'none') ?? 0),
      bottomRight: Radius.circular(getRadius(bottomRight ?? 'none') ?? 0),
    );
  }

  @override
  double? customRadius(String value) {
    if (value.endsWith('px')) {
      return double.tryParse(value.replaceAll('px', '').trim());
    }
    if (value.endsWith('%')) {
      final percent = double.tryParse(value.replaceAll('%', '').trim());
      if (percent != null) {
        return (percent / 100) * full;
      }
    }
    return null;
  }

  @override
  BorderRadius? customBorderRadius(String value) {
    final resolved = customRadius(value);
    return resolved != null ? BorderRadius.circular(resolved) : null;
  }

  @override
  BorderRadius get noneRadius => BorderRadius.circular(none);
  @override
  BorderRadius get smRadius => BorderRadius.circular(sm);
  @override
  BorderRadius get baseRadius => BorderRadius.circular(base);
  @override
  BorderRadius get mdRadius => BorderRadius.circular(md);
  @override
  BorderRadius get lgRadius => BorderRadius.circular(lg);
  @override
  BorderRadius get xlRadius => BorderRadius.circular(xl);
  @override
  BorderRadius get x2lRadius => BorderRadius.circular(x2l);
  @override
  BorderRadius get x3lRadius => BorderRadius.circular(x3l);
  @override
  BorderRadius get fullRadius => BorderRadius.circular(full);

  @override
  BorderRadius get topSmRadius => BorderRadius.only(
    topLeft: Radius.circular(sm),
    topRight: Radius.circular(sm),
  );
  @override
  BorderRadius get bottomLgRadius => BorderRadius.only(
    bottomLeft: Radius.circular(lg),
    bottomRight: Radius.circular(lg),
  );
  @override
  BorderRadius get topLeftMdRadius =>
      BorderRadius.only(topLeft: Radius.circular(md));
  @override
  BorderRadius get bottomRightXlRadius =>
      BorderRadius.only(bottomRight: Radius.circular(xl));
}
