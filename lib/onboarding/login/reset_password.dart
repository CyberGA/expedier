import 'package:expedier/color_scheme.dart';
import 'package:expedier/onboarding/button.dart';
import 'package:expedier/onboarding/desc.dart';
import 'package:expedier/onboarding/login/reset_link.dart';
import 'package:expedier/onboarding/title.dart';
import 'package:expedier/onboarding/wrapper.dart';
import 'package:flutter/material.dart';

class ResetPassword extends StatefulWidget {
  static const String route = "resetPassword";

  const ResetPassword({Key? key}) : super(key: key);

  @override
  State<ResetPassword> createState() => _ResetPasswordState();
}

class _ResetPasswordState extends State<ResetPassword> {
  final _emailController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    const mockHeight = 812;

    scaledHeight(num val) => val / mockHeight * screenSize.height;

    return Wrapper(
        appTitle: "Forgot Password",
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: scaledHeight(99)),
            title(title: "Enter your email address", size: 20),
            SizedBox(height: scaledHeight(8)),
            desc(text: "We’ll send you a mail to recover your password", size: 10),
            SizedBox(height: scaledHeight(49)),
            TextFormField(
              controller: _emailController,
              cursorColor: cBlack,
              style: const TextStyle(
                color: cBlack,
                fontSize: 14,
              ),
              textInputAction: TextInputAction.done,
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                  contentPadding: const EdgeInsets.symmetric(horizontal: 32, vertical: 18),
                  hintText: "Kingsleymadu@gmail.com",
                  hintStyle: TextStyle(fontSize: 14, color: cBlack.withOpacity(0.23)),
                  fillColor: cWhite,
                  filled: true,
                  errorBorder: InputBorder.none,
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: cBlack.withOpacity(0.16), width: 0.4),
                      borderRadius: const BorderRadius.all(Radius.circular(6))),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: cBlack.withOpacity(0.16), width: 0.4),
                      borderRadius: const BorderRadius.all(Radius.circular(6)))),
            ),
            SizedBox(height: scaledHeight(244)),
            authButton(
                text: "Reset Password", context: context, func: () => Navigator.pushNamed(context, ResetLink.route))
          ],
        ));
  }
}
