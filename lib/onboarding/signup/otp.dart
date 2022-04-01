import 'package:custom_timer/custom_timer.dart';
import 'package:expedier/color_scheme.dart';
import 'package:expedier/onboarding/desc.dart';
import 'package:expedier/onboarding/signup/password.dart';
import 'package:expedier/onboarding/signup/resend_code.dart';
import 'package:expedier/onboarding/wrapper.dart';
import 'package:expedier/utils.dart';
import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';

class OTP extends StatefulWidget {
  static const String route = "otp";
  const OTP({Key? key}) : super(key: key);

  @override
  State<OTP> createState() => _OTPState();
}

class _OTPState extends State<OTP> {
  final _pinController = TextEditingController();
  final CustomTimerController _timerController = CustomTimerController();

  @override
  void initState() {
    _timerController.start();
    super.initState();
  }

  @override
  void dispose() {
    // _timerController.dispose();
    _pinController.dispose();
    super.dispose();
  }

  @override
  void setState(VoidCallback fn) {
    super.setState(fn);
  }

  @override
  Widget build(BuildContext context) {
    return Wrapper(
        child: Column(
      children: [
        SizedBox(height: Utils.scaledHeight(context: context, val: 39)),
        desc(text: "Enter the OTP code sent to", size: 14),
        SizedBox(height: Utils.scaledHeight(context: context, val: 8)),
        desc(text: "+886756458", size: 14),
        SizedBox(height: Utils.scaledHeight(context: context, val: 48)),

        //& Pin field
        Pinput(
          controller: _pinController,
          defaultPinTheme: PinTheme(
            width: Utils.scaledWidth(context: context, val: 41),
            height: Utils.scaledHeight(context: context, val: 36),
            textStyle: const TextStyle(fontSize: 14, color: cBlack),
            decoration: BoxDecoration(
              color: cWhite,
              border: Border.all(color: const Color(0xff000C45).withOpacity(0.16), width: 0.4),
              borderRadius: BorderRadius.circular(4),
            ),
          ),
          focusedPinTheme: PinTheme(
            width: Utils.scaledHeight(context: context, val: 41),
            height: Utils.scaledHeight(context: context, val: 36),
            textStyle: const TextStyle(fontSize: 14, color: cBlack, fontWeight: FontWeight.w600),
            decoration: BoxDecoration(
              color: cWhite,
              border: Border.all(color: const Color(0xff000C45).withOpacity(0.16), width: 0.4),
              borderRadius: BorderRadius.circular(4),
            ),
          ),
          length: 5,
          onCompleted: (val) {
            print(val);

            Navigator.pushNamedAndRemoveUntil(context, Password.route, (route) => false);
          },
        ),

        SizedBox(height: Utils.scaledHeight(context: context, val: 26)),

        //& counter down
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 8),
          decoration: BoxDecoration(color: cWhite, borderRadius: BorderRadius.circular(20)),
          child: CustomTimer(
            controller: _timerController,
            begin: const Duration(seconds: 45),
            end: const Duration(),
            builder: (time) {
              return desc(text: "${time.minutes}mm ${time.seconds}s", size: 11);
            },
          ),
        ),

        SizedBox(height: Utils.scaledHeight(context: context, val: 21)),

        desc(text: "Change mobile number", size: 13),

        SizedBox(height: Utils.scaledHeight(context: context, val: 18)),

        InkWell(
            onTap: () => Navigator.pushNamed(context, ResendCode.route),
            child: desc(text: "Send a new code", size: 13, textClr: cMainLight)),
      ],
    ));
  }
}
