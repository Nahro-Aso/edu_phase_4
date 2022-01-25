import 'package:flutter/material.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';

class ChangePassword extends StatelessWidget {
  ChangePassword({Key? key}) : super(key: key);

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _oldPassword = TextEditingController();
  final TextEditingController _newPassword = TextEditingController();
  final TextEditingController _confermPassword = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'change_password'.tr,
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
                decoration: InputDecoration(
                  hintText: 'current_password'.tr,
                ),
                controller: _oldPassword,
                validator: (value) {
                  if (value!.isEmpty) {
                    return "please Enter Password";
                  } else if (value.length < 6) {
                    return "Password Need 6 characters or more";
                  }
                  return null;
                },
              ),
              SizedBox(
                height: 20,
              ),
              TextFormField(
                decoration: InputDecoration(
                  hintText: 'new_password'.tr,
                ),
                controller: _newPassword,
                validator: (value) {
                  if (value!.isEmpty) {
                    return "please Enter Password";
                  } else if (value.length < 6) {
                    return "Password Need 6 characters or more";
                  }
                  return null;
                },
              ),
              SizedBox(
                height: 20,
              ),
              TextFormField(
                decoration: InputDecoration(
                  hintText: 'confirm_password'.tr,
                ),
                controller: _confermPassword,
                validator: (value) {
                  if (value!.isEmpty) {
                    return "please Enter Password";
                  } else if (_confermPassword.text != _newPassword.text) {
                    return "the Password not corect";
                  }
                  return null;
                },
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () {},
                child: Text('change_password'.tr),
              )
            ],
          ),
        ),
      )),
    );
  }
}
