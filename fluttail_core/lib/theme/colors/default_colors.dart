import 'package:fluttail_core/theme/colors/colors.dart';
import 'package:flutter/widgets.dart';

class ZincColorFamily implements FluttailGrayFamily {
  @override
  Color get shade50 => const Color(0xFFF9F9F9);
  @override
  Color get shade100 => const Color(0xFFF6F6F6);
  @override
  Color get shade200 => const Color(0xFFEAEAEA);
  @override
  Color get shade300 => const Color(0xFFDEDEDE);
  @override
  Color get shade400 => const Color(0xFFB4B4B4);
  @override
  Color get shade500 => const Color(0xFF8D8D8D);
  @override
  Color get shade600 => const Color(0xFF707070);
  @override
  Color get shade700 => const Color(0xFF5E5E5E);
  @override
  Color get shade800 => const Color(0xFF464646);
  @override
  Color get shade900 => const Color(0xFF363636);
  @override
  Color get shade950 => const Color(0xFF242424);

  @override
  Color shade(int value, {bool darkMode = false}) {
    switch (value) {
      case 50:
        return shade50;
      case 100:
        return shade100;
      case 200:
        return shade200;
      case 300:
        return shade300;
      case 400:
        return shade400;
      case 500:
        return shade500;
      case 600:
        return shade600;
      case 700:
        return shade700;
      case 800:
        return shade800;
      case 900:
        return shade900;
      case 950:
        return shade950;
      default:
        throw ArgumentError('Invalid shade: $value');
    }
  }

  @override
  Color get contrastForeground => shade50; // light text on dark bg

  @override
  FluttailColorRole get roles => _ZincRoles();

  @override
  Color withAlpha(int alpha, {int shade = 500}) {
    return this.shade(shade).withAlpha(alpha);
  }
}

class _ZincRoles implements FluttailColorRole {
  @override
  Color get background => const Color(0xFF8D8D8D);
  @override
  Color get foreground => const Color(0xFFF9F9F9);
  @override
  Color get border => const Color(0xFFB4B4B4);
  @override
  Color get ring => const Color(0xFF707070);
}

class SlateColorFamily implements FluttailGrayFamily {
  @override
  Color get shade50 => const Color(0xFFF9FAFB);
  @override
  Color get shade100 => const Color(0xFFF5F6F8);
  @override
  Color get shade200 => const Color(0xFFEDEFF3);
  @override
  Color get shade300 => const Color(0xFFDDDFE5);
  @override
  Color get shade400 => const Color(0xFFB4B9C5);
  @override
  Color get shade500 => const Color(0xFF8D93A4);
  @override
  Color get shade600 => const Color(0xFF71768B);
  @override
  Color get shade700 => const Color(0xFF5E6374);
  @override
  Color get shade800 => const Color(0xFF474B59);
  @override
  Color get shade900 => const Color(0xFF353849);
  @override
  Color get shade950 => const Color(0xFF1F2130);

  @override
  Color shade(int value, {bool darkMode = false}) {
    switch (value) {
      case 50:
        return shade50;
      case 100:
        return shade100;
      case 200:
        return shade200;
      case 300:
        return shade300;
      case 400:
        return shade400;
      case 500:
        return shade500;
      case 600:
        return shade600;
      case 700:
        return shade700;
      case 800:
        return shade800;
      case 900:
        return shade900;
      case 950:
        return shade950;
      default:
        throw ArgumentError('Invalid shade: $value');
    }
  }

  @override
  Color withAlpha(int alpha, {int shade = 500}) {
    return this.shade(shade).withAlpha(alpha);
  }

  @override
  Color get contrastForeground => shade50;

  @override
  FluttailColorRole get roles => _SlateRoles();
}

class _SlateRoles implements FluttailColorRole {
  @override
  Color get background => const Color(0xFF8D93A4);
  @override
  Color get foreground => const Color(0xFFF9FAFB);
  @override
  Color get border => const Color(0xFFB4B9C5);
  @override
  Color get ring => const Color(0xFF71768B);
}

