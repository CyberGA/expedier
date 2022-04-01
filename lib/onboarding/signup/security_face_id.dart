import 'package:expedier/onboarding/button.dart';
import 'package:expedier/onboarding/desc.dart';
import 'package:expedier/onboarding/signup/create_style.dart';
import 'package:expedier/onboarding/title.dart';
import 'package:expedier/onboarding/wrapper.dart';
import 'package:expedier/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SecurityFaceId extends StatelessWidget {
  static const String route = "faceId";

  const SecurityFaceId({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Wrapper(
      child: Column(
        children: [
          SizedBox(height: Utils.scaledHeight(context: context, val: 28)),
          title(title: "Face ID"),
          SizedBox(height: Utils.scaledHeight(context: context, val: 8)),
          desc(text: "Enable Face ID to log in", size: 18),
          SizedBox(height: Utils.scaledHeight(context: context, val: 36)),
          SvgPicture.asset(
            "assets/icons/face-id.svg",
            width: Utils.scaledWidth(context: context, val: 71),
            height: Utils.scaledHeight(context: context, val: 71),
          ),
          SizedBox(height: Utils.scaledHeight(context: context, val: 34)),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: Utils.scaledWidth(context: context, val: 50)),
            child: desc(
                text: "Enable Face ID to log in to the app and authorise transactions using facial recognition",
                align: TextAlign.center,
                size: 14),
          ),
          SizedBox(height: Utils.scaledHeight(context: context, val: 119)),
          authButton(
              text: "Add Face ID", context: context, func: () => Navigator.pushNamed(context, CreateStyle.route)),
          SizedBox(height: Utils.scaledHeight(context: context, val: 19)),
          InkWell(
            onTap: () => Navigator.pushNamed(context, CreateStyle.route),
            child: desc(text: "Skip Face ID", size: 20),
          )
        ],
      ),
    );
  }
}
