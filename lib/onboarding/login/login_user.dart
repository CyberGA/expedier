import 'package:expedier/app/app.dart';
import 'package:expedier/color_scheme.dart';
import 'package:expedier/onboarding/button.dart';
import 'package:expedier/onboarding/desc.dart';
import 'package:expedier/onboarding/login/reset_password.dart';
import 'package:expedier/onboarding/signup/signup.dart';
import 'package:expedier/onboarding/title.dart';
import 'package:expedier/onboarding/wrapper.dart';
import 'package:expedier/utils.dart';
import 'package:flutter/material.dart';

class LoginUser extends StatefulWidget {
  static const String route = "loginUser";
  const LoginUser({Key? key}) : super(key: key);

  @override
  State<LoginUser> createState() => _LoginUserState();
}

class _LoginUserState extends State<LoginUser> {
  final _telephoneController = TextEditingController();
  final _passwordController = TextEditingController();
  bool isNotVisible = false;

  @override
  void dispose() {
    _telephoneController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Wrapper(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: Utils.scaledHeight(context: context, val: 98)),
          title(title: "Welcome back!"),
          SizedBox(height: Utils.scaledHeight(context: context, val: 11)),
          desc(text: "Fiyin odebunmi (+2348144710909)"),
          SizedBox(height: Utils.scaledHeight(context: context, val: 11)),
          desc(text: "Not you? Switch account"),

          SizedBox(height: Utils.scaledHeight(context: context, val: 93)),

          //& Password field
          TextFormField(
            controller: _passwordController,
            cursorColor: cBlack,
            obscureText: isNotVisible,
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
                      isNotVisible = !isNotVisible;
                    });
                  },
                  icon:
                      isNotVisible ? const Icon(Icons.visibility_outlined) : const Icon(Icons.visibility_off_outlined),
                  iconSize: 18,
                  color: const Color(0xff56595E),
                ),
                hintText: "Password",
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

          SizedBox(height: Utils.scaledHeight(context: context, val: 48)),

          authButton(text: "Login", context: context, func: () => Navigator.pushNamed(context, App.route)),

          SizedBox(height: Utils.scaledHeight(context: context, val: 20)),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                  onTap: () => Navigator.pushNamed(context, ResetPassword.route),
                  child: desc(text: "Forgot password?", size: 14)),
            ],
          ),
          SizedBox(height: Utils.scaledHeight(context: context, val: 10)),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                onTap: () => Navigator.pushNamed(context, Signup.route),
                child: RichText(
                    text: const TextSpan(
                        style: TextStyle(fontSize: 14, color: cBlack, fontFamily: "SFProRounded"),
                        children: [
                      TextSpan(text: "Don't have an account? "),
                      TextSpan(text: "Sign up now", style: TextStyle(color: cMainLight))
                    ])),
              ),
            ],
          ),
          SizedBox(height: Utils.scaledHeight(context: context, val: 30)),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [IconButton(onPressed: null, icon: Icon(Icons.fingerprint, color: cBlack, size: 65))],
          )
        ],
      ),
    );
  }
}
