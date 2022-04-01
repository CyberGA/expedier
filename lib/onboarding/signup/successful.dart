import 'package:expedier/onboarding/button.dart';
import 'package:expedier/onboarding/desc.dart';
import 'package:expedier/onboarding/login/login_user.dart';
import 'package:expedier/onboarding/wrapper.dart';
import 'package:expedier/utils.dart';
import 'package:flutter/material.dart';

class SuccessfulSignup extends StatelessWidget {
  static const String route = "successfulSignup";
  const SuccessfulSignup({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Wrapper(
        child: Column(
      children: [
        SizedBox(height: Utils.scaledHeight(context: context, val: 79.36)),
        Image.asset("assets/images/done.png",
            width: Utils.scaledWidth(context: context, val: 216.5),
            height: Utils.scaledHeight(context: context, val: 182.14)),
        SizedBox(height: Utils.scaledHeight(context: context, val: 52.5)),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: Utils.scaledWidth(context: context, val: 33)),
          child: desc(text: "Account Registration Successful!", size: 30, align: TextAlign.center),
        ),
        SizedBox(height: Utils.scaledHeight(context: context, val: 113)),
        authButton(text: "Login", context: context, func: () => Navigator.pushNamed(context, LoginUser.route))
      ],
    ));
  }
}
