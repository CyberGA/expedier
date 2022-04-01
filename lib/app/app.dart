import 'dart:math' as math;
import 'package:expedier/color_scheme.dart';
import 'package:expedier/onboarding/desc.dart';
import 'package:expedier/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg_icons/flutter_svg_icons.dart';

class App extends StatefulWidget {
  static const String route = "app";
  const App({Key? key}) : super(key: key);

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> with SingleTickerProviderStateMixin {
  late TabController controller;

  @override
  void initState() {
    controller = TabController(length: 5, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  void setState(VoidCallback fn) {
    super.setState(fn);
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: cMainBg,
      statusBarIconBrightness: Brightness.dark,
      systemNavigationBarColor: cWhite,
    ));

    return SafeArea(
      child: Scaffold(
        backgroundColor: cMainBg,
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(Utils.scaledHeight(context: context, val: 93)),
          child: Container(
            padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 20),
            color: cMainBg,
            child: Row(
              children: [
                Image.asset(
                  "assets/images/person6.png",
                  width: Utils.scaledWidth(context: context, val: 53),
                  height: Utils.scaledHeight(context: context, val: 53),
                ),
                const SizedBox(
                  width: 14,
                ),
                desc(
                  text: "Hi Jane",
                ),
                Expanded(
                    child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: const [
                    IconButton(
                        onPressed: null,
                        iconSize: 24,
                        icon: Icon(
                          Icons.speaker_notes,
                          color: Color(0xff323232),
                        )),
                    IconButton(
                        onPressed: null,
                        iconSize: 24,
                        icon: Icon(
                          Icons.notifications_none_outlined,
                          color: cBlack,
                        )),
                  ],
                ))
              ],
            ),
          ),
        ),
        body: TabBarView(controller: controller, physics: const NeverScrollableScrollPhysics(), children: [
          ListView(
            physics: const BouncingScrollPhysics(),
            padding: EdgeInsets.symmetric(horizontal: Utils.scaledWidth(context: context, val: 20), vertical: 20),
            children: [
              //& Card
              Container(
                padding: EdgeInsets.only(
                    top: Utils.scaledHeight(context: context, val: 16),
                    left: Utils.scaledWidth(context: context, val: 27),
                    right: Utils.scaledWidth(context: context, val: 24),
                    bottom: Utils.scaledHeight(context: context, val: 20)),
                decoration: BoxDecoration(color: cMainLight, borderRadius: BorderRadius.circular(20)),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  desc(text: "Balance", textClr: cWhite, size: 15),
                                  const SizedBox(height: 5),
                                  desc(text: "\$5790.00", textClr: cWhite, size: 19),
                                ],
                              ),
                              Image.asset(
                                "assets/images/card-type.png",
                                width: 30,
                                height: 30,
                              )
                            ],
                          ),
                          const SizedBox(height: 28),
                          desc(text: "5355   0348   ****  **** ", size: 16, textClr: cWhite),
                          const SizedBox(height: 32),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              desc(text: "JANE DOE", size: 15, textClr: cWhite),
                              Padding(
                                padding: const EdgeInsets.only(right: 8),
                                child: Row(
                                  children: [
                                    Column(
                                      children: [
                                        desc(text: "VALID", textClr: const Color(0xffFFFBFB), size: 6),
                                        desc(text: "THRU", textClr: const Color(0xffFFFBFB), size: 6)
                                      ],
                                    ),
                                    const SizedBox(width: 8),
                                    desc(text: "06 / 23", size: 11, textClr: cWhite)
                                  ],
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(height: 20),
              desc(text: "Wallets", size: 20),
              const SizedBox(height: 10),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                physics: const BouncingScrollPhysics(),
                padding: const EdgeInsets.only(top: 12, bottom: 16, right: 16),
                child: Row(
                  children: [
                    wallet(
                        flag: "assets/images/canadia-flag.png",
                        context: context,
                        amount: "500.00",
                        currency: "Canadian Dollar"),
                    wallet(
                        flag: "assets/images/nga-flag.png",
                        context: context,
                        amount: "500.00",
                        currency: "Nigerian Naira"),
                    wallet(
                        flag: "assets/images/usa-flag.png", context: context, amount: "500.00", currency: "US Dollar"),
                  ],
                ),
              ),

              const SizedBox(height: 27),

              //& Recent transactions
              desc(text: "Recent Transactions", size: 14, textClr: cBlack.withOpacity(0.72)),
              const SizedBox(height: 21),

              Column(
                children: [
                  transaction(
                      pics: "assets/images/person8.png",
                      name: "Victor Olatunde",
                      date: "August 06, 10:00AM",
                      amount: "1,050.00 CAD"),
                  transaction(
                      pics: "assets/images/person7.png",
                      name: "Bolanle Timi",
                      date: "August 06, 10:00AM",
                      amount: "2,000.00 NGN"),
                  transaction(
                      pics: "assets/images/person9.png",
                      name: "Micheal Harbour",
                      date: "August 06, 10:00AM",
                      amount: "800.00 NGN"),
                  transaction(
                      pics: "assets/images/person10.png",
                      name: "Mary Quam",
                      date: "August 06, 10:00AM",
                      amount: "5,500.00 USD"),
                  transaction(
                      pics: "assets/images/person11.png",
                      name: "Rihanna Lopez",
                      date: "August 06, 10:00AM",
                      amount: "3,000.00 CAD"),
                ],
              )
            ],
          ),
          Center(child: desc(text: "Coming soon")),
          Center(child: desc(text: "Coming soon")),
          Center(child: desc(text: "Coming soon")),
          Center(child: desc(text: "Coming soon")),
        ]),
        bottomNavigationBar: BottomAppBar(
          child: TabBar(
              controller: controller,
              unselectedLabelColor: cBlack,
              indicatorSize: TabBarIndicatorSize.tab,
              labelColor: cBlack,
              indicatorColor: Colors.transparent,
              labelStyle: const TextStyle(fontSize: 11, fontFamily: "SFProRounded", fontWeight: FontWeight.w600),
              tabs: const [
                Tab(text: "Home", icon: SvgIcon(icon: SvgIconData('assets/icons/home.svg'), size: 18)),
                Tab(text: "Account", icon: SvgIcon(icon: SvgIconData('assets/icons/account.svg'), size: 18)),
                Tab(text: "Send", icon: Icon(Icons.send, color: cWhite, size: 18)),
                Tab(text: "Recipients", icon: SvgIcon(icon: SvgIconData('assets/icons/recipients.svg'), size: 18)),
                Tab(text: "Bills", icon: SvgIcon(icon: SvgIconData('assets/icons/bill.svg'), size: 18)),
              ]),
        ),
        floatingActionButton: FloatingActionButton(
          elevation: 0,
          onPressed: null,
          backgroundColor: cWhite,
          child: Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(color: cMainLight, borderRadius: BorderRadius.circular(50)),
              child: Transform.rotate(
                  angle: -math.pi / 4, child: const Icon(Icons.send_rounded, color: cWhite, size: 20))),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      ),
    );
  }

  Widget wallet(
          {required String flag, required BuildContext context, required String amount, required String currency}) =>
      Container(
        padding: EdgeInsets.symmetric(
            horizontal: Utils.scaledWidth(context: context, val: 14),
            vertical: Utils.scaledHeight(context: context, val: 19)),
        decoration: BoxDecoration(color: cWhite, borderRadius: BorderRadius.circular(11), boxShadow: [
          BoxShadow(color: cBlack.withOpacity(0.15), spreadRadius: 0, blurRadius: 17, offset: const Offset(0, 1))
        ]),
        margin: EdgeInsets.only(left: Utils.scaledWidth(context: context, val: 16)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(
                  flag,
                  width: Utils.scaledWidth(context: context, val: 36),
                  height: Utils.scaledHeight(context: context, val: 27),
                ),
                const SizedBox(
                  width: 34,
                ),
                const SvgIcon(
                  icon: SvgIconData("assets/icons/cirle-add.svg"),
                  size: 20,
                ),
              ],
            ),
            const SizedBox(height: 16),
            desc(text: amount, size: 20),
            const SizedBox(height: 4),
            desc(text: currency, size: 9)
          ],
        ),
      );

  Widget transaction({required String pics, required String name, required String date, required String amount}) =>
      Container(
        margin: const EdgeInsets.only(bottom: 16),
        padding: const EdgeInsets.symmetric(vertical: 12),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Image.asset(pics, width: 40, height: 40),
                const SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(name, style: const TextStyle(color: cBlack, fontSize: 15, height: 17.9 / 15)),
                    Text(date, style: TextStyle(color: cBlack.withOpacity(0.5), fontSize: 11, height: 13.3 / 11)),
                  ],
                )
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Row(
                  children: [
                    const SvgIcon(
                      icon: SvgIconData("assets/icons/add.svg"),
                      size: 10,
                    ),
                    const SizedBox(width: 4),
                    Text(amount, style: const TextStyle(color: cBlack, fontSize: 14, height: 16.7 / 14)),
                  ],
                ),
                const Text("Success", style: TextStyle(color: cMainLight, fontSize: 11, height: 13.3 / 11)),
              ],
            )
          ],
        ),
      );
}
