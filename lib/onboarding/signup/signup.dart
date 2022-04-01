import 'package:expedier/color_scheme.dart';
import 'package:expedier/onboarding/button.dart';
import 'package:expedier/onboarding/desc.dart';
import 'package:expedier/onboarding/login/login.dart';
import 'package:expedier/onboarding/signup/otp.dart';
import 'package:expedier/onboarding/signup/privacy.dart';
import 'package:expedier/onboarding/title.dart';
import 'package:expedier/onboarding/wrapper.dart';
import 'package:flutter/material.dart';
import 'package:intl_phone_field/country_picker_dialog.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class Signup extends StatefulWidget {
  static const String route = "signup";

  const Signup({Key? key}) : super(key: key);

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  final _telephoneController = TextEditingController();
  final _nameController = TextEditingController();

  @override
  void dispose() {
    _telephoneController.dispose();
    _nameController.dispose();
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
        SizedBox(height: scaledHeight(25)),

        title(title: "Let’s get started"),

        SizedBox(height: scaledHeight(49)),

        //& Phone number
        desc(text: "Enter your mobile number", size: 14),
        SizedBox(height: scaledHeight(6)),
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

        SizedBox(height: scaledHeight(25)),

        //& full name field
        desc(text: "Full Name", size: 14),
        SizedBox(height: scaledHeight(6)),
        TextFormField(
          controller: _nameController,
          cursorColor: cBlack,
          style: const TextStyle(
            color: cBlack,
            fontSize: 14,
          ),
          textInputAction: TextInputAction.done,
          keyboardType: TextInputType.text,
          decoration: InputDecoration(
              contentPadding: const EdgeInsets.symmetric(horizontal: 32, vertical: 18),
              hintText: "Full name",
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

        SizedBox(height: scaledHeight(25)),

        //& Email Address field
        desc(text: "Email Address", size: 14),
        SizedBox(height: scaledHeight(6)),
        TextFormField(
          controller: _nameController,
          cursorColor: cBlack,
          style: const TextStyle(
            color: cBlack,
            fontSize: 14,
          ),
          textInputAction: TextInputAction.done,
          keyboardType: TextInputType.text,
          decoration: InputDecoration(
              contentPadding: const EdgeInsets.symmetric(horizontal: 32, vertical: 18),
              hintText: "Email address",
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

        SizedBox(height: scaledHeight(25)),

        //& Country Address field
        desc(text: "Country Address", size: 14),
        SizedBox(height: scaledHeight(6)),
        TextFormField(
          controller: _nameController,
          cursorColor: cBlack,
          style: const TextStyle(
            color: cBlack,
            fontSize: 14,
          ),
          textInputAction: TextInputAction.done,
          keyboardType: TextInputType.text,
          decoration: InputDecoration(
              contentPadding: const EdgeInsets.symmetric(horizontal: 32, vertical: 18),
              hintText: "Country address",
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

        SizedBox(height: scaledHeight(19)),
        InkWell(
          onTap: () => Navigator.pushNamed(context, PrivacyPolicy.route),
          child: RichText(
              text:
                  const TextSpan(style: TextStyle(fontSize: 12, color: cBlack, fontFamily: "SFProRounded"), children: [
            TextSpan(text: "By submitting this form, I confirm that I have read, consent and agreed to Expedier’s "),
            TextSpan(text: "User Agreement ", style: TextStyle(color: cMainLight)),
            TextSpan(text: "and "),
            TextSpan(text: "Privacy Policy.", style: TextStyle(color: cMainLight)),
          ])),
        ),

        SizedBox(height: scaledHeight(24)),

        authButton(text: "Continue", context: context, func: () => Navigator.pushNamed(context, OTP.route)),

        SizedBox(height: scaledHeight(18)),

        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InkWell(
              onTap: () => Navigator.pushNamed(context, Login.route),
              child: RichText(
                  text: const TextSpan(
                      style: TextStyle(fontSize: 14, color: cBlack, fontFamily: "SFProRounded"),
                      children: [
                    TextSpan(text: "Have an account? "),
                    TextSpan(text: "Sign in now", style: TextStyle(color: cMainLight))
                  ])),
            ),
          ],
        ),
      ],
    ));
  }
}
