import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/src/painting/text_style.dart';
import 'package:google_fonts/google_fonts.dart';

mixin AppTextStyles{
   static TextStyle buttonTextStyle =  GoogleFonts.notoSansAdlamUnjoined(
     textStyle:const TextStyle(color: Colors.blue,),
   );
}