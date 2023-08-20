import 'package:app_ui/app_ui.dart';
import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';

/// {@template app_theme}
/// The Default App [ThemeData].
/// {@endtemplate}
class AppTheme {
  /// {@macro app_theme}
  const AppTheme();

  /// Default `ThemeData` for App UI.
  ThemeData get themeData {
    return FlexThemeData.light(
      scheme: FlexScheme.material,
      blendLevel: 9,
      tabBarStyle: FlexTabBarStyle.flutterDefault,
      subThemesData: const FlexSubThemesData(
        bottomNavigationBarElevation: 12.0,
        navigationBarIndicatorOpacity: 0.71,
      ),
      keyColors: const FlexKeyColors(),
      visualDensity: FlexColorScheme.comfortablePlatformDensity,
      useMaterial3: true,
      swapLegacyOnMaterial3: true,
      // To use the playground font, add GoogleFonts package and uncomment
      // fontFamily: GoogleFonts.notoSans().fontFamily,
    );
  }



  SnackBarThemeData get _snackBarTheme {
    return SnackBarThemeData(
      contentTextStyle: UITextStyle.bodyText1.copyWith(
        color: AppColors.white,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(AppSpacing.sm),
      ),
      backgroundColor: AppColors.black,
      elevation: 4,
      behavior: SnackBarBehavior.floating,
    );
  }







  DividerThemeData get _dividerTheme {
    return const DividerThemeData(
      color: AppColors.lavenderPink,
      space: AppSpacing.lg,
      thickness: AppSpacing.xxs,
      indent: AppSpacing.md,
      endIndent: AppSpacing.md,
    );
  }

  TextTheme get _textTheme => uiTextTheme;

  /// The UI text theme based on [UITextStyle].
  static final uiTextTheme = TextTheme(
    displayLarge: UITextStyle.headline1,
    displayMedium: UITextStyle.headline2,
    displaySmall: UITextStyle.headline3,
    headlineMedium: UITextStyle.headline4,
    headlineSmall: UITextStyle.headline5,
    titleLarge: UITextStyle.headline6,
    titleMedium: UITextStyle.subtitle1,
    titleSmall: UITextStyle.subtitle2,
    bodyLarge: UITextStyle.bodyText1,
    bodyMedium: UITextStyle.bodyText2,
    labelLarge: UITextStyle.button,
    bodySmall: UITextStyle.caption,
    labelSmall: UITextStyle.overline,
  ).apply(
    bodyColor: AppColors.secondary,
    displayColor: AppColors.secondary,
    decorationColor: AppColors.secondary,
  );

  InputDecorationTheme get _inputDecorationTheme {
    return InputDecorationTheme(
      enabledBorder: _textFieldBorder,
      focusedBorder: _textFieldBorder,
      disabledBorder: _textFieldBorder,
      contentPadding: const EdgeInsets.all(AppSpacing.lg),
      border: const UnderlineInputBorder(),
      isDense: true,
      errorStyle: UITextStyle.caption,
    );
  }

  ButtonThemeData get _buttonTheme {
    return ButtonThemeData(
      textTheme: ButtonTextTheme.primary,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(AppSpacing.sm),
      ),
    );
  }

  ElevatedButtonThemeData get _elevatedButtonTheme {
    return ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(30)),
        ),
        padding: const EdgeInsets.symmetric(vertical: AppSpacing.lg),
        textStyle: _textTheme.labelLarge,
        backgroundColor: AppColors.darkBlue,
      ),
    );
  }

  TextButtonThemeData get _textButtonTheme {
    return TextButtonThemeData(
      style: TextButton.styleFrom(
        textStyle: _textTheme.labelLarge?.copyWith(
          fontWeight: AppFontWeight.light,
        ),
        foregroundColor: AppColors.black,
      ),
    );
  }

  BottomSheetThemeData get _bottomSheetTheme {
    return const BottomSheetThemeData(
      backgroundColor: AppColors.white,
      clipBehavior: Clip.hardEdge,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(AppSpacing.lg),
          topRight: Radius.circular(AppSpacing.lg),
        ),
      ),
    );
  }

  BottomNavigationBarThemeData get _bottomAppBarTheme {
    return BottomNavigationBarThemeData(
      backgroundColor: AppColors.white,
      selectedItemColor: AppColors.secondary,
      unselectedItemColor: AppColors.secondary,
      unselectedLabelStyle: UITextStyle.labelSmall.copyWith(
        fontWeight: AppFontWeight.light,
      ),
      selectedLabelStyle: UITextStyle.labelSmall.copyWith(
        fontWeight: AppFontWeight.medium,
      ),
      showUnselectedLabels: true,
      showSelectedLabels: true,
    );
  }

  ListTileThemeData get _listTileTheme {
    return const ListTileThemeData(
      iconColor: AppColors.onBackground,
      contentPadding: EdgeInsets.all(AppSpacing.lg),
    );
  }

  ProgressIndicatorThemeData get _progressIndicatorTheme {
    return const ProgressIndicatorThemeData(
      color: AppColors.darkAqua,
      circularTrackColor: AppColors.borderOutline,
    );
  }
}

InputBorder get _textFieldBorder => const UnderlineInputBorder(
      borderSide: BorderSide(width: 1.5, color: AppColors.grey),
    );
