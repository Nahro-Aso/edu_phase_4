import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shop_app/constants.dart';
import 'package:shop_app/onboarding_page.dart';

import 'khanoo_text.dart';

class YourLanguage extends StatelessWidget {
  const YourLanguage({Key? key}) : super(key: key);

  updateLocale(Locale locale, BuildContext context) {
    //goto onboarding page
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => OnBoardingPage(),
      ),
    );
    Get.updateLocale(locale);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: kPrimaryColor,
        body: Stack(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 200),
              child: Center(
                child: Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(.9),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      height: 110,
                      width: 110,
                      child: const FlutterLogo(),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const KhanooText(
                      'welcome',
                      22.0,
                      FontWeight.bold,
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 10,
                right: 10,
              ),
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      height: 300,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(.1),
                            offset: const Offset(0, 10),
                            blurRadius: 30,
                          ),
                        ],
                        color: Colors.white,
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(40),
                          topRight: Radius.circular(40),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            const SizedBox(height: 10),
                            Center(
                              child: Text(
                                'select_your_language'.tr,
                                style: const TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            const SizedBox(height: 10),
                            SizedBox(
                              height: 60,
                              child: OutlinedButton(
                                onPressed: () {
                                  updateLocale(
                                      const Locale('fa', 'IR'), context);
                                },
                                child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: const <Widget>[
                                      CircleAvatar(
                                        radius: 20,
                                        backgroundColor: Colors.white,
                                        backgroundImage: AssetImage(
                                            'assets/images/kurdish_flag.png'),
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text("کوردی",
                                          style: TextStyle(
                                            fontSize: 20,
                                          )),
                                    ]),
                              ),
                            ),
                            SizedBox(
                              height: 60,
                              child: OutlinedButton(
                                onPressed: () {
                                  updateLocale(
                                      const Locale('ar', 'IQ'), context);
                                },
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: const <Widget>[
                                    CircleAvatar(
                                      radius: 20,
                                      backgroundColor: Colors.white,
                                      backgroundImage: AssetImage(
                                          'assets/images/iraq_flag.jpg'),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text("العربیة",
                                        style: TextStyle(
                                          fontSize: 20,
                                        )),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 60,
                              child: OutlinedButton(
                                onPressed: () {
                                  updateLocale(
                                      const Locale('en', 'US'), context);
                                },
                                child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: const <Widget>[
                                      CircleAvatar(
                                        radius: 20,
                                        backgroundColor: Colors.white,
                                        backgroundImage: AssetImage(
                                            'assets/images/usa_flag.png'),
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text("English",
                                          style: TextStyle(
                                            fontSize: 20,
                                          )),
                                    ]),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ));
  }
}
