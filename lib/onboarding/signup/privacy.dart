import 'package:expedier/onboarding/desc.dart';
import 'package:expedier/onboarding/wrapper.dart';
import 'package:flutter/material.dart';

class PrivacyPolicy extends StatelessWidget {
  static const String route = "privacyPolicy";
  const PrivacyPolicy({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    const mockHeight = 812;

    scaledHeight(num val) => val / mockHeight * screenSize.height;

    return Wrapper(
        appTitle: "Privacy Policy",
        child: Column(
          children: [
            SizedBox(height: scaledHeight(52)),
            desc(
                size: 16,
                text:
                    "lorenekrelrgnvjkvkjjjsvhjfvbduyouecmufruifeirjhefhrfryfukrwkluefyeuyfbeufybevyusbleuyfeoyfejhekrvyrukbyeouwyenheleeeeufeifbelwbueebieheebeweiufiebufiufuririufbriufbufiwlub ueiieueljheebhwuyowbfeuyyfhfuorbuuyrubrfuyrfrorfbrribrufbrfbrfriufrfi."),
            SizedBox(height: scaledHeight(41)),
            desc(
                size: 16,
                text:
                    "hjrjrhfrhjfrfirirvbivivruvirurvbruiivuririrurriuryurrjrufrbiiubfurbfripwbfbrfruyfryfiurfbbrfhrfbrfriwuruurfirwibfrbbruriiwyrwoiwuowwpiwubfaouiuriueurburbfiurfrurubfrfbrufirfbrf.")
          ],
        ));
  }
}
