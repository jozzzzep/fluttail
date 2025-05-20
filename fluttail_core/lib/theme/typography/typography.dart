import 'package:flutter/rendering.dart';

/// An abstract class defining the typography system for Fluttail.
abstract class FluttailTypography {
  /// Provides access to font sizes (e.g., text-xs, text-sm, text-lg).
  FluttailFontSizes get sizes;

  /// Provides access to font weights (e.g., font-light, font-bold).
  FluttailFontWeights get weights;

  /// Provides access to line heights (e.g., leading-none, leading-snug).
  FluttailLineHeights get lineHeights;

  /// Provides access to letter spacings (e.g., tracking-tight, tracking-wide).
  FluttailLetterSpacings get letterSpacings;

  /// Provides access to text decorations (e.g., underline, line-through).
  FluttailTextDecorations get decorations;

  /// Provides access to font styles (e.g., normal, italic).
  FluttailFontStyles get styles;

  /// Provides access to text transforms (e.g., uppercase, lowercase).
  FluttailTextTransforms get transforms;

  /// Provides access to text behaviors (e.g., wrap, overflow).
  FluttailTextBehaviors get behaviors;

  /// Provides access to text indent tokens.
  FluttailTextIndents get indents;

  /// Provides access to font variation axes for variable fonts.
  FluttailFontVariations get variations;

  /// Provides access to semantic roles (e.g., heading, body, caption).
  FluttailTypographyRoles get roles;

  /// A map of custom-registered text styles.
  Map<String, TextStyle> get custom;

  /// Resolves a combined TextStyle based on the provided parameters.
  ///
  /// [size] - The font size to use.
  /// [weight] - The font weight to use.
  /// [lineHeight] - The line height to use.
  /// [letterSpacing] - The letter spacing to use.
  /// [decoration] - The text decoration to use.
  /// [fontStyle] - The font style to use.
  /// [semanticRole] - The semantic role to use.
  /// [fontVariations] - A list of font variations to apply.
  TextStyle resolve({
    String? size,
    String? weight,
    String? lineHeight,
    String? letterSpacing,
    String? decoration,
    String? fontStyle,
    String? semanticRole,
    List<FontVariation>? fontVariations,
  });

  /// Registers a custom text style with the given [name] and [style].
  void registerCustom(String name, TextStyle style);

  /// Unregisters a custom text style with the given [name].
  void unregisterCustom(String name);

  /// Checks if a custom style with the given [name] exists.
  bool hasCustom(String name);

  /// Retrieves a custom style by [name]. Throws if the style is missing.
  TextStyle getCustom(String name);

  /// Tries to retrieve a custom style by [name]. Returns null if missing.
  TextStyle? tryGetCustom(String name);
}

/// An abstract class defining font sizes for Fluttail.
abstract class FluttailFontSizes {
  /// Extra small font size.
  double get xs;

  /// Small font size.
  double get sm;

  /// Base font size.
  double get base;

  /// Large font size.
  double get lg;

  /// Extra large font size.
  double get xl;

  /// 2x extra large font size.
  double get x2l;

  /// 3x extra large font size.
  double get x3l;

  /// 4x extra large font size.
  double get x4l;

  /// 5x extra large font size.
  double get x5l;

  /// 6x extra large font size.
  double get x6l;

  /// 7x extra large font size.
  double get x7l;

  /// 8x extra large font size.
  double get x8l;

  /// 9x extra large font size.
  double get x9l;

  /// A map of all font sizes.
  Map<String, double> get all;

  /// Tries to get a font size by [name]. Returns null if not found.
  double? tryGet(String name);

  /// Checks if a font size with the given [name] exists.
  bool has(String name);
}

/// An abstract class defining font weights for Fluttail.
abstract class FluttailFontWeights {
  /// Thin font weight.
  FontWeight get thin;

  /// Extra light font weight.
  FontWeight get extraLight;

  /// Light font weight.
  FontWeight get light;

  /// Normal font weight.
  FontWeight get normal;

  /// Medium font weight.
  FontWeight get medium;

  /// Semi-bold font weight.
  FontWeight get semiBold;

  /// Bold font weight.
  FontWeight get bold;

  /// Extra bold font weight.
  FontWeight get extraBold;

  /// Black font weight.
  FontWeight get black;

  /// A map of all font weights.
  Map<String, FontWeight> get all;

  /// Tries to get a font weight by [name]. Returns null if not found.
  FontWeight? tryGet(String name);

  /// Checks if a font weight with the given [name] exists.
  bool has(String name);
}

/// An abstract class defining line heights for Fluttail.
abstract class FluttailLineHeights {
  /// No line height.
  double get none;

  /// Tight line height.
  double get tight;

  /// Snug line height.
  double get snug;

  /// Normal line height.
  double get normal;

