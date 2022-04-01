import 'package:expedier/onboarding/button.dart';
import 'package:expedier/onboarding/desc.dart';
import 'package:expedier/onboarding/login/login.dart';
import 'package:expedier/onboarding/wrapper.dart';
import 'package:flutter/material.dart';

class ResetLink extends StatefulWidget {
  static const String route = "resetLink";

  const ResetLink({Key? key}) : super(key: key);

  @override
  State<ResetLink> createState() => _ResetLinkState();
}

class _ResetLinkState extends State<ResetLink> {
  final _emailController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    const mockWidth = 375;
    const mockHeight = 812;

    scaledHeight(num val) => val / mockHeight * screenSize.height;
    scaledWidth(num val) => val / mockWidth * screenSize.width;

    return Wrapper(
        child: Column(
      children: [
        SizedBox(height: scaledHeight(67.36)),
        Image.asset("assets/images/done.png", width: scaledWidth(216.5), height: scaledHeight(182.14)),
        SizedBox(height: scaledHeight(32)),
        desc(text: "Recovery link set", size: 30),
        SizedBox(height: scaledHeight(14)),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: scaledWidth(64)),
          child: desc(
              text: "A recovery link has been sent to your email. Click on this to verify your password",
              size: 12,
              align: TextAlign.center),
        ),
        SizedBox(height: scaledHeight(104)),
        authButton(text: "Verify password", context: context, func: () => Navigator.pushNamed(context, Login.route))
      ],
    ));
  }
}
