import 'package:flutter/widgets.dart';

/// An abstract class defining the contract for spacing scales in a UI framework.
///
/// This class provides methods and properties to handle spacing values, including
/// fractional keys, negative values, semantic values, rem support, and directional helpers.
abstract class FluttailSpacing {
  /// Returns the spacing value associated with the given [key].
  ///
  /// If the [key] is not found, it returns 0.0.
  double value(num key);

  /// Returns the negative spacing value associated with the given [key].
  ///
  /// If the [key] is not found, it returns the negative of the value for the [key].
  double negativeValue(num key);

  /// Returns the semantic value associated with the given [key].
  ///
  /// Semantic values are predefined and can include values like 'auto', 'full', etc.
  dynamic semanticValue(String key);

  /// A map representing the scale of spacing values.
  ///
  /// The keys are numerical values, and the values are the corresponding spacing values.
  Map<num, double> get scale;

  /// A map representing the negative scale of spacing values.
  ///
  /// The keys are numerical values, and the values are the corresponding negative spacing values.
  Map<num, double> get negativeScale;

  /// A map representing semantic spacing values.
  ///
  /// The keys are string identifiers, and the values are the corresponding semantic values.
  Map<String, dynamic> get semantic;

  /// The base value for rem calculations.
  ///
  /// This value is used to resolve rem units into pixel values.
  double get remBase;

  /// Resolves rem units into pixel values using the [remBase].
  ///
  /// Multiplies the given [remUnits] by the [remBase] to get the pixel value.
  double resolveRem(double remUnits);

  /// Predefined spacing value for 0 units.
  double get s0;

  /// Predefined spacing value for 0.5 units.
  double get s0_5;

  /// Predefined spacing value for 0.75 units.
  double get s0_75;

  /// Predefined spacing value for 1 unit.
  double get s1;

  /// Predefined spacing value for 1.25 units.
  double get s1_25;

  /// Predefined spacing value for 1.5 units.
  double get s1_5;

  /// Predefined spacing value for 1.75 units.
  double get s1_75;

  /// Predefined spacing value for 2 units.
  double get s2;

  /// Predefined spacing value for 2.25 units.
  double get s2_25;

  /// Predefined spacing value for 2.5 units.
  double get s2_5;

  /// Predefined spacing value for 2.75 units.
  double get s2_75;

  /// Predefined spacing value for 3 units.
  double get s3;

  /// Predefined spacing value for 3.25 units.
  double get s3_25;

  /// Predefined spacing value for 3.5 units.
  double get s3_5;

  /// Predefined spacing value for 4 units.
  double get s4;

  /// Predefined spacing value for 5 units.
  double get s5;

  /// Predefined spacing value for 6 units.
  double get s6;

  /// Predefined spacing value for 7 units.
  double get s7;

  /// Predefined spacing value for 8 units.
  double get s8;

  /// Predefined spacing value for 9 units.
  double get s9;

  /// Predefined spacing value for 10 units.
  double get s10;

  /// Predefined spacing value for 11 units.
  double get s11;

  /// Predefined spacing value for 12 units.
  double get s12;

  /// Predefined spacing value for 14 units.
  double get s14;

  /// Predefined spacing value for 16 units.
  double get s16;

  /// Predefined spacing value for 20 units.
  double get s20;

  /// Predefined spacing value for 24 units.
  double get s24;

  /// Predefined spacing value for 28 units.
  double get s28;

  /// Predefined spacing value for 32 units.
  double get s32;

  /// Predefined spacing value for 36 units.
  double get s36;

  /// Predefined spacing value for 40 units.
  double get s40;

  /// Predefined spacing value for 44 units.
  double get s44;

  /// Predefined spacing value for 48 units.
  double get s48;

  /// Predefined spacing value for 52 units.
  double get s52;

  /// Predefined spacing value for 56 units.
  double get s56;

  /// Predefined spacing value for 60 units.
  double get s60;

  /// Predefined spacing value for 64 units.
  double get s64;

  /// Predefined spacing value for 72 units.
  double get s72;

  /// Predefined spacing value for 80 units.
  double get s80;

  /// Predefined spacing value for 96 units.
  double get s96;

  /// A map for custom spacing values defined by the user.
  ///
  /// The keys are string identifiers, and the values are the corresponding custom spacing values.
  Map<String, double> get custom;

  /// Checks if the given [key] exists in the scale.
  ///
  /// Returns true if the [key] is found, otherwise false.
  bool hasKey(num key);

  /// Tries to get the spacing value for the given [key].
  ///
  /// Returns the value if found, otherwise returns null.
  double? tryValue(num key);

  /// Returns a list of available keys in the scale.
  ///
  /// This list can be used to iterate over all defined spacing keys.
  List<num> get availableKeys;

  /// Returns an [EdgeInsets] with all sides set to the spacing value for the given [key].
  EdgeInsets all(num key);

  /// Returns an [EdgeInsets] with vertical and horizontal sides set to the respective spacing values.
  ///
  /// The [vertical] and [horizontal] parameters default to 0 if not provided.
  EdgeInsets symmetric({num vertical, num horizontal});

  /// Returns an [EdgeInsets] with each side set to the respective spacing values.
  ///
  /// The [top], [right], [bottom], and [left] parameters default to 0 if not provided.
  EdgeInsets only({num top, num right, num bottom, num left});

  /// Returns an [EdgeInsets] with horizontal sides set to the spacing value for the given [key].
  EdgeInsets horizontal(num key);

  /// Returns an [EdgeInsets] with vertical sides set to the spacing value for the given [key].
  EdgeInsets vertical(num key);
}
