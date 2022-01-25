import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shop_app/screens/profile_screen.dart/edit_profile/submit_button.dart';

import '../profile_card.dart';
import 'change_password.dart';
import 'change_phone_number.dart';

class EditProfile extends StatelessWidget {
  EditProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'edit_profile'.tr,
        ),
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            children: <Widget>[
              const SizedBox(height: 20),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  GestureDetector(onTap: () async {
                    ClipRRect(
                      borderRadius: BorderRadius.circular(100),
                      child: Image(
                        image: NetworkImage(
                          'https://picsum.photos/250?image=9',
                        ),
                        fit: BoxFit.cover,
                        width: 90,
                        height: 90,
                      ),
                    );
                  }),
                  Text(
                    'add_image'.tr,
                  ),
                ],
              ),
              const SizedBox(height: 20),
              ProfileCard(
                icon: Icons.phone,
                ontab: () {
                  Get.to(() => ChangePhoneNumber());
                },
                title: "change_phone_number".tr,
              ),
              const SizedBox(height: 10),
              ProfileCard(
                icon: Icons.lock,
                ontab: () {
                  Get.to(() => ChangePassword());
                },
                title: "change_password".tr,
              ),
              const Spacer(),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: SizedBox(
                  width: double.infinity,
                  child: SubmitButton(
                    text: "change".tr,
                    ontab: () {
                      Get.back();
                    },
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
