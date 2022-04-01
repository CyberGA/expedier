import 'package:expedier/color_scheme.dart';
import 'package:expedier/onboarding/login/login.dart';
import 'package:expedier/onboarding/signup/signup.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Welcome extends StatefulWidget {
  static const String route = "welcome";
  const Welcome({Key? key}) : super(key: key);

  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  int currentPageIndex = 0;
  late final PageController _pageController;

  @override
  void initState() {
    _pageController = PageController();
    super.initState();
  }

  @override
  void setState(VoidCallback fn) {
    if (mounted) {
      super.setState(fn);
    }
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  //& when page view changes
  _onPageViewChanged(int index) {
    setState(() {
      currentPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: cMainBg,
      statusBarIconBrightness: Brightness.dark,
      systemNavigationBarColor: cMainBg,
    ));

    final screenSize = MediaQuery.of(context).size;
    const mockWidth = 375;
    const mockHeight = 812;

    scaledHeight(num val) => val / mockHeight * screenSize.height;
    scaledWidth(num val) => val / mockWidth * screenSize.width;

    // final scale = mockWidth / screenSize.width;
    final textScale = screenSize.width / mockWidth;

    return SafeArea(
      child: Scaffold(
        backgroundColor: cMainBg,
        body: SizedBox(
          width: screenSize.width,
          height: screenSize.height,
          child: Stack(
            children: [
              //& views
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: PageView(
                      controller: _pageController,
                      onPageChanged: _onPageViewChanged,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                              left: 56 / mockWidth * screenSize.width,
                              right: 56 / mockWidth * screenSize.width,
                              top: 105 / mockHeight * screenSize.height),
                          child: Column(
                            children: [
                              Image.asset("assets/images/empower.png",
                                  width: 291 / mockWidth * screenSize.width,
                                  height: 267 / mockWidth * screenSize.width,
                                  fit: BoxFit.contain),
                              SizedBox(height: 34 / mockHeight * screenSize.height),
                              Text("Empowering you to succeed financially, Globally",
                                  textScaleFactor: textScale,
                                  textAlign: TextAlign.center,
                                  style: const TextStyle(
                                      color: cBlack, fontSize: 25, fontWeight: FontWeight.w500, height: 23.87 / 20)),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                              left: 78 / mockWidth * screenSize.width,
                              right: 78 / mockWidth * screenSize.width,
                              top: 111 / mockHeight * screenSize.height),
                          child: Column(
                            children: [
                              Image.asset("assets/images/multiple.png",
                                  width: 291 / mockWidth * screenSize.width,
                                  height: 267 / mockWidth * screenSize.width,
                                  fit: BoxFit.contain),
                              SizedBox(height: 34 / mockHeight * screenSize.height),
                              Text("Pay for anything, anywhere",
                                  textScaleFactor: textScale,
                                  textAlign: TextAlign.center,
                                  style: const TextStyle(
                                      color: cBlack, fontSize: 25, fontWeight: FontWeight.w500, height: 23.87 / 20)),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: scaledHeight(125)),
                          child: Column(
                            children: [
                              Column(
                                children: [
                                  Container(
                                    margin: EdgeInsets.symmetric(horizontal: scaledWidth(26)),
                                    padding:
                                        EdgeInsets.symmetric(horizontal: scaledWidth(17), vertical: scaledHeight(12)),
                                    decoration: BoxDecoration(color: cWhite, boxShadow: [
                                      BoxShadow(
                                          color: cBlack.withOpacity(0.16), offset: const Offset(0, 6), blurRadius: 14)
                                    ]),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Row(
                                          children: [
                                            Image.asset("assets/images/person8.png",
                                                width: scaledWidth(40), height: scaledHeight(40)),
                                            SizedBox(width: scaledWidth(10)),
                                            Column(
                                              children: [
                                                Text("Victor Olatunde",
                                                    textScaleFactor: textScale,
                                                    style: const TextStyle(
                                                        color: cBlack, fontSize: 15, height: 17.9 / 15)),
                                                Text("August 06, 10:00AM",
                                                    textScaleFactor: textScale,
                                                    style: const TextStyle(
                                                        color: cBlack, fontSize: 11, height: 13.3 / 11)),
                                              ],
                                            )
                                          ],
                                        ),
                                        Column(
                                          crossAxisAlignment: CrossAxisAlignment.end,
                                          children: [
                                            Text("1,050.00 CAD",
                                                textScaleFactor: textScale,
                                                style: const TextStyle(color: cBlack, fontSize: 14, height: 16.7 / 14)),
                                            Text("Success",
                                                textScaleFactor: textScale,
                                                style: const TextStyle(
                                                    color: cMainLight, fontSize: 11, height: 13.3 / 11)),
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                  SizedBox(height: scaledHeight(8)),
                                  Container(
                                    margin: EdgeInsets.only(left: scaledWidth(45), right: scaledWidth(9)),
                                    padding:
                                        EdgeInsets.symmetric(horizontal: scaledWidth(17), vertical: scaledHeight(12)),
                                    decoration: BoxDecoration(color: cWhite, boxShadow: [
                                      BoxShadow(
                                          color: cBlack.withOpacity(0.16), offset: const Offset(0, 6), blurRadius: 14)
                                    ]),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Row(
                                          children: [
                                            Image.asset("assets/images/person9.png",
                                                width: scaledWidth(40), height: scaledHeight(40)),
                                            SizedBox(width: scaledWidth(10)),
                                            Column(
                                              children: [
                                                Text("Micheal Harbour",
                                                    textScaleFactor: textScale,
                                                    style: const TextStyle(
                                                        color: cBlack, fontSize: 15, height: 17.9 / 15)),
                                                Text("August 06, 10:00AM",
                                                    textScaleFactor: textScale,
                                                    style: const TextStyle(
                                                        color: cBlack, fontSize: 11, height: 13.3 / 11)),
                                              ],
                                            )
                                          ],
                                        ),
                                        Column(
                                          crossAxisAlignment: CrossAxisAlignment.end,
                                          children: [
                                            Text("800.00 NGN",
                                                textScaleFactor: textScale,
                                                style: const TextStyle(color: cBlack, fontSize: 14, height: 16.7 / 14)),
                                            Text("Success",
                                                textScaleFactor: textScale,
                                                style: const TextStyle(
                                                    color: cMainLight, fontSize: 11, height: 13.3 / 11)),
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                  SizedBox(height: scaledHeight(8)),
                                  Container(
                                      margin: EdgeInsets.symmetric(horizontal: scaledWidth(26)),
                                      padding:
                                          EdgeInsets.symmetric(horizontal: scaledWidth(17), vertical: scaledHeight(12)),
                                      decoration: BoxDecoration(color: cWhite, boxShadow: [
                                        BoxShadow(
                                            color: cBlack.withOpacity(0.16), offset: const Offset(0, 6), blurRadius: 14)
                                      ]),
                                      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                                        Row(
                                          children: [
                                            Image.asset("assets/images/person7.png",
                                                width: scaledWidth(40), height: scaledHeight(40)),
                                            SizedBox(width: scaledWidth(10)),
                                            Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Text("Bolanle Timi",
                                                    textScaleFactor: textScale,
                                                    style: const TextStyle(
                                                        color: cBlack, fontSize: 15, height: 17.9 / 15)),
                                                Text("August 06, 10:00AM",
                                                    textScaleFactor: textScale,
                                                    style: const TextStyle(
                                                        color: cBlack, fontSize: 11, height: 13.3 / 11)),
                                              ],
                                            )
                                          ],
                                        ),
                                        Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
                                          Text("2,000.00 NGN",
                                              textScaleFactor: textScale,
                                              style: const TextStyle(color: cBlack, fontSize: 14, height: 16.7 / 14)),
                                          Text("Success",
                                              textScaleFactor: textScale,
                                              style:
                                                  const TextStyle(color: cMainLight, fontSize: 11, height: 13.3 / 11)),
                                        ])
                                      ])),
                                ],
                              ),
                              const SizedBox(height: 34),
                              Padding(
                                padding: EdgeInsets.only(
                                    left: 73 / mockWidth * screenSize.width, right: 73 / mockWidth * screenSize.width),
                                child: Text("Send and Receive Money",
                                    textScaleFactor: textScale,
                                    textAlign: TextAlign.center,
                                    style: const TextStyle(
                                        color: cBlack, fontSize: 25, fontWeight: FontWeight.w500, height: 23.87 / 20)),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),

              //& Inidicator
              Positioned(
                top: 535 / mockHeight * screenSize.height,
                left: 0,
                right: 0,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SmoothPageIndicator(
                        controller: _pageController,
                        count: 3,
                        effect: ExpandingDotsEffect(
                            activeDotColor: cBlack,
                            expansionFactor: 2.5,
                            dotColor: cBlack,
                            dotWidth: 14 / mockWidth * screenSize.width,
                            dotHeight: 5 / mockHeight * screenSize.height),
                        onDotClicked: (index) => _pageController.animateToPage(index,
                            duration: const Duration(milliseconds: 500), curve: Curves.easeInOut)),
                  ],
                ),
              ),

              //& auth buttons
              Positioned(
                  top: 574 / mockHeight * screenSize.height,
                  left: 0,
                  right: 0,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      ElevatedButton(
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(cMain),
                            elevation: MaterialStateProperty.all(0),
                            shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
                            fixedSize: MaterialStateProperty.all(
                                Size(214 / mockWidth * screenSize.width, 54 / mockHeight * screenSize.height)),
                          ),
                          onPressed: () => Navigator.pushNamed(context, Login.route),
                          child: Text(
                            "Login",
                            textScaleFactor: textScale,
                            style: const TextStyle(color: cWhite, fontSize: 20, height: 23.87 / 20),
                          )),
                      const SizedBox(height: 16),
                      OutlinedButton(
                          style: ButtonStyle(
                            side: MaterialStateProperty.all(const BorderSide(color: cMain)),
                            elevation: MaterialStateProperty.all(0),
                            fixedSize: MaterialStateProperty.all(
                                Size(214 / mockWidth * screenSize.width, 54 / mockHeight * screenSize.height)),
                            shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
                          ),
                          onPressed: () => Navigator.pushNamed(context, Signup.route),
                          child: Text(
                            "Signup",
                            textScaleFactor: textScale,
                            style: const TextStyle(color: cMain, fontSize: 20, height: 23.87 / 20),
                          )),
                    ],
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
