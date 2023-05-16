import 'package:flutter/material.dart';
import '../classes/style.dart';

class SizeConfig {
  static MediaQueryData? _mediaQueryData;
  static double? screenWidth;
  static double? screenHeight;
  static double? blockSizeHorizontal;
  static double? blockSizeVertical;

  void init(BuildContext context) {
    _mediaQueryData = MediaQuery.of(context);
    screenWidth = _mediaQueryData!.size.width;
    screenHeight = _mediaQueryData!.size.height;
    blockSizeHorizontal = screenWidth! / 100;
    blockSizeVertical = screenHeight! / 100;
  }

  Widget spaceW(line) {
    return const SizedBox(width: 16);
  }

  Widget spaceH(line) {
    return const SizedBox(height: 16);
  }

  // size 12 //
  p12regB(txt, sc) {
    return Text(
      txt,
      style: const TextStyle(
        color: style.text1,
        fontWeight: FontWeight.w300,
        fontSize: 12,
        fontFamily: 'space Grotesk',
      ),
    );
  }

  p12regW(txt, sc) {
    return Text(
      txt,
      style: const TextStyle(
        color: style.white,
        fontWeight: FontWeight.w300,
        fontSize: 12,
        fontFamily: 'space Grotesk',
      ),
    );
  }

  p12regC(txt, sc) {
    return Text(
      txt,
      style: const TextStyle(
        color: style.primary1,
        fontWeight: FontWeight.w300,
        fontSize: 12,
        fontFamily: 'space Grotesk',
      ),
    );
  }

  p12medB(txt, sc) {
    return Text(
      txt,
      style: const TextStyle(
        color: style.text1,
        fontWeight: FontWeight.w500,
        fontSize: 12,
        fontFamily: 'space Grotesk',
      ),
    );
  }

  p12medW(txt, sc) {
    return Text(
      txt,
      style: const TextStyle(
        color: style.white,
        fontWeight: FontWeight.w500,
        fontSize: 12,
        fontFamily: 'space Grotesk',
      ),
    );
  }

  p12medC(txt, sc) {
    return Text(
      txt,
      style: const TextStyle(
        color: style.primary1,
        fontWeight: FontWeight.w500,
        fontSize: 12,
        fontFamily: 'space Grotesk',
      ),
    );
  }

  // size 14 //
  p14regB(txt, sc) {
    return Text(
      txt,
      style: const TextStyle(
        color: style.text1,
        fontWeight: FontWeight.w300,
        fontSize: 14,
        fontFamily: 'space Grotesk',
      ),
    );
  }

  p14regR(txt, sc) {
    return Text(
      txt,
      style: const TextStyle(
        color: style.error,
        fontWeight: FontWeight.w500,
        fontSize: 14,
        fontFamily: 'space Grotesk',
      ),
    );
  }

  p14regW(txt, sc) {
    return Text(
      txt,
      style: const TextStyle(
        color: style.white,
        fontWeight: FontWeight.w300,
        fontSize: 14,
        fontFamily: 'space Grotesk',
      ),
    );
  }

  p14regC(txt, sc) {
    return Text(
      txt,
      style: const TextStyle(
        color: style.primary1,
        fontWeight: FontWeight.w300,
        fontSize: 14,
        fontFamily: 'space Grotesk',
      ),
    );
  }

  p14medB(txt, sc) {
    return Text(
      txt,
      style: const TextStyle(
        color: style.text1,
        fontWeight: FontWeight.w500,
        fontSize: 14,
        fontFamily: 'space Grotesk',
      ),
    );
  }

  p14medW(txt, sc) {
    return Text(
      txt,
      style: const TextStyle(
        color: style.white,
        fontWeight: FontWeight.w500,
        fontSize: 14,
        fontFamily: 'space Grotesk',
      ),
    );
  }