class GrayColorFamily implements FluttailGrayFamily {
  @override
  Color get shade50 => const Color(0xFFF9FAFB);
  @override
  Color get shade100 => const Color(0xFFF5F7F9);
  @override
  Color get shade200 => const Color(0xFFECEFF3);
  @override
  Color get shade300 => const Color(0xFFDEE3EA);
  @override
  Color get shade400 => const Color(0xFFB4BDC9);
  @override
  Color get shade500 => const Color(0xFF8D98A9);
  @override
  Color get shade600 => const Color(0xFF717A8E);
  @override
  Color get shade700 => const Color(0xFF5E6578);
  @override
  Color get shade800 => const Color(0xFF474F5E);
  @override
  Color get shade900 => const Color(0xFF353C48);
  @override
  Color get shade950 => const Color(0xFF21262E);

  @override
  Color shade(int value, {bool darkMode = false}) {
    switch (value) {
      case 50:
        return shade50;
      case 100:
        return shade100;
      case 200:
        return shade200;
      case 300:
        return shade300;
      case 400:
        return shade400;
      case 500:
        return shade500;
      case 600:
        return shade600;
      case 700:
        return shade700;
      case 800:
        return shade800;
      case 900:
        return shade900;
      case 950:
        return shade950;
      default:
        throw ArgumentError('Invalid shade: $value');
    }
  }

  @override
  Color withAlpha(int alpha, {int shade = 500}) {
    return this.shade(shade).withAlpha(alpha);
  }

  @override
  Color get contrastForeground => shade50;

  @override
  FluttailColorRole get roles => _GrayRoles();
}

class _GrayRoles implements FluttailColorRole {
  @override
  Color get background => const Color(0xFF8D98A9);
  @override
  Color get foreground => const Color(0xFFF9FAFB);
  @override
  Color get border => const Color(0xFFB4BDC9);
  @override
  Color get ring => const Color(0xFF717A8E);
}

class NeutralColorFamily implements FluttailGrayFamily {
  @override
  Color get shade50 => const Color(0xFFF9FAFB);
  @override
  Color get shade100 => const Color(0xFFF7F7F7);
  @override
  Color get shade200 => const Color(0xFFEBEBEB);
  @override
  Color get shade300 => const Color(0xFFDEDEDE);
  @override
  Color get shade400 => const Color(0xFFB4B4B4);
  @override
  Color get shade500 => const Color(0xFF8E8E8E);
  @override
  Color get shade600 => const Color(0xFF707070);
  @override
  Color get shade700 => const Color(0xFF5E5E5E);
  @override
  Color get shade800 => const Color(0xFF454545);
  @override
  Color get shade900 => const Color(0xFF343434);
  @override
  Color get shade950 => const Color(0xFF252525);

  @override
  Color shade(int value, {bool darkMode = false}) {
    switch (value) {
      case 50:
        return shade50;
      case 100:
        return shade100;
      case 200:
        return shade200;
      case 300:
        return shade300;
      case 400:
        return shade400;
      case 500:
        return shade500;
      case 600:
        return shade600;
      case 700:
        return shade700;
      case 800:
        return shade800;
      case 900:
        return shade900;
      case 950:
        return shade950;
      default:
        throw ArgumentError('Invalid shade: $value');
    }
  }

  @override
  Color withAlpha(int alpha, {int shade = 500}) {
    return this.shade(shade).withAlpha(alpha);
  }

  @override
  Color get contrastForeground => shade50;

  @override
  FluttailColorRole get roles => _NeutralRoles();
}

class _NeutralRoles implements FluttailColorRole {
  @override
  Color get background => const Color(0xFF8E8E8E);
  @override
  Color get foreground => const Color(0xFFF9FAFB);
  @override
  Color get border => const Color(0xFFB4B4B4);
  @override
  Color get ring => const Color(0xFF707070);
}

class StoneColorFamily implements FluttailGrayFamily {
  @override
  Color get shade50 => const Color(0xFFF9F9F8);
  @override
  Color get shade100 => const Color(0xFFF7F7F6);
  @override
  Color get shade200 => const Color(0xFFECECDA);
  @override
  Color get shade300 => const Color(0xFFDDDDD7);
  @override
  Color get shade400 => const Color(0xFFB5B5B1);
  @override
  Color get shade500 => const Color(0xFF8D8D8B);
  @override
  Color get shade600 => const Color(0xFF71716C);
  @override
  Color get shade700 => const Color(0xFF5F5F59);
  @override
  Color get shade800 => const Color(0xFF44443E);
  @override
  Color get shade900 => const Color(0xFF373732);
  @override
  Color get shade950 => const Color(0xFF252520);

