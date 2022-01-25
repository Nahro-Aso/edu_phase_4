import 'package:flutter/material.dart';

import '../../../constants.dart';

// ignore: must_be_immutable
class SettingCardSwitch extends StatelessWidget {
  SettingCardSwitch({
    Key? key,
    required this.icon,
    required this.ontab,
    required this.title,
    required this.isActive,
  }) : super(key: key);
  final IconData icon;
  final String title;
  final Function ontab;
  bool isActive;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: SizedBox(
        height: 60,
        child: TextButton(
          onPressed: () {
            ontab();
          },
          child: Row(
            children: <Widget>[
              Icon(
                icon,
                color: kPrimaryColor,
                size: 30,
              ),
              const SizedBox(width: 20),
              Text(
                title,
                style: const TextStyle(
                  fontSize: 18,
                ),
              ),
              const Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
