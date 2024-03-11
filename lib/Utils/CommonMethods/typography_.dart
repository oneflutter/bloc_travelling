import 'package:bloc_travelling/Utils/CommonMethods/app_color_.dart';
import 'package:flutter/material.dart';

TextStyle gentiumBookPlusText = const TextStyle(fontFamily: TextFontFamily.gentiumBookPlus);

class TextFontFamily {
  static const String gentiumBookPlus = "Gentium Book Plus";
}

extension TextStyleExtensions on TextStyle {
//==============================================================================
// * Common Weight *
//==============================================================================
  TextStyle get bold => weight(FontWeight.w700);

  TextStyle get normal => weight(FontWeight.w400);

  TextStyle get thin => weight(FontWeight.w100);

//==============================================================================
// * FontSize *
//==============================================================================
  TextStyle size(double v) => copyWith(fontSize: v);

  TextStyle get get10 => size(10);

  TextStyle get get11 => size(11);

  TextStyle get get12 => size(12);

  TextStyle get get13 => size(13);

  TextStyle get get14 => size(14);

  TextStyle get get15 => size(15);

  TextStyle get get16 => size(16);

  TextStyle get get17 => size(17);

  TextStyle get get18 => size(18);

  TextStyle get get19 => size(19);

  TextStyle get get20 => size(20);

  TextStyle get get21 => size(21);

  TextStyle get get22 => size(22);

  TextStyle get get23 => size(23);

  TextStyle get get24 => size(24);

  TextStyle get get25 => size(25);

  TextStyle get get26 => size(26);

  TextStyle get get27 => size(27);

  TextStyle get get28 => size(28);

  TextStyle get get29 => size(29);

  TextStyle get get30 => size(30);

  TextStyle get get31 => size(31);

  TextStyle get get32 => size(32);

  TextStyle get get33 => size(33);

  TextStyle get get34 => size(34);

  TextStyle get get35 => size(35);

  TextStyle get get36 => size(36);

  TextStyle get get37 => size(37);

  TextStyle get get38 => size(38);

  TextStyle get get39 => size(39);

  TextStyle get get40 => size(40);

  TextStyle get get41 => size(41);

  TextStyle get get42 => size(42);

  TextStyle get get43 => size(43);

  TextStyle get get44 => size(44);

  TextStyle get get45 => size(45);

  TextStyle get get46 => size(46);

  TextStyle get get47 => size(47);

  TextStyle get get48 => size(48);

  TextStyle get get49 => size(49);

  TextStyle get get50 => size(50);

  TextStyle get get57 => size(57);

  TextStyle get get60 => size(60);

  TextStyle get get64 => size(64);

//==============================================================================
// * FontWeight *
//==============================================================================
  TextStyle weight(FontWeight v) => copyWith(fontWeight: v);

  TextStyle get w100 => weight(FontWeight.w100);

  TextStyle get w200 => weight(FontWeight.w200);

  TextStyle get w300 => weight(FontWeight.w300);

  TextStyle get w400 => weight(FontWeight.w400);

  TextStyle get w500 => weight(FontWeight.w500);

  TextStyle get w600 => weight(FontWeight.w600);

  TextStyle get w700 => weight(FontWeight.w700);

  TextStyle get w800 => weight(FontWeight.w800);

  TextStyle get w900 => weight(FontWeight.w900);

//==============================================================================
// * TextColor *
//==============================================================================
  TextStyle textColor(Color v) => copyWith(color: v);

  TextStyle get black => textColor(AppColor.black);

  TextStyle get white => textColor(AppColor.white);

  TextStyle get lightPink => textColor(AppColor.lightPink);

  TextStyle get pinkMain => textColor(AppColor.pinkMain);

//==============================================================================
// * letterSpace *
//==============================================================================
  TextStyle letterSpace(double v) => copyWith(letterSpacing: v);

  TextStyle get space01 => letterSpace(0.1);

  TextStyle get space02 => letterSpace(0.2);

  TextStyle get space025 => letterSpace(0.25);

  TextStyle get space03 => letterSpace(0.3);

  TextStyle get space04 => letterSpace(0.4);

  TextStyle get space05 => letterSpace(0.5);

  TextStyle get space06 => letterSpace(0.6);

  TextStyle get space07 => letterSpace(0.7);

  TextStyle get space08 => letterSpace(0.8);

  TextStyle get space09 => letterSpace(0.9);

//==============================================================================
// * wordSpace *
//==============================================================================
  TextStyle wordSpacing(double v) => copyWith(letterSpacing: v);

  TextStyle get wSpace1 => wordSpacing(1.0);

  TextStyle get wSpace15 => wordSpacing(1.5);

  TextStyle get wSpace01 => wordSpacing(0.1);

  TextStyle get wSpace02 => wordSpacing(0.2);

  TextStyle get wSpace03 => wordSpacing(0.3);

  TextStyle get wSpace04 => wordSpacing(0.4);

  TextStyle get wSpace05 => wordSpacing(0.5);

  TextStyle get wSpace06 => wordSpacing(0.6);

  TextStyle get wSpace07 => wordSpacing(0.7);

//==============================================================================
// * TextHeight *
//==============================================================================
  TextStyle textHeight(double v) => copyWith(height: v);

  TextStyle get height01 => textHeight(1.0);

  TextStyle get height0102 => textHeight(1.2);

  TextStyle get height0105 => textHeight(1.5);

  TextStyle textDecoration(
    TextDecoration decoration,
  ) =>
      copyWith(decoration: decoration);

  TextStyle get decorationUnderLine => textDecoration(TextDecoration.underline);

//==============================================================================
// * COCT Custom TextStyle *
//==============================================================================
  TextStyle customStyle({
    double? letterSpacing,
    double? height,
    double? fontSize,
    FontWeight? weight,
  }) =>
      copyWith(
        letterSpacing: letterSpacing,
        height: height,
        fontSize: fontSize,
        fontWeight: weight,
      );
}

///  How To USE
// directly access using dot operator

// style: interText.w600.size(16).darkBlue,
