import 'package:flutter/widgets.dart';

/// An abstract class defining the radius system contract for Fluttail.
/// This class provides a comprehensive set of radius values, including semantic, scale-based, directional, corner, and custom radius values.
abstract class FluttailRadius {
  /// Represents a radius of 0 pixels.
  double get none;

  /// Represents a small radius of 2 pixels.
  double get sm;

  /// Represents a base radius of 4 pixels.
  double get base;

  /// Represents a medium radius of 6 pixels.
  double get md;

  /// Represents a large radius of 8 pixels.
  double get lg;

  /// Represents an extra large radius of 12 pixels.
  double get xl;

  /// Represents a 2x extra large radius of 16 pixels.
  double get x2l;

  /// Represents a 3x extra large radius of 24 pixels.
  double get x3l;

  /// Represents a full circle radius of 9999 pixels.
  double get full;

  /// Resolves a radius value by its token name or alias.
  ///
  /// [name] is the token name or alias, such as 'md', 'top-lg', or 'tl-sm'.
  /// Returns the corresponding radius value, or null if not found.
  double? getRadius(String name);

  /// Checks if a given key exists in the radius system.
  ///
  /// [name] is the key to check.
  /// Returns true if the key exists, otherwise false.
  bool hasKey(String name);

  /// Attempts to retrieve a radius value by its token name.
  ///
  /// [name] is the token name.
  /// Returns the corresponding radius value, or null if not found.
  double? tryRadius(String name);

  /// Provides a list of all available token names.
  List<String> get availableKeys;

  /// Resolves arbitrary or custom radius values.
  ///
  /// [value] is the custom value, such as '32px' or '50%'.
  /// Returns the corresponding radius value, or null if not resolvable.
  double? customRadius(String value);

  /// Retrieves a uniform border radius by its token name.
  ///
  /// [name] is the token name.
  /// Returns a [BorderRadius] object, or null if not found.
  BorderRadius? borderRadius(String name);

  /// Retrieves a directional border radius for specified sides.
  ///
  /// [top], [right], [bottom], and [left] are the token names for each side.
  /// Returns a [BorderRadius] object with the specified directional radii.
  BorderRadius borderRadiusOnly({
    String? top,
    String? right,
    String? bottom,
    String? left,
  });

  /// Retrieves a corner-specific border radius.
  ///
  /// [topLeft], [topRight], [bottomLeft], and [bottomRight] are the token names for each corner.
  /// Returns a [BorderRadius] object with the specified corner radii.
  BorderRadius borderRadiusCorners({
    String? topLeft,
    String? topRight,
    String? bottomLeft,
    String? bottomRight,
  });

  /// Retrieves a [BorderRadius] from a custom value.
  ///
  /// [value] is the custom value.
  /// Returns a [BorderRadius] object, or null if not resolvable.
  BorderRadius? customBorderRadius(String value);

  // === Named BorderRadius shortcuts ===

  /// A [BorderRadius] with no radius.
  BorderRadius get noneRadius => BorderRadius.circular(none);

  /// A [BorderRadius] with a small radius.
  BorderRadius get smRadius => BorderRadius.circular(sm);

  /// A [BorderRadius] with a base radius.
  BorderRadius get baseRadius => BorderRadius.circular(base);

  /// A [BorderRadius] with a medium radius.
  BorderRadius get mdRadius => BorderRadius.circular(md);

  /// A [BorderRadius] with a large radius.
  BorderRadius get lgRadius => BorderRadius.circular(lg);

  /// A [BorderRadius] with an extra large radius.
  BorderRadius get xlRadius => BorderRadius.circular(xl);

  /// A [BorderRadius] with a 2x extra large radius.
  BorderRadius get x2lRadius => BorderRadius.circular(x2l);

  /// A [BorderRadius] with a 3x extra large radius.
  BorderRadius get x3lRadius => BorderRadius.circular(x3l);

  /// A [BorderRadius] with a full circle radius.
  BorderRadius get fullRadius => BorderRadius.circular(full);

  // === Common directional shortcuts ===

  /// A [BorderRadius] with a small radius applied to the top-left and top-right corners.
  BorderRadius get topSmRadius => BorderRadius.only(
    topLeft: Radius.circular(sm),
    topRight: Radius.circular(sm),
  );

  /// A [BorderRadius] with a large radius applied to the bottom-left and bottom-right corners.
  BorderRadius get bottomLgRadius => BorderRadius.only(
    bottomLeft: Radius.circular(lg),
    bottomRight: Radius.circular(lg),
  );

  /// A [BorderRadius] with a medium radius applied to the top-left corner.
  BorderRadius get topLeftMdRadius =>
      BorderRadius.only(topLeft: Radius.circular(md));

  /// A [BorderRadius] with an extra large radius applied to the bottom-right corner.
  BorderRadius get bottomRightXlRadius =>
      BorderRadius.only(bottomRight: Radius.circular(xl));
}
