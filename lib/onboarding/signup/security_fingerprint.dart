import 'package:expedier/color_scheme.dart';
import 'package:expedier/onboarding/button.dart';
import 'package:expedier/onboarding/desc.dart';
import 'package:expedier/onboarding/signup/create_style.dart';
import 'package:expedier/onboarding/title.dart';
import 'package:expedier/onboarding/wrapper.dart';
import 'package:expedier/utils.dart';
import 'package:flutter/material.dart';

class SecurityFingerprint extends StatelessWidget {
  static const String route = "fingerprint";

  const SecurityFingerprint({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Wrapper(
      child: Column(
        children: [
          SizedBox(height: Utils.scaledHeight(context: context, val: 35)),
          title(title: "Fingerprint"),
          SizedBox(height: Utils.scaledHeight(context: context, val: 9)),
          desc(text: "Enable Fingerprint to log in", size: 18),
          SizedBox(height: Utils.scaledHeight(context: context, val: 33)),

          const Icon(Icons.fingerprint, color: cBlack, size: 100),
          SizedBox(height: Utils.scaledHeight(context: context, val: 42)),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: Utils.scaledWidth(context: context, val: 41)),
            child: desc(
                text: "Enable Fingerprint to log in to the app and authorise transactions using your fingerprint",
                align: TextAlign.center,
                size: 14),
          ),
          SizedBox(height: Utils.scaledHeight(context: context, val: 77)),
          authButton(text: "Enable Fingerprint", context: context, func: () => Navigator.pushNamed(context, CreateStyle.route)),
          SizedBox(height: Utils.scaledHeight(context: context, val: 19)),
          InkWell(
            onTap: () => Navigator.pushNamed(context, CreateStyle.route),
            child: desc(text: "Skip Fingerprint", size: 20),
          )
        ],
      ),
    );
  }
}