  @override
  Color shade(int value, {bool darkMode = false}) => switch (value) {
    50 => shade50,
    100 => shade100,
    200 => shade200,
    300 => shade300,
    400 => shade400,
    500 => shade500,
    600 => shade600,
    700 => shade700,
    800 => shade800,
    900 => shade900,
    950 => shade950,
    _ => throw ArgumentError('Invalid shade: $value'),
  };

  @override
  Color withAlpha(int alpha, {int shade = 500}) =>
      this.shade(shade).withAlpha(alpha);
  @override
  Color get contrastForeground => shade50;
  @override
  FluttailColorRole get roles => _StoneRoles();
}

class _StoneRoles implements FluttailColorRole {
  @override
  Color get background => const Color(0xFF8D8D8B);
  @override
  Color get foreground => const Color(0xFFF9F9F8);
  @override
  Color get border => const Color(0xFFB5B5B1);
  @override
  Color get ring => const Color(0xFF71716C);
}

class RedColorFamily implements FluttailColorFamily {
  @override
  Color get shade50 => const Color(0xFFF8EAEA);
  @override
  Color get shade100 => const Color(0xFFF0BFBF);
  @override
  Color get shade200 => const Color(0xFFE28989);
  @override
  Color get shade300 => const Color(0xFFD05D5D);
  @override
  Color get shade400 => const Color(0xFFB53939);
  @override
  Color get shade500 => const Color(0xFFA32C2C);
  @override
  Color get shade600 => const Color(0xFF8F2626);
  @override
  Color get shade700 => const Color(0xFF7B2020);
  @override
  Color get shade800 => const Color(0xFF681A1A);
  @override
  Color get shade900 => const Color(0xFF541414);
  @override
  Color get shade950 => const Color(0xFF3A0E0E);

  @override
  Color shade(int value, {bool darkMode = false}) => switch (value) {
    50 => shade50,
    100 => shade100,
    200 => shade200,
    300 => shade300,
    400 => shade400,
    500 => shade500,
    600 => shade600,
    700 => shade700,
    800 => shade800,
    900 => shade900,
    950 => shade950,
    _ => throw ArgumentError('Invalid shade: $value'),
  };

  @override
  Color withAlpha(int alpha, {int shade = 500}) =>
      this.shade(shade).withAlpha(alpha);
  @override
  Color get contrastForeground => shade50;
  @override
  FluttailColorRole get roles => _RedRoles();
}

class _RedRoles implements FluttailColorRole {
  @override
  Color get background => const Color(0xFFA32C2C);
  @override
  Color get foreground => const Color(0xFFF8EAEA);
  @override
  Color get border => const Color(0xFFB53939);
  @override
  Color get ring => const Color(0xFF8F2626);
}

class OrangeColorFamily implements FluttailColorFamily {
  @override
  Color get shade50 => const Color(0xFFFFF6F0);
  @override
  Color get shade100 => const Color(0xFFFFE0C2);
  @override
  Color get shade200 => const Color(0xFFFFC182);
  @override
  Color get shade300 => const Color(0xFFFF9F42);
  @override
  Color get shade400 => const Color(0xFFFF7A1B);
  @override
  Color get shade500 => const Color(0xFFFB6514);
  @override
  Color get shade600 => const Color(0xFFDE580F);
  @override
  Color get shade700 => const Color(0xFFBB4B0C);
  @override
  Color get shade800 => const Color(0xFF993E0A);
  @override
  Color get shade900 => const Color(0xFF7A3208);
  @override
  Color get shade950 => const Color(0xFF4D2105);

  @override
  Color shade(int value, {bool darkMode = false}) => switch (value) {
    50 => shade50,
    100 => shade100,
    200 => shade200,
    300 => shade300,
    400 => shade400,
    500 => shade500,
    600 => shade600,
    700 => shade700,
    800 => shade800,
    900 => shade900,
    950 => shade950,
    _ => throw ArgumentError('Invalid shade: $value'),
  };

