import 'package:expedier/color_scheme.dart';
import 'package:flutter/widgets.dart';

Widget title({required String title, double? size}) =>
    Text(title, style: TextStyle(color: cBlack, fontSize: size ?? 27, fontWeight: FontWeight.w500));
