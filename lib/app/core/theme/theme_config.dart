import 'package:flutter/material.dart';
import '../styles/colors_app.dart';

import '../styles/text_styles.dart';

class ThemeConfig {
  ThemeConfig._(); // Para ele não ser instanciado em outro lugar

  static final _defaultInputBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(18),
    borderSide: BorderSide(
      color: ColorsApp.i.greyDark,
      width: 1,
    ),
  );

  static final theme = ThemeData(
    appBarTheme: AppBarTheme(
      centerTitle: true,
      color: Colors.white,
      elevation: 0,
      iconTheme: const IconThemeData(
        color: Colors.black,
      ),
      titleTextStyle: TextStyles.i.textPrimaryFontBold.copyWith(
        color: Colors.black,
        fontSize: 18,
      ),
    ),
    primaryColor: ColorsApp.i.primary,
    colorScheme: ColorScheme.fromSeed(
      seedColor: ColorsApp.i.primary,
      primary: ColorsApp.i.primary,
      secondary: ColorsApp.i.secondary,
    ),
    inputDecorationTheme: InputDecorationTheme(
      fillColor: Colors.white,
      filled: true,
      isDense: true,
      contentPadding: EdgeInsets.all(13),
      labelStyle: TextStyles.i.labelTextField,
      border: _defaultInputBorder,
      enabledBorder: _defaultInputBorder,
      focusedBorder: _defaultInputBorder,
    ),
  );
}
