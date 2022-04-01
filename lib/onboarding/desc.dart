import 'package:expedier/color_scheme.dart';
import 'package:flutter/widgets.dart';

Widget desc({required String text, double? size, TextAlign? align, Color? textClr}) => Text(text, textAlign: align ?? TextAlign.left,
    style: TextStyle(
      color: textClr ?? cBlack,
      fontSize: size ?? 17,
    ));
