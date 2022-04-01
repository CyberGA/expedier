import 'package:expedier/color_scheme.dart';
import 'package:expedier/onboarding/button.dart';
import 'package:expedier/onboarding/desc.dart';
import 'package:expedier/onboarding/signup/security_face_id.dart';
import 'package:expedier/onboarding/signup/security_fingerprint.dart';
import 'package:expedier/onboarding/wrapper.dart';
import 'package:expedier/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

class Password extends StatefulWidget {
  static const String route = "password";
  const Password({Key? key}) : super(key: key);

  @override
  State<Password> createState() => _PasswordState();
}

class _PasswordState extends State<Password> {
  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();
  bool isPassNotVisible = false;
  bool isConfirmPassNotVisible = false;

  @override
  void dispose() {
    _passwordController.dispose();
    _confirmPasswordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Wrapper(
        appTitle: "Create Password",
        child: Column(
          children: [
            SizedBox(height: Utils.scaledHeight(context: context, val: 57)),

            //& Password field
            TextFormField(
              controller: _passwordController,
              cursorColor: cBlack,
              obscureText: isPassNotVisible,
              style: const TextStyle(
                color: cBlack,
                fontSize: 14,
              ),
              textInputAction: TextInputAction.done,
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                  contentPadding: const EdgeInsets.only(left: 21, right: 18, top: 18, bottom: 18),
                  suffixIcon: IconButton(
                    onPressed: () {
                      setState(() {
                        isPassNotVisible = !isPassNotVisible;
                      });
                    },
                    icon: isPassNotVisible
                        ? const Icon(Icons.visibility_outlined)
                        : const Icon(Icons.visibility_off_outlined),
                    iconSize: 18,
                    color: const Color(0xff56595E),
                  ),
                  hintText: "Enter Password",
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

            SizedBox(height: Utils.scaledHeight(context: context, val: 13)),

            //& Confirm Password field
            TextFormField(
              controller: _confirmPasswordController,
              cursorColor: cBlack,
              obscureText: isConfirmPassNotVisible,
              style: const TextStyle(
                color: cBlack,
                fontSize: 14,
              ),
              textInputAction: TextInputAction.done,
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                  contentPadding: const EdgeInsets.only(left: 21, right: 18, top: 18, bottom: 18),
                  suffixIcon: IconButton(
                    onPressed: () {
                      setState(() {
                        isConfirmPassNotVisible = !isConfirmPassNotVisible;
                      });
                    },
                    icon: isConfirmPassNotVisible
                        ? const Icon(Icons.visibility_outlined)
                        : const Icon(Icons.visibility_off_outlined),
                    iconSize: 18,
                    color: const Color(0xff56595E),
                  ),
                  hintText: "Confirm Password",
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

            SizedBox(height: Utils.scaledHeight(context: context, val: 30)),

            conditions(text: "At least one upper case"),
            conditions(text: "At least one number"),
            conditions(text: "At least one special character"),
            conditions(text: "Minimum of 8 character"),

            SizedBox(height: Utils.scaledHeight(context: context, val: 251)),

            authButton(
                text: "Submit",
                context: context,
                func: () {
                  if (defaultTargetPlatform == TargetPlatform.iOS) {
                    Navigator.pushNamed(context, SecurityFaceId.route);
                  }
                  if (defaultTargetPlatform == TargetPlatform.android) {
                    Navigator.pushNamed(context, SecurityFingerprint.route);
                  }
                })
          ],
        ));
  }

  Widget conditions({required String text}) => Padding(
        padding: const EdgeInsets.only(bottom: 14),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Icon(
              Icons.circle,
              color: cMainLight,
              size: 6,
            ),
            const SizedBox(width: 8),
            desc(text: text, size: 16)
          ],
        ),
      );
}
