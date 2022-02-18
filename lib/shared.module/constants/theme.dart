import 'package:flutter/material.dart';

//////////////////////Colors////////////////////////////////

const Color backgroundColor = Color(0xff1B254B);
const Color primaryDarkColor = Color(0xff3182CE);
const Color secondaryDarkColor = Color(0xff111C44);
const Color secondaryLightColor = Color(0xFF26315F);
const Color tertiaryDarkColor = Color(0xffFFFFFF);
const Color tertiaryLightColor = Color(0xFFA0AEC0);
const Color cardColor = Color(0xff0B1437);
const Color transparent = Colors.transparent;

//Gradient Colors
const Color darkBlackColor = Color(0xff202020);
const Color lightBlackColor = Color(0xff3E3D45);
const Color darkPinkColor = Color(0xffff0844);
const Color lightPinkColor = Color(0xffE93B77);
const Color darkblueColor = Color(0xff09203f);
const Color lightBlueColor = Color(0xff537895);

//////////////////////Typography///////////////////////////

TextStyle get titleText => const TextStyle(
      fontWeight: FontWeight.w500,
      fontSize: 18,
    );

TextStyle get headingText1 => const TextStyle(
      fontSize: 24,
      fontWeight: FontWeight.w700,
    );

TextStyle get headingText2 => const TextStyle(
      fontSize: 19,
      fontWeight: FontWeight.w700,
    );

TextStyle get buttonText => const TextStyle(
      fontSize: 15,
      fontWeight: FontWeight.w500,
      color: tertiaryDarkColor,
    );

//////////////////////Utls////////////////////////////////

const String primaryFontFamily = "Poppins";
BorderRadius buttonBorderRadius = BorderRadius.circular(7);

class Themes {
  static final ThemeData lightTheme = ThemeData(
    colorScheme: const ColorScheme.light(),
  );
  static final ThemeData darkTheme = ThemeData(
    colorScheme: const ColorScheme.dark(),
  );
}