  @override
  Color withAlpha(int alpha, {int shade = 500}) =>
      this.shade(shade).withAlpha(alpha);
  @override
  Color get contrastForeground => shade50;
  @override
  FluttailColorRole get roles => _OrangeRoles();
}

class _OrangeRoles implements FluttailColorRole {
  @override
  Color get background => const Color(0xFFFB6514);
  @override
  Color get foreground => const Color(0xFFFFF6F0);
  @override
  Color get border => const Color(0xFFFF7A1B);
  @override
  Color get ring => const Color(0xFFDE580F);
}

class AmberColorFamily implements FluttailColorFamily {
  @override
  Color get shade50 => const Color(0xFFFEFCE8);
  @override
  Color get shade100 => const Color(0xFFFEF3C7);
  @override
  Color get shade200 => const Color(0xFFFDE68A);
  @override
  Color get shade300 => const Color(0xFFFCD34D);
  @override
  Color get shade400 => const Color(0xFFFBBF24);
  @override
  Color get shade500 => const Color(0xFFF59E0B);
  @override
  Color get shade600 => const Color(0xFFD97706);
  @override
  Color get shade700 => const Color(0xFFB45309);
  @override
  Color get shade800 => const Color(0xFF92400E);
  @override
  Color get shade900 => const Color(0xFF78350F);
  @override
  Color get shade950 => const Color(0xFF451A03);

  @override
  Color shade(int value, {bool darkMode = false}) {
    switch (value) {
      case 50:
        return shade50;
      case 100:
        return shade100;
      case 200:
        return shade200;
      case 300:
        return shade300;
      case 400:
        return shade400;
      case 500:
        return shade500;
      case 600:
        return shade600;
      case 700:
        return shade700;
      case 800:
        return shade800;
      case 900:
        return shade900;
      case 950:
        return shade950;
      default:
        throw ArgumentError('Invalid shade: $value');
    }
  }

  @override
  Color withAlpha(int alpha, {int shade = 500}) =>
      this.shade(shade).withAlpha(alpha);
  @override
  Color get contrastForeground => shade950;
  @override
  FluttailColorRole get roles => _AmberRoles();
}

class _AmberRoles implements FluttailColorRole {
  @override
  Color get background => const Color(0xFFF59E0B);
  @override
  Color get foreground => const Color(0xFFFFFFFF);
  @override
  Color get border => const Color(0xFFFBBF24);
  @override
  Color get ring => const Color(0xFFD97706);
}

class YellowColorFamily implements FluttailColorFamily {
  @override
  Color get shade50 => const Color(0xFFFEFCE8);
  @override
  Color get shade100 => const Color(0xFFFEF9C3);
  @override
  Color get shade200 => const Color(0xFFFEF08A);
  @override
  Color get shade300 => const Color(0xFFFDE047);
  @override
  Color get shade400 => const Color(0xFFFACC15);
  @override
  Color get shade500 => const Color(0xFFEAB308);
  @override
  Color get shade600 => const Color(0xFFCA8A04);
  @override
  Color get shade700 => const Color(0xFFA16207);
  @override
  Color get shade800 => const Color(0xFF854D0E);
  @override
  Color get shade900 => const Color(0xFF713F12);
  @override
  Color get shade950 => const Color(0xFF422006);

  @override
  Color shade(int value, {bool darkMode = false}) {
    switch (value) {
      case 50:
        return shade50;
      case 100:
        return shade100;
      case 200:
        return shade200;
      case 300:
        return shade300;
      case 400:
        return shade400;
      case 500:
        return shade500;
      case 600:
        return shade600;
      case 700:
        return shade700;
      case 800:
        return shade800;
      case 900:
        return shade900;
      case 950:
        return shade950;
      default:
        throw ArgumentError('Invalid shade: $value');
    }
  }

  @override
  Color withAlpha(int alpha, {int shade = 500}) =>
      this.shade(shade).withAlpha(alpha);
  @override
  Color get contrastForeground => shade950;
  @override
  FluttailColorRole get roles => _YellowRoles();
}

