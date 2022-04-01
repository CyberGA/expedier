import 'package:expedier/app/app.dart';
import 'package:expedier/color_scheme.dart';
import 'package:expedier/onboarding/button.dart';
import 'package:expedier/onboarding/desc.dart';
import 'package:expedier/onboarding/login/reset_password.dart';
import 'package:expedier/onboarding/signup/signup.dart';
import 'package:expedier/onboarding/title.dart';
import 'package:expedier/onboarding/wrapper.dart';
import 'package:flutter/material.dart';
import 'package:intl_phone_field/country_picker_dialog.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class Login extends StatefulWidget {
  static const String route = "login";
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
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
    final screenSize = MediaQuery.of(context).size;
    const mockHeight = 812;

    scaledHeight(num val) => val / mockHeight * screenSize.height;

    return Wrapper(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: scaledHeight(98)),
          title(title: "Welcome back!"),
          SizedBox(height: scaledHeight(11)),
          desc(text: "Sign in to continue to Expedier"),
          SizedBox(height: scaledHeight(67)),
          //& Phone number filed
          Container(
              padding: const EdgeInsets.symmetric(horizontal: 14),
              decoration: BoxDecoration(
                  color: cWhite,
                  borderRadius: BorderRadius.circular(6),
                  border: Border.all(color: cBlack.withOpacity(0.16), width: 0.4)),
              child: IntlPhoneField(
                controller: _telephoneController,
                autovalidateMode: AutovalidateMode.disabled,
                style: const TextStyle(fontSize: 14, color: cBlack),
                dropdownTextStyle: const TextStyle(fontSize: 12, color: cBlack),
                initialCountryCode: "CA",
                dropdownIcon: const Icon(
                  Icons.arrow_drop_down,
                  color: cBlack,
                ),
                dropdownIconPosition: IconPosition.trailing,
                // dropdownDecoration: BoxDecoration(
                //     borderRadius: BorderRadius.circular(3), border: Border.all(color: cWhite.withOpacity(0.05))),
                textInputAction: TextInputAction.next,
                onChanged: (phone) {
                  // ignore: avoid_print
                  print(phone.completeNumber);
                },
                onSaved: (tel) {
                  // Navigator.of(context).pushNamed(CreatePassword.route);
                },
                decoration: InputDecoration(
                  hintText: "8867 5645 8",
                  hintStyle: TextStyle(fontSize: 14, color: cBlack.withOpacity(0.23)),
                  border: InputBorder.none,
                  counterText: "",
                  focusedBorder: const OutlineInputBorder(
                    borderSide: BorderSide.none,
                  ),
                  enabledBorder: const OutlineInputBorder(borderSide: BorderSide.none),
                ),
                cursorColor: cBlack,
                pickerDialogStyle: PickerDialogStyle(
                    padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 12),
                    searchFieldCursorColor: cBlack,
                    countryCodeStyle: const TextStyle(fontSize: 12),
                    countryNameStyle: const TextStyle(fontSize: 12),
                    searchFieldInputDecoration: InputDecoration(
                      hintText: "Search ",
                      hintStyle: const TextStyle(fontSize: 12, color: cBlack),
                      enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: cBlack.withOpacity(0.5))),
                      focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: cBlack.withOpacity(0.5))),
                    )),
              )),
          SizedBox(height: scaledHeight(15)),

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

          SizedBox(height: scaledHeight(48)),

          authButton(text: "Login", context: context, func: () => Navigator.pushNamed(context, App.route)),

          SizedBox(height: scaledHeight(20)),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                  onTap: () => Navigator.pushNamed(context, ResetPassword.route),
                  child: desc(text: "Forgot password?", size: 14)),
            ],
          ),
          SizedBox(height: scaledHeight(10)),

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
          SizedBox(height: scaledHeight(35)),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [IconButton(onPressed: null, icon: Icon(Icons.fingerprint, color: cBlack, size: 65))],
          )
        ],
      ),
    );
  }
}
