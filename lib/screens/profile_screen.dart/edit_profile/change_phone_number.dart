import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

import '/Screens/profile_screen.dart/edit_profile/submit_button.dart';

class ChangePhoneNumber extends StatelessWidget {
  ChangePhoneNumber({Key? key}) : super(key: key);

  final _formKey = GlobalKey<FormState>();
  final TextEditingController _phoneNumber = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'change_phone_number'.tr,
        ),
      ),
      body: Center(
          child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              SizedBox(
                height: 20,
              ),
              TextFormField(
                keyboardType: TextInputType.number,
                inputFormatters: [
                  FilteringTextInputFormatter.digitsOnly,
                ],
                maxLength: 11,
                controller: _phoneNumber,
                decoration: InputDecoration(
                  hintText: 'phone_number'.tr,
                ),
                validator: (value) {
                  if (!value!.startsWith("07")) {
                    return "Phone Number Need Start with 07";
                  } else if (value.length != 11) {
                    return "Phone Number not correct";
                  }
                  return null;
                },
              ),
              SizedBox(
                height: 20,
              ),
              SubmitButton(
                text: "change".tr,
                ontab: () {
                  _formKey.currentState!.validate();
                },
              )
            ],
          ),
        ),
      )),
    );
  }
}
