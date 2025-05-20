import 'package:fluttail_core/theme/typography/typography.dart';
import 'package:flutter/rendering.dart';

class FluttailTypographyDefault implements FluttailTypography {
  @override
  final FluttailFontSizes sizes = _DefaultFontSizes();

  @override
  final FluttailFontWeights weights = _DefaultFontWeights();

  @override
  final FluttailLineHeights lineHeights = _DefaultLineHeights();

  @override
  final FluttailLetterSpacings letterSpacings = _DefaultLetterSpacings();

  @override
  final FluttailTextDecorations decorations = _DefaultTextDecorations();

  @override
  final FluttailFontStyles styles = _DefaultFontStyles();

  @override
  final FluttailTextTransforms transforms = _DefaultTextTransforms();

  @override
  final FluttailTextBehaviors behaviors = _DefaultTextBehaviors();

  @override
  final FluttailTextIndents indents = _DefaultTextIndents();

  @override
  final FluttailFontVariations variations = _DefaultFontVariations();

  @override
  final FluttailTypographyRoles roles = _DefaultTypographyRoles();

  @override
  final Map<String, TextStyle> custom = {};

  @override
  TextStyle resolve({
    String? size,
    String? weight,
    String? lineHeight,
    String? letterSpacing,
    String? decoration,
    String? fontStyle,
    String? semanticRole,
    List<FontVariation>? fontVariations,
  }) {
    final base =
        semanticRole != null ? roles.tryGet(semanticRole) : TextStyle();

    return base?.copyWith(
          fontSize: size != null ? sizes.tryGet(size) : null,
          fontWeight: weight != null ? weights.tryGet(weight) : null,
          height: lineHeight != null ? lineHeights.tryGet(lineHeight) : null,
          letterSpacing:
              letterSpacing != null
                  ? letterSpacings.tryGet(letterSpacing)
                  : null,
          decoration:
              decoration != null ? decorations.tryGet(decoration) : null,
          fontStyle: fontStyle != null ? styles.tryGet(fontStyle) : null,
          fontVariations: fontVariations,
        ) ??
        TextStyle();
  }

  @override
  void registerCustom(String name, TextStyle style) => custom[name] = style;

  @override
  void unregisterCustom(String name) => custom.remove(name);

  @override
  bool hasCustom(String name) => custom.containsKey(name);

  @override
  TextStyle getCustom(String name) {
    if (!custom.containsKey(name)) {
      throw Exception('Custom style "$name" not found.');
    }
    return custom[name]!;
  }

  @override
  TextStyle? tryGetCustom(String name) => custom[name];
}

class _DefaultFontSizes implements FluttailFontSizes {
  @override
  final xs = 12.0;
  @override
  final sm = 14.0;
  @override
  final base = 16.0;
  @override
  final lg = 18.0;
  @override
  final xl = 20.0;
  @override
  final x2l = 24.0;
  @override
  final x3l = 30.0;
  @override
  final x4l = 36.0;
  @override
  final x5l = 48.0;
  @override
  final x6l = 60.0;
  @override
  final x7l = 72.0;
  @override
  final x8l = 96.0;
  @override
  final x9l = 128.0;

  @override
  get all => {
    'xs': xs,
    'sm': sm,
    'base': base,
    'lg': lg,
    'xl': xl,
    '2xl': x2l,
    '3xl': x3l,
    '4xl': x4l,
    '5xl': x5l,
    '6xl': x6l,
    '7xl': x7l,
    '8xl': x8l,
    '9xl': x9l,
  };

  @override
  double? tryGet(String name) => all[name];
  @override
  bool has(String name) => all.containsKey(name);
}

class _DefaultFontWeights implements FluttailFontWeights {
  @override
  final thin = FontWeight.w100;
  @override
  final extraLight = FontWeight.w200;
  @override
  final light = FontWeight.w300;
  @override
  final normal = FontWeight.w400;
  @override
  final medium = FontWeight.w500;
  @override
  final semiBold = FontWeight.w600;
  @override
  final bold = FontWeight.w700;
  @override
  final extraBold = FontWeight.w800;
  @override
  final black = FontWeight.w900;

  @override
  get all => {
    'thin': thin,
    'extraLight': extraLight,
    'light': light,
    'normal': normal,
    'medium': medium,
    'semiBold': semiBold,
    'bold': bold,
    'extraBold': extraBold,
    'black': black,
  };

  @override
  FontWeight? tryGet(String name) => all[name];
  @override
  bool has(String name) => all.containsKey(name);
}

class _DefaultLineHeights implements FluttailLineHeights {
  @override
  final none = 1.0;
  @override
  final tight = 1.25;
  @override
  final snug = 1.375;
  @override
  final normal = 1.5;
  @override
  final relaxed = 1.625;
  @override
  final loose = 2.0;
  @override
  get all => {
    'none': none,
    'tight': tight,
    'snug': snug,
    'normal': normal,
    'relaxed': relaxed,
    'loose': loose,
  };
  @override
  double? tryGet(String name) => all[name];
  @override
  bool has(String name) => all.containsKey(name);
}

