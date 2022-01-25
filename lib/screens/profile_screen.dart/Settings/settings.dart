import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shop_app/screens/profile_screen.dart/Settings/setting_card_switch.dart';

import '../../../constants.dart';
import '../../../theme_service.dart';
import '../profile_card.dart';

class Settings extends StatelessWidget {
  const Settings({Key? key}) : super(key: key);

  updateLocale(Locale locale, BuildContext context) {
    Navigator.pop(context);
    Get.updateLocale(locale);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'settings'.tr,
        ),
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            children: <Widget>[
              const SizedBox(height: 10),
              ProfileCard(
                icon: Icons.language_rounded,
                ontab: () {
                  showModalBottomSheet(
                      barrierColor: Colors.black.withOpacity(0.5),
                      context: context,
                      isScrollControlled: true,
                      builder: (BuildContext context) {
                        return Wrap(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                left: 10,
                                right: 10,
                              ),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(20.0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
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
                                        const SizedBox(height: 30),
                                        SizedBox(
                                          height: 60,
                                          child: OutlinedButton(
                                            style: OutlinedButton.styleFrom(
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(13.0),
                                              ),
                                              primary: kPrimaryColor,
                                            ),
                                            onPressed: () {
                                              updateLocale(
                                                  const Locale('fa', 'IR'),
                                                  context);
                                            },
                                            child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: const <Widget>[
                                                  CircleAvatar(
                                                    radius: 20,
                                                    backgroundColor:
                                                        Colors.white,
                                                    backgroundImage: AssetImage(
                                                        'Assets/images/kurdish_flag.png'),
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
                                            style: OutlinedButton.styleFrom(
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(13.0),
                                              ),
                                              primary: kPrimaryColor,
                                            ),
                                            onPressed: () {
                                              updateLocale(
                                                  const Locale('ar', 'IQ'),
                                                  context);
                                            },
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: const <Widget>[
                                                CircleAvatar(
                                                  radius: 20,
                                                  backgroundColor: Colors.white,
                                                  backgroundImage: AssetImage(
                                                      'Assets/images/iraq_flag.jpg'),
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
                                            style: OutlinedButton.styleFrom(
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(13.0),
                                              ),
                                              primary: kPrimaryColor,
                                            ),
                                            onPressed: () {
                                              updateLocale(
                                                  const Locale('en', 'US'),
                                                  context);
                                            },
                                            child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: const <Widget>[
                                                  CircleAvatar(
                                                    radius: 20,
                                                    backgroundColor:
                                                        Colors.white,
                                                    backgroundImage: AssetImage(
                                                        'Assets/images/usa_flag.png'),
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
                                ],
                              ),
                            ),
                          ],
                        );
                      });
                },
                title: "Language",
              ),
              const SizedBox(height: 10),
              SettingCardSwitch(
                icon: Icons.wb_sunny_rounded,
                isActive: false,
                ontab: () {
                  // Get.to(() => ChangePassword());
                },
                title: "Dark Mode",
              ),
              SettingCardSwitch(
                icon: Icons.notifications_active_rounded,
                isActive: true,
                ontab: () {
                  // Get.to(() => ChangePassword());
                  ThemeService().switchTheme();
                },
                title: "Notifications",
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.amber,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  textStyle: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                ),
                onPressed: () {
                  ThemeService().switchTheme();
                },
                child: const Text(
                  "Logout",
                  style: TextStyle(color: Colors.white),
                ),
              ),
              const SizedBox(height: 10),
              ProfileCard(
                icon: Icons.insert_drive_file_rounded,
                ontab: () {},
                title: "Terms & Privacy Policy",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
