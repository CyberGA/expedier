import 'package:expedier/color_scheme.dart';
import 'package:expedier/onboarding/button.dart';
import 'package:expedier/onboarding/desc.dart';
import 'package:expedier/onboarding/signup/successful.dart';
import 'package:expedier/onboarding/wrapper.dart';
import 'package:expedier/utils.dart';
import 'package:flutter/material.dart';

class CreateStyle extends StatefulWidget {
  static const String route = "createStyle";

  const CreateStyle({Key? key}) : super(key: key);

  @override
  State<CreateStyle> createState() => _CreateStyleState();
}

class _CreateStyleState extends State<CreateStyle> {
  final avatar = "Mofin";

  @override
  Widget build(BuildContext context) {
    return Wrapper(
        appTitle: "Create your style",
        child: Column(
          children: [
            SizedBox(height: Utils.scaledHeight(context: context, val: 63)),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: Utils.scaledWidth(context: context, val: 40)),
              child: desc(
                  text:
                      "An Expedier Brand is your unique brand identity you can use to send or  receive payment within the Expedier network",
                  align: TextAlign.center),
            ),
            SizedBox(height: Utils.scaledHeight(context: context, val: 33)),
            Container(
              clipBehavior: Clip.hardEdge,
              decoration: BoxDecoration(
                  color: cMainLight.withOpacity(0.03),
                  border: Border.all(color: cBlack.withOpacity(0.16), width: 0.4),
                  borderRadius: BorderRadius.circular(6)),
              child: Row(
                children: [
                  Container(
                      color: cWhite,
                      padding: const EdgeInsets.only(left: 12, right: 25, top: 15, bottom: 15),
                      child: Image.asset(
                        "assets/images/logo1.png",
                        width: 45,
                        height: 15,
                      )),
                  Expanded(
                      child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [desc(text: avatar, size: 18, textClr: cBlack.withOpacity(0.42))],
                  ))
                ],
              ),
            ),
            SizedBox(height: Utils.scaledHeight(context: context, val: 56)),
            desc(text: "Select an avatar", size: 19),
            SizedBox(height: Utils.scaledHeight(context: context, val: 32)),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: Utils.scaledWidth(context: context, val: 50)),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset("assets/images/person1.png",
                          width: Utils.scaledWidth(context: context, val: 64),
                          height: Utils.scaledHeight(context: context, val: 64)),
                      Image.asset("assets/images/person2.png",
                          width: Utils.scaledWidth(context: context, val: 64),
                          height: Utils.scaledHeight(context: context, val: 64)),
                      Image.asset("assets/images/person3.png",
                          width: Utils.scaledWidth(context: context, val: 64),
                          height: Utils.scaledHeight(context: context, val: 64)),
                    ],
                  ),
                  const SizedBox(height: 12),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset("assets/images/person4.png",
                          width: Utils.scaledWidth(context: context, val: 64),
                          height: Utils.scaledHeight(context: context, val: 64)),
                      Image.asset("assets/images/person5.png",
                          width: Utils.scaledWidth(context: context, val: 64),
                          height: Utils.scaledHeight(context: context, val: 64)),
                      ElevatedButton(
                          onPressed: null,
                          style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(cWhite),
                              padding: MaterialStateProperty.all(const EdgeInsets.all(25)),
                              shape: MaterialStateProperty.all(
                                  RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)))),
                          child: const Icon(Icons.camera_alt_outlined, color: cMainLight, size: 18))
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: Utils.scaledHeight(context: context, val: 90)),
            authButton(
                text: "Save", context: context, func: () => Navigator.pushNamed(context, SuccessfulSignup.route)),
            SizedBox(height: Utils.scaledHeight(context: context, val: 18)),
            InkWell(
              onTap: () => Navigator.pushNamed(context, SuccessfulSignup.route),
              child: desc(text: "Skip", textClr: cMain, size: 20),
            )
          ],
        ));
  }
}