class _DefaultLetterSpacings implements FluttailLetterSpacings {
  @override
  final tighter = -0.5;
  @override
  final tight = -0.25;
  @override
  final normal = 0.0;
  @override
  final wide = 0.25;
  @override
  final wider = 0.5;
  @override
  final widest = 1.0;
  @override
  get all => {
    'tighter': tighter,
    'tight': tight,
    'normal': normal,
    'wide': wide,
    'wider': wider,
    'widest': widest,
  };
  @override
  double? tryGet(String name) => all[name];
  @override
  bool has(String name) => all.containsKey(name);
}

class _DefaultTextDecorations implements FluttailTextDecorations {
  @override
  final none = TextDecoration.none;
  @override
  final underline = TextDecoration.underline;
  @override
  final overline = TextDecoration.overline;
  @override
  final lineThrough = TextDecoration.lineThrough;
  @override
  get all => {
    'none': none,
    'underline': underline,
    'overline': overline,
    'lineThrough': lineThrough,
  };
  @override
  TextDecoration? tryGet(String name) => all[name];
  @override
  bool has(String name) => all.containsKey(name);
}

class _DefaultFontStyles implements FluttailFontStyles {
  @override
  final normal = FontStyle.normal;
  @override
  final italic = FontStyle.italic;
  @override
  get all => {'normal': normal, 'italic': italic};
  @override
  FontStyle? tryGet(String name) => all[name];
  @override
  bool has(String name) => all.containsKey(name);
}

class _DefaultTextTransforms implements FluttailTextTransforms {
  @override
  final uppercase = 'uppercase';
  @override
  final lowercase = 'lowercase';
  @override
  final capitalize = 'capitalize';
  @override
  final normal = 'normal';

  @override
  final all = {
    'uppercase': 'uppercase',
    'lowercase': 'lowercase',
    'capitalize': 'capitalize',
    'normal': 'normal',
  };

  @override
  String? tryGet(String name) => all[name];
  @override
  bool has(String name) => all.containsKey(name);
}

class _DefaultTextBehaviors implements FluttailTextBehaviors {
  @override
  final clip = TextOverflow.clip;
  @override
  final ellipsis = TextOverflow.ellipsis;
  @override
  final fade = TextOverflow.fade;
  @override
  final wrap = true;
  @override
  final noWrap = false;

  @override
  final overflowAll = {
    'clip': TextOverflow.clip,
    'ellipsis': TextOverflow.ellipsis,
    'fade': TextOverflow.fade,
  };

  @override
  final wrapAll = {'wrap': true, 'nowrap': false};
}

class _DefaultTextIndents implements FluttailTextIndents {
  @override
  final sm = 8.0; // ~0.5rem
  @override
  final md = 16.0; // ~1rem
  @override
  final lg = 24.0; // ~1.5rem

  @override
  get all => {'sm': sm, 'md': md, 'lg': lg};
}

class _DefaultFontVariations implements FluttailFontVariations {
  @override
  final all = <String, FontVariation>{};

  @override
  FontVariation? tryGet(String name) => all[name];
  @override
  bool has(String name) => all.containsKey(name);
}

class _DefaultTypographyRoles implements FluttailTypographyRoles {
  @override
  final heading1 = TextStyle(
    fontSize: 36.0,
    fontWeight: FontWeight.bold,
    height: 1.25,
  );
  @override
  final heading2 = TextStyle(
    fontSize: 30.0,
    fontWeight: FontWeight.bold,
    height: 1.3,
  );
  @override
  final heading3 = TextStyle(
    fontSize: 24.0,
    fontWeight: FontWeight.bold,
    height: 1.35,
  );
  @override
  final body = TextStyle(
    fontSize: 16.0,
    fontWeight: FontWeight.normal,
    height: 1.5,
  );
  @override
  final caption = TextStyle(
    fontSize: 14.0,
    fontWeight: FontWeight.normal,
    height: 1.4,
  );
  @override
  final overline = TextStyle(
    fontSize: 12.0,
    fontWeight: FontWeight.normal,
    height: 1.4,
  );
  @override
  final prose = TextStyle(fontSize: 16.0, height: 1.7);
  @override
  final firstLetter = TextStyle(fontSize: 36.0, fontWeight: FontWeight.bold);
  @override
  final firstLine = TextStyle(fontWeight: FontWeight.bold);
  @override
  final marker = TextStyle(
    fontWeight: FontWeight.bold,
    color: const Color(0xFF6B7280),
  ); // gray-500

  @override
  get all => {
    'heading1': heading1,
    'heading2': heading2,
    'heading3': heading3,
    'body': body,
    'caption': caption,
    'overline': overline,
    'prose': prose,
    'firstLetter': firstLetter,
    'firstLine': firstLine,
    'marker': marker,
  };

  @override
  TextStyle? tryGet(String name) => all[name];
  @override
  bool has(String name) => all.containsKey(name);
}
