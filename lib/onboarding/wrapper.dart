import 'package:expedier/color_scheme.dart';
import 'package:flutter/material.dart';

class Wrapper extends StatelessWidget {
  final String? appTitle;
  final Widget child;

  const Wrapper({Key? key, this.appTitle, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    const mockHeight = 812;

    scaledHeight(num val) => val / mockHeight * screenSize.height;

    return SafeArea(
        child: Scaffold(
      backgroundColor: cMainBg,
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        children: [
          SizedBox(height: scaledHeight(58)),
          Row(
            children: [
              Container(
                // padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 5.5),
                decoration: BoxDecoration(color: cMainLight.withOpacity(0.14), borderRadius: BorderRadius.circular(50)),
                child: const BackButton(
                  color: cMainLight,
                ),
              ),
              appTitle != null
                  ? Padding(
                    padding: const EdgeInsets.only(left: 43),
                    child: Text(appTitle!,
                        style:
                            const TextStyle(color: cBlack, fontSize: 27, fontWeight: FontWeight.w500, height: 32.22 / 27)),
                  )
                  : Container(),

              //& other widgets
            ],
          ),
          child,
        ],
      ),
    ));
  }
}
