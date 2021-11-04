import 'package:flutter/material.dart';

const orange= Color(0xffFF7465);
const white= Colors.white;
const black= Colors.black;
const grey100= Color(0xffEFEFEF);
const grey800= Color(0xffC2C2C2);
const grey900= Color(0xffAFAFAF);
const blueFacebook= Color(0xff3B599A);
const orangeGmail= Color(0xffFC3636);
const blackApple= Color(0xff011832);



MaterialColor generateMaterialColorFromColor(Color color) {
  return MaterialColor(color.value, {
  50: Color.fromRGBO(color.red, color.green, color.blue, 0.1),
  100: Color.fromRGBO(color.red, color.green, color.blue, 0.2),
  200: Color.fromRGBO(color.red, color.green, color.blue, 0.3),
  300: Color.fromRGBO(color.red, color.green, color.blue, 0.4),
  400: Color.fromRGBO(color.red, color.green, color.blue, 0.5),
  500: Color.fromRGBO(color.red, color.green, color.blue, 0.6),
  600: Color.fromRGBO(color.red, color.green, color.blue, 0.7),
  700: Color.fromRGBO(color.red, color.green, color.blue, 0.8),
  800: Color.fromRGBO(color.red, color.green, color.blue, 0.9),
  900: Color.fromRGBO(color.red, color.green, color.blue, 1.0),
  });
}