  p14medC(txt, sc) {
    return Text(
      txt,
      style: const TextStyle(
        color: style.primary1,
        fontWeight: FontWeight.w500,
        fontSize: 14,
        fontFamily: 'space Grotesk',
      ),
    );
  }

// size 16 //
  p16regB(txt, sc) {
    return Text(
      txt,
      style: const TextStyle(
        color: style.text2,
        fontWeight: FontWeight.w300,
        fontSize: 16,
        fontFamily: 'space Grotesk',
        height: 1.4,
      ),
    );
  }

  p16regW(txt, sc) {
    return Text(
      txt,
      style: const TextStyle(
        color: style.white,
        fontWeight: FontWeight.w300,
        fontSize: 16,
        fontFamily: 'space Grotesk',
      ),
    );
  }

  p16regC(txt, sc) {
    return Text(
      txt,
      style: const TextStyle(
        color: style.primary1,
        fontWeight: FontWeight.w300,
        fontSize: 16,
        fontFamily: 'space Grotesk',
      ),
    );
  }

  p16medB(txt, sc) {
    return Text(
      txt,
      style: const TextStyle(
        color: style.text1,
        fontWeight: FontWeight.w500,
        fontSize: 16,
        fontFamily: 'space Grotesk',
      ),
    );
  }

  p16medW(txt, sc) {
    return Text(
      txt,
      style: const TextStyle(
        color: style.white,
        fontWeight: FontWeight.w500,
        fontSize: 16,
        fontFamily: 'space Grotesk',
      ),
    );
  }

  p16medC(txt, sc) {
    return Text(
      txt,
      style: const TextStyle(
        color: style.primary1,
        fontWeight: FontWeight.w500,
        fontSize: 16,
        fontFamily: 'space Grotesk',
      ),
    );
  }

  // size 18 //
  p18regB(txt, sc) {
    return Text(
      txt,
      style: const TextStyle(
        color: style.text1,
        fontWeight: FontWeight.w300,
        fontSize: 18,
        fontFamily: 'space Grotesk',
      ),
    );
  }

  p18regW(txt, sc) {
    return Text(
      txt,
      style: const TextStyle(
        color: style.white,
        fontWeight: FontWeight.w300,
        fontSize: 18,
        fontFamily: 'space Grotesk',
      ),
    );
  }

  p18regC(txt, sc) {
    return Text(
      txt,
      style: const TextStyle(
        color: style.primary1,
        fontWeight: FontWeight.w300,
        fontSize: 18,
        fontFamily: 'space Grotesk',
      ),
    );
  }

  p18medB(txt, sc) {
    return Text(
      txt,
      style: const TextStyle(
        color: style.text1,
        fontWeight: FontWeight.w600,
        fontSize: 18,
        fontFamily: 'space Grotesk',
      ),
    );
  }

  p18medW(txt, sc) {
    return Text(
      txt,
      style: const TextStyle(
        color: style.white,
        fontWeight: FontWeight.w500,
        fontSize: 18,
        fontFamily: 'space Grotesk',
      ),
    );
  }

  p18medC(txt, sc) {
    return Text(
      txt,
      style: const TextStyle(
        color: style.primary1,
        fontWeight: FontWeight.w500,
        fontSize: 18,
        fontFamily: 'space Grotesk',
      ),
    );
  }

  // size 20 //
  p20regB(txt, sc) {
    return Text(
      txt,
      style: const TextStyle(
        color: style.text1,
        fontWeight: FontWeight.w300,
        fontSize: 20,
        fontFamily: 'space Grotesk',
      ),
    );
  }

  p20regW(txt, sc) {
    return Text(
      txt,
      style: const TextStyle(
        color: style.white,
        fontWeight: FontWeight.w300,
        fontSize: 20,
        fontFamily: 'space Grotesk',
      ),
    );
  }

  p20regC(txt, sc) {
    return Text(
      txt,
      style: const TextStyle(
        color: style.primary1,
        fontWeight: FontWeight.w300,
        fontSize: 20,
        fontFamily: 'space Grotesk',
      ),
    );
  }

