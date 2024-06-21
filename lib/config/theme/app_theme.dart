import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:slash_task/core/utils/colors_manager.dart';

class AppTheme{
  static ThemeData lightTheme = ThemeData(
    scaffoldBackgroundColor: ColorsManager.backgroundColor,
    appBarTheme: AppBarTheme(
      titleTextStyle: GoogleFonts.poppins(textStyle: TextStyle(fontWeight: FontWeight.w600,fontSize: 22,color: ColorsManager.textColor)),
      color: ColorsManager.backgroundColor
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: ColorsManager.backgroundColor,
      unselectedLabelStyle: GoogleFonts.urbanist(
          textStyle: TextStyle(fontWeight: FontWeight.w400,fontSize: 16,color: ColorsManager.searchIconColor)
      ),
      selectedLabelStyle:GoogleFonts.urbanist(
          textStyle: TextStyle(fontWeight: FontWeight.w400,fontSize: 16,color: ColorsManager.searchIconColor)
      ),
    ),
    textTheme: TextTheme(
      headlineLarge: GoogleFonts.poppins(textStyle: TextStyle(fontWeight: FontWeight.w700,fontSize: 20,color: ColorsManager.textColor)),
      labelMedium: GoogleFonts.urbanist(
          textStyle: TextStyle(fontWeight: FontWeight.w400,fontSize: 16,color: ColorsManager.textColor)
      ),
      labelSmall: GoogleFonts.urbanist(
          textStyle: TextStyle(fontWeight: FontWeight.w700,fontSize: 16,color: ColorsManager.textColor)
      ),
      headlineSmall: GoogleFonts.urbanist(
          textStyle: TextStyle(fontWeight: FontWeight.w400,fontSize: 14,color: ColorsManager.searchTextColor)
      ),
    )
  );
}