  /// Relaxed line height.
  double get relaxed;

  /// Loose line height.
  double get loose;

  /// A map of all line heights.
  Map<String, double> get all;

  /// Tries to get a line height by [name]. Returns null if not found.
  double? tryGet(String name);

  /// Checks if a line height with the given [name] exists.
  bool has(String name);
}

/// An abstract class defining letter spacings for Fluttail.
abstract class FluttailLetterSpacings {
  /// Tighter letter spacing.
  double get tighter;

  /// Tight letter spacing.
  double get tight;

  /// Normal letter spacing.
  double get normal;

  /// Wide letter spacing.
  double get wide;

  /// Wider letter spacing.
  double get wider;

  /// Widest letter spacing.
  double get widest;

  /// A map of all letter spacings.
  Map<String, double> get all;

  /// Tries to get a letter spacing by [name]. Returns null if not found.
  double? tryGet(String name);

  /// Checks if a letter spacing with the given [name] exists.
  bool has(String name);
}

/// An abstract class defining text decorations for Fluttail.
abstract class FluttailTextDecorations {
  /// No text decoration.
  TextDecoration get none;

  /// Underline text decoration.
  TextDecoration get underline;

  /// Overline text decoration.
  TextDecoration get overline;

  /// Line-through text decoration.
  TextDecoration get lineThrough;

  /// A map of all text decorations.
  Map<String, TextDecoration> get all;

  /// Tries to get a text decoration by [name]. Returns null if not found.
  TextDecoration? tryGet(String name);

  /// Checks if a text decoration with the given [name] exists.
  bool has(String name);
}

/// An abstract class defining font styles for Fluttail.
abstract class FluttailFontStyles {
  /// Normal font style.
  FontStyle get normal;

  /// Italic font style.
  FontStyle get italic;

  /// A map of all font styles.
  Map<String, FontStyle> get all;

  /// Tries to get a font style by [name]. Returns null if not found.
  FontStyle? tryGet(String name);

  /// Checks if a font style with the given [name] exists.
  bool has(String name);
}

/// An abstract class defining text transforms for Fluttail.
abstract class FluttailTextTransforms {
  /// Uppercase text transform.
  String get uppercase;

  /// Lowercase text transform.
  String get lowercase;

  /// Capitalize text transform.
  String get capitalize;

  /// Normal text transform.
  String get normal;

  /// A map of all text transforms.
  Map<String, String> get all;

  /// Tries to get a text transform by [name]. Returns null if not found.
  String? tryGet(String name);

  /// Checks if a text transform with the given [name] exists.
  bool has(String name);
}

/// An abstract class defining text behaviors for Fluttail.
abstract class FluttailTextBehaviors {
  /// Clip text overflow behavior.
  TextOverflow get clip;

  /// Ellipsis text overflow behavior.
  TextOverflow get ellipsis;

  /// Fade text overflow behavior.
  TextOverflow get fade;

  /// Wrap text behavior.
  bool get wrap;

  /// No wrap text behavior.
  bool get noWrap;

  /// A map of all text overflow behaviors.
  Map<String, TextOverflow> get overflowAll;

  /// A map of all text wrap behaviors.
  Map<String, bool> get wrapAll;
}

/// An abstract class defining text indents for Fluttail.
abstract class FluttailTextIndents {
  /// Small text indent.
  double get sm;

  /// Medium text indent.
  double get md;

  /// Large text indent.
  double get lg;

  /// A map of all text indents.
  Map<String, double> get all;
}

/// An abstract class defining font variations for Fluttail.
abstract class FluttailFontVariations {
  /// A map of all font variations.
  Map<String, FontVariation> get all;

  /// Tries to get a font variation by [name]. Returns null if not found.
  FontVariation? tryGet(String name);

  /// Checks if a font variation with the given [name] exists.
  bool has(String name);
}

/// An abstract class defining typography roles for Fluttail.
abstract class FluttailTypographyRoles {
  /// Text style for heading1.
  TextStyle get heading1;

  /// Text style for heading2.
  TextStyle get heading2;

  /// Text style for heading3.
  TextStyle get heading3;

  /// Text style for body.
  TextStyle get body;

  /// Text style for caption.
  TextStyle get caption;

  /// Text style for overline.
  TextStyle get overline;

  /// Text style for prose.
  TextStyle get prose;

  /// Text style for first letter.
  TextStyle get firstLetter;

  /// Text style for first line.
  TextStyle get firstLine;

  /// Text style for marker.
  TextStyle get marker;

  /// A map of all typography roles.
  Map<String, TextStyle> get all;

  /// Tries to get a typography role by [name]. Returns null if not found.
  TextStyle? tryGet(String name);

  /// Checks if a typography role with the given [name] exists.
  bool has(String name);
}