  p20medB(txt, sc) {
    return Text(
      txt,
      style: const TextStyle(
        color: style.text1,
        fontWeight: FontWeight.w600,
        fontSize: 20,
        fontFamily: 'space Grotesk',
      ),
    );
  }

  p20medW(txt, sc) {
    return Text(
      txt,
      style: const TextStyle(
        color: style.white,
        fontWeight: FontWeight.w600,
        fontSize: 20,
        fontFamily: 'space Grotesk',
      ),
    );
  }

  p20medC(txt, sc) {
    return Text(
      txt,
      style: const TextStyle(
        color: style.primary1,
        fontWeight: FontWeight.w600,
        fontSize: 20,
        fontFamily: 'space Grotesk',
      ),
    );
  }

  // size 24 //
  p24regB(txt, sc) {
    return Text(
      txt,
      style: const TextStyle(
        color: style.text1,
        fontWeight: FontWeight.w300,
        fontSize: 24,
        fontFamily: 'space Grotesk',
      ),
    );
  }

  p24regW(txt, sc) {
    return Text(
      txt,
      style: const TextStyle(
        color: style.white,
        fontWeight: FontWeight.w300,
        fontSize: 24,
        fontFamily: 'space Grotesk',
      ),
    );
  }

  p24regC(txt, sc) {
    return Text(
      txt,
      style: const TextStyle(
        color: style.primary1,
        fontWeight: FontWeight.w300,
        fontSize: 24,
        fontFamily: 'space Grotesk',
      ),
    );
  }

  p24medB(txt, sc) {
    return Text(
      txt,
      style: const TextStyle(
        color: style.text1,
        fontWeight: FontWeight.w600,
        fontSize: 24,
        fontFamily: 'space Grotesk',
      ),
    );
  }

  p24medW(txt, sc) {
    return Text(
      txt,
      style: const TextStyle(
        color: style.white,
        fontWeight: FontWeight.w600,
        fontSize: 24,
        fontFamily: 'space Grotesk',
      ),
    );
  }

  p24medC(txt, sc) {
    return Text(
      txt,
      style: const TextStyle(
        color: style.primary1,
        fontWeight: FontWeight.w600,
        fontSize: 24,
        fontFamily: 'space Grotesk',
      ),
    );
  }

  // size 24 //
  p30regB(txt, sc) {
    return Text(
      txt,
      style: const TextStyle(
        color: style.text1,
        fontWeight: FontWeight.w300,
        fontSize: 30,
        fontFamily: 'space Grotesk',
      ),
    );
  }

  p30regW(txt, sc) {
    return Text(
      txt,
      style: const TextStyle(
        color: style.white,
        fontWeight: FontWeight.w300,
        fontSize: 30,
        fontFamily: 'space Grotesk',
      ),
    );
  }

  p30regC(txt, sc) {
    return Text(
      txt,
      style: const TextStyle(
        color: style.primary1,
        fontWeight: FontWeight.w300,
        fontSize: 30,
        fontFamily: 'space Grotesk',
      ),
    );
  }

  p30medB(txt, sc) {
    return Text(
      txt,
      style: const TextStyle(
        color: style.text1,
        fontWeight: FontWeight.w700,
        fontSize: 30,
        fontFamily: 'space Grotesk',
        letterSpacing: -1,
      ),
    );
  }

  p30medW(txt, sc) {
    return Text(
      txt,
      style: const TextStyle(
        color: style.white,
        fontWeight: FontWeight.w700,
        fontSize: 30,
        fontFamily: 'space Grotesk',
      ),
    );
  }

  p30medC(txt, sc) {
    return Text(
      txt,
      style: const TextStyle(
        color: style.primary1,
        fontWeight: FontWeight.w700,
        fontSize: 24,
        fontFamily: 'space Grotesk',
      ),
    );
  }
}
