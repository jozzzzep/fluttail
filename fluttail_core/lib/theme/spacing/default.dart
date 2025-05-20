import 'package:fluttail_core/theme/spacing/spacing.dart';
import 'package:flutter/widgets.dart';

/// Default implementation of the [FluttailSpacing] interface.
///
/// Provides a predefined set of spacing values and methods to access them.
class DefaultFluttailSpacing implements FluttailSpacing {
  /// Internal map representing the scale of spacing values.
  final Map<num, double> _scale = {
    0: 0.0,
    0.5: 2.0,
    0.75: 3.0,
    1: 4.0,
    1.25: 5.0,
    1.5: 6.0,
    1.75: 7.0,
    2: 8.0,
    2.25: 9.0,
    2.5: 10.0,
    2.75: 11.0,
    3: 12.0,
    3.25: 13.0,
    3.5: 14.0,
    4: 16.0,
    5: 20.0,
    6: 24.0,
    7: 28.0,
    8: 32.0,
    9: 36.0,
    10: 40.0,
    11: 44.0,
    12: 48.0,
    14: 56.0,
    16: 64.0,
    20: 80.0,
    24: 96.0,
    28: 112.0,
    32: 128.0,
    36: 144.0,
    40: 160.0,
    44: 176.0,
    48: 192.0,
    52: 208.0,
    56: 224.0,
    60: 240.0,
    64: 256.0,
    72: 288.0,
    80: 320.0,
    96: 384.0,
  };

  /// Internal map representing the negative scale of spacing values.
  late final Map<num, double> _negativeScale = {
    for (final entry in _scale.entries)
      if (entry.key != 0) -entry.key: -entry.value,
  };

  /// Internal map representing semantic spacing values.
  final Map<String, dynamic> _semantic = {
    'auto': 'auto',
    'full': 1.0,
    '1/2': 0.5,
    '1/3': 1 / 3,
    '2/3': 2 / 3,
    '1/4': 0.25,
    '3/4': 0.75,
  };

  /// The base value for rem calculations.
  ///
  /// This value is used to resolve rem units into pixel values.
  @override
  double get remBase => 16.0;

  /// Resolves rem units into pixel values using the [remBase].
  ///
  /// Multiplies the given [remUnits] by the [remBase] to get the pixel value.
  @override
  double resolveRem(double remUnits) => remUnits * remBase;

  /// Returns the spacing value associated with the given [key].
  ///
  /// If the [key] is not found, it returns 0.0.
  @override
  double value(num key) => _scale[key] ?? 0.0;

  /// Returns the negative spacing value associated with the given [key].
  ///
  /// If the [key] is not found, it returns the negative of the value for the [key].
  @override
  double negativeValue(num key) => _negativeScale[key] ?? -value(key);

  /// Returns the semantic value associated with the given [key].
  ///
  /// Semantic values are predefined and can include values like 'auto', 'full', etc.
  @override
  dynamic semanticValue(String key) => _semantic[key];

  /// A map representing the scale of spacing values.
  ///
  /// The keys are numerical values, and the values are the corresponding spacing values.
  @override
  Map<num, double> get scale => _scale;

  /// A map representing the negative scale of spacing values.
  ///
  /// The keys are numerical values, and the values are the corresponding negative spacing values.
  @override
  Map<num, double> get negativeScale => _negativeScale;

  /// A map representing semantic spacing values.
  ///
  /// The keys are string identifiers, and the values are the corresponding semantic values.
  @override
  Map<String, dynamic> get semantic => _semantic;

  /// A map for custom spacing values defined by the user.
  ///
  /// The keys are string identifiers, and the values are the corresponding custom spacing values.
  @override
  Map<String, double> get custom => {};

  /// Checks if the given [key] exists in the scale.
  ///
  /// Returns true if the [key] is found, otherwise false.
  @override
  bool hasKey(num key) => _scale.containsKey(key);

  /// Tries to get the spacing value for the given [key].
  ///
  /// Returns the value if found, otherwise returns null.
  @override
  double? tryValue(num key) => _scale[key];

  /// Returns a list of available keys in the scale.
  ///
  /// This list can be used to iterate over all defined spacing keys.
  @override
  List<num> get availableKeys => _scale.keys.toList();

  /// Returns an [EdgeInsets] with all sides set to the spacing value for the given [key].
  @override
  EdgeInsets all(num key) => EdgeInsets.all(value(key));

  /// Returns an [EdgeInsets] with vertical and horizontal sides set to the respective spacing values.
  ///
  /// The [vertical] and [horizontal] parameters default to 0 if not provided.
  @override
  EdgeInsets symmetric({num vertical = 0, num horizontal = 0}) =>
      EdgeInsets.symmetric(
        vertical: value(vertical),
        horizontal: value(horizontal),
      );

  /// Returns an [EdgeInsets] with each side set to the respective spacing values.
  ///
  /// The [top], [right], [bottom], and [left] parameters default to 0 if not provided.
  @override
  EdgeInsets only({num top = 0, num right = 0, num bottom = 0, num left = 0}) =>
      EdgeInsets.only(
        top: value(top),
        right: value(right),
        bottom: value(bottom),
        left: value(left),
      );

  /// Returns an [EdgeInsets] with horizontal sides set to the spacing value for the given [key].
  @override
  EdgeInsets horizontal(num key) =>
      EdgeInsets.symmetric(horizontal: value(key));

  /// Returns an [EdgeInsets] with vertical sides set to the spacing value for the given [key].
  @override
  EdgeInsets vertical(num key) => EdgeInsets.symmetric(vertical: value(key));

  @override
  double get s0 => value(0);
  @override
  double get s0_5 => value(0.5);
  @override
  double get s0_75 => value(0.75);
  @override
  double get s1 => value(1);
  @override
  double get s1_25 => value(1.25);
  @override
  double get s1_5 => value(1.5);
  @override
  double get s1_75 => value(1.75);
  @override
  double get s2 => value(2);
  @override
  double get s2_25 => value(2.25);
  @override
  double get s2_5 => value(2.5);
  @override
  double get s2_75 => value(2.75);
  @override
  double get s3 => value(3);
  @override
  double get s3_25 => value(3.25);
  @override
  double get s3_5 => value(3.5);
  @override
  double get s4 => value(4);
  @override
  double get s5 => value(5);
  @override
  double get s6 => value(6);
  @override
  double get s7 => value(7);
  @override
  double get s8 => value(8);
  @override
  double get s9 => value(9);
  @override
  double get s10 => value(10);
  @override
  double get s11 => value(11);
  @override
  double get s12 => value(12);
  @override
  double get s14 => value(14);
  @override
  double get s16 => value(16);
  @override
  double get s20 => value(20);
  @override
  double get s24 => value(24);
  @override
  double get s28 => value(28);
  @override
  double get s32 => value(32);
  @override
  double get s36 => value(36);
  @override
  double get s40 => value(40);
  @override
  double get s44 => value(44);
  @override
  double get s48 => value(48);
  @override
  double get s52 => value(52);
  @override
  double get s56 => value(56);
  @override
  double get s60 => value(60);
  @override
  double get s64 => value(64);
  @override
  double get s72 => value(72);
  @override
  double get s80 => value(80);
  @override
  double get s96 => value(96);
}
