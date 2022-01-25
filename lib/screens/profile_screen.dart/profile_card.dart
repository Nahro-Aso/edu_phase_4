import 'package:flutter/material.dart';

import '../../constants.dart';

class ProfileCard extends StatelessWidget {
  const ProfileCard({
    Key? key,
    required this.icon,
    required this.ontab,
    required this.title,
  }) : super(key: key);
  final IconData icon;
  final String title;
  final Function ontab;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: SizedBox(
        height: 60,
        child: TextButton(
          onPressed: () => ontab(),
          child: Row(
            children: <Widget>[
              Icon(
                icon,
                size: 30,
                color: kPrimaryColor,
              ),
              const SizedBox(width: 20),
              Text(
                title,
                style: const TextStyle(
                  fontSize: 18,
                ),
              ),
              const Spacer(),
              const Icon(
                Icons.arrow_forward_ios_rounded,
                color: kPrimaryColor,
              )
            ],
          ),
        ),
      ),
    );
  }
}