class _YellowRoles implements FluttailColorRole {
  @override
  Color get background => const Color(0xFFEAB308);
  @override
  Color get foreground => const Color(0xFFFFFFFF);
  @override
  Color get border => const Color(0xFFFACC15);
  @override
  Color get ring => const Color(0xFFCA8A04);
}

class LimeColorFamily implements FluttailColorFamily {
  @override
  Color get shade50 => const Color(0xFFF7FEE7);
  @override
  Color get shade100 => const Color(0xFFECFCCB);
  @override
  Color get shade200 => const Color(0xFFD9F99D);
  @override
  Color get shade300 => const Color(0xFFBEF264);
  @override
  Color get shade400 => const Color(0xFFA3E635);
  @override
  Color get shade500 => const Color(0xFF84CC16);
  @override
  Color get shade600 => const Color(0xFF65A30D);
  @override
  Color get shade700 => const Color(0xFF4D7C0F);
  @override
  Color get shade800 => const Color(0xFF3F6212);
  @override
  Color get shade900 => const Color(0xFF365314);
  @override
  Color get shade950 => const Color(0xFF1A2E05);

  @override
  Color shade(int value, {bool darkMode = false}) {
    switch (value) {
      case 50:
        return shade50;
      case 100:
        return shade100;
      case 200:
        return shade200;
      case 300:
        return shade300;
      case 400:
        return shade400;
      case 500:
        return shade500;
      case 600:
        return shade600;
      case 700:
        return shade700;
      case 800:
        return shade800;
      case 900:
        return shade900;
      case 950:
        return shade950;
      default:
        throw ArgumentError('Invalid shade: $value');
    }
  }

  @override
  Color withAlpha(int alpha, {int shade = 500}) =>
      this.shade(shade).withAlpha(alpha);
  @override
  Color get contrastForeground => shade950;
  @override
  FluttailColorRole get roles => _LimeRoles();
}

class _LimeRoles implements FluttailColorRole {
  @override
  Color get background => const Color(0xFF84CC16);
  @override
  Color get foreground => const Color(0xFFFFFFFF);
  @override
  Color get border => const Color(0xFFA3E635);
  @override
  Color get ring => const Color(0xFF65A30D);
}

class GreenColorFamily implements FluttailColorFamily {
  @override
  Color get shade50 => const Color(0xFFEFFCF6);
  @override
  Color get shade100 => const Color(0xFFD6FADF);
  @override
  Color get shade200 => const Color(0xFFB5F4C3);
  @override
  Color get shade300 => const Color(0xFF8AE89C);
  @override
  Color get shade400 => const Color(0xFF47D368);
  @override
  Color get shade500 => const Color(0xFF1BCB4B);
  @override
  Color get shade600 => const Color(0xFF13A43E);
  @override
  Color get shade700 => const Color(0xFF0E8437);
  @override
  Color get shade800 => const Color(0xFF0B6C33);
  @override
  Color get shade900 => const Color(0xFF08582E);
  @override
  Color get shade950 => const Color(0xFF054322);

  @override
  Color shade(int value, {bool darkMode = false}) {
    switch (value) {
      case 50:
        return shade50;
      case 100:
        return shade100;
      case 200:
        return shade200;
      case 300:
        return shade300;
      case 400:
        return shade400;
      case 500:
        return shade500;
      case 600:
        return shade600;
      case 700:
        return shade700;
      case 800:
        return shade800;
      case 900:
        return shade900;
      case 950:
        return shade950;
      default:
        throw ArgumentError('Invalid shade: $value');
    }
  }

  @override
  Color withAlpha(int alpha, {int shade = 500}) =>
      this.shade(shade).withAlpha(alpha);

  @override
  Color get contrastForeground => shade50;

  @override
  FluttailColorRole get roles => _GreenRoles();
}

class _GreenRoles implements FluttailColorRole {
  @override
  Color get background => const Color(0xFF1BCB4B);
  @override
  Color get foreground => const Color(0xFFEFFCF6);
  @override
  Color get border => const Color(0xFF47D368);
  @override
  Color get ring => const Color(0xFF13A43E);
}
