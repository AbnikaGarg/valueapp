import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  AppTheme._();
  static Color whiteBackgroundColor = const Color(0xffffffff);
  static Color linkColor = const Color.fromRGBO(65, 146, 239, 1);
  static Color lightPrimaryColor =
      Color.fromRGBO(19, 94, 242, 1); // Color.fromARGB(194, 146, 102, 12);
  static Color blackColor = const Color(0xff040415);
  static Color lightTextColor = const Color.fromRGBO(77, 77, 77, 1);
  static Color darkTextColor = const Color.fromRGBO(0, 0, 0, 1);
  static Color newdarktheme = Color.fromRGBO(30, 30, 30, 1);
  static Color backGround = const Color.fromRGBO(243, 242, 238, 1);
  static Color backGround2 = const Color.fromRGBO(241, 245, 254, 1);

  static Color bodyTextColor = const Color.fromRGBO(26, 26, 26, 1);
  static Color buttonBorder = const Color.fromRGBO(38, 130, 255, 1);
  static Color hintTextColor = const Color.fromRGBO(127, 127, 127, 1);
  static Color newLightColor = const Color.fromRGBO(118, 118, 118, 1);
  static Color newLightColor2 = const Color.fromRGBO(128, 128, 128, 1);
  static Color likeTextColor = const Color.fromRGBO(178, 178, 178, 1);
  static Color likeTextColor2 = const Color.fromRGBO(220, 220, 220, 1);
  static Color starColor = const Color.fromRGBO(255, 227, 2, 1);
  static Color whiteTextColor = const Color.fromRGBO(255, 255, 255, 1);
  static Color lightHintTextColor = const Color.fromRGBO(166, 166, 166, 1);
  static Color newDarkColor = const Color.fromRGBO(16, 16, 16, 1);
  static Color purpleText = Color(0xFF5040A1);
  static Color lightDarkText = Color.fromRGBO(26, 29, 33, 1);
  static final lightTheme = ThemeData(
    brightness: Brightness.light,
    primaryColor: Colors.blue,
    cardColor: backGround2,
    useMaterial3: false,
    hoverColor: backGround2,
    primarySwatch: Colors.blue,
    scaffoldBackgroundColor: whiteBackgroundColor,
    appBarTheme: appBarTheme(),
    dialogTheme: const DialogTheme(
      backgroundColor: Color.fromARGB(255, 51, 38, 38),
      surfaceTintColor: Colors.transparent,
    ),
    bottomSheetTheme: const BottomSheetThemeData(
      surfaceTintColor: Colors.transparent,
    ),
    colorScheme: ThemeData().colorScheme.copyWith(
          secondary: Colors.blue,
        ),
    indicatorColor: backGround2,
    datePickerTheme: DatePickerThemeData(elevation: 0),
    canvasColor: AppTheme.darkTextColor,
    shadowColor: Colors.black87.withOpacity(0.3),
    textSelectionTheme: TextSelectionThemeData(
      cursorColor: lightPrimaryColor,
      selectionColor: lightPrimaryColor,
      selectionHandleColor: lightPrimaryColor,
    ),
    inputDecorationTheme: InputDecorationTheme(
      fillColor: whiteBackgroundColor,
    ),
    tabBarTheme: TabBarTheme(
      labelColor: lightPrimaryColor,
      unselectedLabelColor: blackColor,
      unselectedLabelStyle: GoogleFonts.inter(
          fontSize: 14, color: blackColor, fontWeight: FontWeight.w500),
      labelStyle: GoogleFonts.inter(
          fontSize: 14,
          color: blackColor,
          fontWeight: FontWeight.w600), // color for text
    ),

    // text theme
    textTheme: TextTheme(
        headlineMedium: title16Px,
        headlineLarge: headingText,
        displayLarge: text14Px,
        bodyLarge: text14500Px,
        displayMedium: smallText,
        headlineSmall: text20600Px,
        bodyMedium: smallTextDark,
        bodySmall: extraSmallText,
        labelSmall: lableInputText,
        labelLarge: lightBoldText,
        labelMedium: authScreenTitle,
        displaySmall: hintText),
    progressIndicatorTheme:
        ProgressIndicatorThemeData(color: lightPrimaryColor),
    //  scaf : whiteBackgroundColor,
    visualDensity: VisualDensity.adaptivePlatformDensity,
    //   appBarTheme: AppBarTheme(backgroundColor: lightPrimaryColor),
  );
  // static final TextStyle smallLikesText = GoogleFonts.inter(
  //   color: lightTextColor,
  //   fontSize: 12,
  //   letterSpacing: 0,
  //   fontWeight: FontWeight.w400,
  // );
  static final TextStyle headingText = GoogleFonts.inter(
    color: darkTextColor,
    fontSize: 18,
    letterSpacing: 0,
    fontWeight: FontWeight.w600,
  );
  static final TextStyle title16Px = GoogleFonts.inter(
    color: darkTextColor,
    fontSize: 16, // 16 to 14
    letterSpacing: 0,
    height: 0,
    fontWeight: FontWeight.w600,
  );
  static final TextStyle text14Px = GoogleFonts.inter(
    color: darkTextColor,
    fontSize: 14,
    letterSpacing: 0,
    height: 1.4,
    fontWeight: FontWeight.w400,
  );
  static final TextStyle text14500Px = GoogleFonts.inter(
    color: hintTextColor,
    fontSize: 14,
    letterSpacing: 0,
    height: 0,
    fontWeight: FontWeight.w500,
  );
  static final TextStyle text20600Px = GoogleFonts.inter(
    color: lightTextColor,
    fontSize: 20,
    letterSpacing: 0,
    height: 0,
    fontWeight: FontWeight.w600,
  );
  static final TextStyle lightBoldText = GoogleFonts.inter(
    color: lightTextColor,
    fontSize: 14,
    letterSpacing: 0,
    height: 0,
    fontWeight: FontWeight.w500,
  );
  static final TextStyle hintText = GoogleFonts.inter(
    color: hintTextColor,
    fontSize: 12,
    letterSpacing: 0,
    fontWeight: FontWeight.w400,
  );
  static final TextStyle authScreenTitle = GoogleFonts.inter(
      fontSize: 20,
      color: darkTextColor,
      letterSpacing: 0,
      fontWeight: FontWeight.w500,
      height: 1.4);
  static final TextStyle lableInputText = GoogleFonts.inter(
    fontSize: 12,
    letterSpacing: 0,
    color: lightTextColor,
    fontWeight: FontWeight.w500,
  );
  static final TextStyle smallText = GoogleFonts.inter(
    fontSize: 16,
    letterSpacing: 0,
    color: hintTextColor,
    fontWeight: FontWeight.w400,
  );
  static final TextStyle smallTextDark = GoogleFonts.inter(
    fontSize: 16,
    letterSpacing: 0,
    color: hintTextColor,
    fontWeight: FontWeight.w500,
  );
  static final TextStyle extraSmallText = GoogleFonts.inter(
    fontSize: 14,
    letterSpacing: 0,
    color: lightTextColor,
    fontWeight: FontWeight.w400,
  );
  //extraSmallText
  static final darktheme = ThemeData(
    brightness: Brightness.dark,
    fontFamily: GoogleFonts.inter().fontFamily,
    shadowColor: backGround2,
    hoverColor: Color.fromRGBO(56, 67, 79, 1),
    datePickerTheme: DatePickerThemeData(
        elevation: 0,
        backgroundColor: Color.fromRGBO(26, 29, 33, 1),
        headerBackgroundColor: Color.fromRGBO(26, 29, 33, 1)),
    tabBarTheme: TabBarTheme(
      labelColor: whiteBackgroundColor,
      indicatorColor: lightPrimaryColor,
      unselectedLabelColor: whiteBackgroundColor,
      unselectedLabelStyle: GoogleFonts.inter(
          fontSize: 14,
          color: whiteBackgroundColor,
          fontWeight: FontWeight.w500),
      labelStyle: GoogleFonts.inter(
          fontSize: 14,
          color: whiteBackgroundColor,
          fontWeight: FontWeight.w500), // color for text
    ),
    primaryColor: whiteBackgroundColor,
    appBarTheme: appBarDarkTheme(),
    inputDecorationTheme: InputDecorationTheme(
      fillColor: Color.fromRGBO(26, 29, 33, 1),
    ),
    iconTheme: IconThemeData(color: whiteBackgroundColor),
    progressIndicatorTheme:
        ProgressIndicatorThemeData(color: lightPrimaryColor),
    scaffoldBackgroundColor: newDarkColor,
    // backgroundColor: darkTextColor,
    indicatorColor: lightDarkText,
    cardColor: darkTextColor,
    canvasColor: AppTheme.whiteTextColor,
    textTheme: TextTheme(
      headlineMedium: title16Px.copyWith(color: whiteBackgroundColor),
      headlineLarge: headingText.copyWith(color: whiteBackgroundColor),
      headlineSmall: text20600Px.copyWith(color: whiteBackgroundColor),
      displayLarge: darktext14Px,
      displaySmall: ligthHintColor,
      bodySmall: extraSmallText.copyWith(color: whiteBackgroundColor),
      labelMedium: ligthAuthScreenColor,
      labelSmall: lightLabelColor,
      displayMedium: ligthDisplayMedium,
      bodyMedium: smallTextDark.copyWith(color: lightHintTextColor),
    ),
  );
  static final TextStyle darktext14Px = GoogleFonts.inter(
    color: whiteBackgroundColor,
    fontSize: 14,
    letterSpacing: 0,
    height: 1.4,
    fontWeight: FontWeight.w400,
  );
  static final TextStyle ligthHintColor =
      hintText.copyWith(color: lightHintTextColor);
  static final TextStyle ligthDisplayMedium =
      smallText.copyWith(color: lightHintTextColor);
  static final TextStyle ligthAuthScreenColor =
      authScreenTitle.copyWith(color: whiteTextColor);
  static final TextStyle lightLabelColor =
      lableInputText.copyWith(color: lightHintTextColor);
}

AppBarTheme appBarTheme() {
  return AppBarTheme(
    shadowColor: Colors.black.withOpacity(0.7),
    //   surfaceTintColor: Colors.transparent,
    color: Colors.white,
    //  scrolledUnderElevation: 0,
    //  brightness: Brightness.light,
    iconTheme: IconThemeData(color: AppTheme.darkTextColor),
    titleTextStyle: GoogleFonts.inter(
        fontSize: 18,
        color: AppTheme.darkTextColor,
        fontWeight: FontWeight.w600),
  );
}

AppBarTheme appBarDarkTheme() {
  return AppBarTheme(
    //   surfaceTintColor: Colors.transparent,
    //color: Colors.white,
    elevation: 1,
    shadowColor: AppTheme.backGround2,
    backgroundColor: AppTheme.newDarkColor,
    //  scrolledUnderElevation: 0,
    //  brightness: Brightness.dark,
    iconTheme: IconThemeData(color: AppTheme.whiteBackgroundColor),
    titleTextStyle: GoogleFonts.inter(
        fontSize: 20,
        color: AppTheme.whiteBackgroundColor,
        height: 0,
        fontWeight: FontWeight.w500),
  );
}
