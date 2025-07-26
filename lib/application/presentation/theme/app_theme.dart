import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lilac_chat/application/presentation/utils/colors.dart';

class AppThemes {
  // Light Theme Configuration
  static ThemeData lightTheme() {
    return ThemeData(
      brightness: Brightness.light,
      colorScheme: const ColorScheme.light(
        primary: kprimary,
        onPrimary: kblack,
        error: kred,
        onTertiary: kwhite,
        secondary: kgrey,
      ),
      dividerTheme: DividerThemeData(color: kgrey.withOpacity(0.4)),

      cardColor: kwhite,
      textTheme: GoogleFonts.poppinsTextTheme().copyWith(
        headlineLarge: const TextStyle(
          color: kblack,
          fontSize: 32,
          fontWeight: FontWeight.bold,
        ),
        bodyMedium: const TextStyle(
          color: kwhite,
          fontSize: 14,
          fontWeight: FontWeight.bold,
        ),
        bodySmall: const TextStyle(color: kwhite, fontSize: 12),
        displaySmall: const TextStyle(color: kblack, fontSize: 12),
        displayMedium: const TextStyle(
          fontWeight: FontWeight.bold,
          color: kblack,
          fontSize: 14,
        ),
        titleLarge: const TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 17,
          color: kblack,
        ),
        titleMedium: const TextStyle(
          fontSize: 15,
          color: kblack,
          fontWeight: FontWeight.bold,
        ),
        titleSmall: const TextStyle(fontSize: 13, color: kblack),
      ),

      progressIndicatorTheme: const ProgressIndicatorThemeData(color: kblack),
      inputDecorationTheme: InputDecorationTheme(
        filled: true,

        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(color: kgrey, width: 1.0),
        ),
      ),
      cardTheme: const CardThemeData(
        color: kwhite,
        shadowColor: kgrey,
        elevation: 0,
      ),
      navigationBarTheme: const NavigationBarThemeData(backgroundColor: kwhite),
      appBarTheme: const AppBarTheme(
        foregroundColor: kblack,
        surfaceTintColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        titleTextStyle: TextStyle(
          fontSize: 17,
          color: kblack,
          fontWeight: FontWeight.w500,
        ),
      ),

      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: kprimary,
          foregroundColor: kwhite,
          padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        ),
      ),
      popupMenuTheme: const PopupMenuThemeData(color: kwhite),
      switchTheme: SwitchThemeData(
        trackOutlineColor: WidgetStateProperty.resolveWith((states) {
          if (states.contains(WidgetState.selected)) {
            return kprimary;
          }
          return kgrey;
        }),
        thumbColor: WidgetStateProperty.resolveWith((states) {
          if (states.contains(WidgetState.selected)) {
            return kprimary;
          }
          return kgrey;
        }),
        trackColor: WidgetStateProperty.resolveWith((states) {
          if (states.contains(WidgetState.selected)) {
            return kprimary.withOpacity(0.5);
          }
          return kwhite;
        }),
        trackOutlineWidth: WidgetStateProperty.all(1),
        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
      ),
    );
  }

  // Dark Theme Configuration
  static ThemeData darkTheme() {
    return ThemeData();
  }
}
