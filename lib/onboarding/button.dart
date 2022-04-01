import 'package:expedier/color_scheme.dart';
import 'package:expedier/utils.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget authButton(
        {required String text, Color textClr = cWhite, required BuildContext context, required VoidCallback func}) =>
    InkWell(
      onTap: func,
      child: Container(
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.symmetric(vertical: 15),
        alignment: Alignment.center,
        decoration: const BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(6)), color: cMain),
        child: Text(
          text,
          textScaleFactor: Utils.textScale(context: context),
          style:  GoogleFonts.aBeeZee(color: textClr, fontSize: 20, height: 23.64 / 20),
        ),
      ),
    );
