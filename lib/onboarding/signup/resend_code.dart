import 'package:expedier/color_scheme.dart';
import 'package:expedier/onboarding/button.dart';
import 'package:expedier/onboarding/signup/otp.dart';
import 'package:expedier/onboarding/wrapper.dart';
import 'package:flutter/material.dart';

class ResendCode extends StatefulWidget {
  static const String route = "resendCode";
  const ResendCode({Key? key}) : super(key: key);

  @override
  State<ResendCode> createState() => _ResendCodeState();
}

class _ResendCodeState extends State<ResendCode> {
  final _telephoneController = TextEditingController();

  @override
  void dispose() {
    _telephoneController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    const mockHeight = 812;

    scaledHeight(num val) => val / mockHeight * screenSize.height;

    return Wrapper(
      appTitle: "Resend a new code",
      child: Column(
        children: [
          SizedBox(height: scaledHeight(174)),

          //& Phone no field
          TextFormField(
            controller: _telephoneController,
            cursorColor: cBlack,
            style: const TextStyle(
              color: cBlack,
              fontSize: 14,
            ),
            textInputAction: TextInputAction.done,
            keyboardType: TextInputType.text,
            decoration: InputDecoration(
                contentPadding: const EdgeInsets.symmetric(horizontal: 32, vertical: 18),
                hintText: "Phone number",
                hintStyle: TextStyle(fontSize: 14, color: cBlack.withOpacity(0.23)),
                fillColor: const Color(0xff122862).withOpacity(0.06),
                filled: true,
                errorBorder: InputBorder.none,
                focusedBorder: const OutlineInputBorder(
                    borderSide: BorderSide(color: cMainLight, width: 0.5),
                    borderRadius: BorderRadius.all(Radius.circular(6))),
                enabledBorder: const OutlineInputBorder(
                    borderSide: BorderSide(color: cMainLight, width: 0.5),
                    borderRadius: BorderRadius.all(Radius.circular(6)))),
          ),

          SizedBox(height: scaledHeight(67)),

          authButton(
              text: "Resend",
              context: context,
              func: () => Navigator.pushNamedAndRemoveUntil(context, OTP.route, (route) => false))
        ],
      ),
    );
  }
}
