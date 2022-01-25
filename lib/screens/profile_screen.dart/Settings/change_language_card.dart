import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';

class CheangeLanguageCard extends StatelessWidget {
  const CheangeLanguageCard({
    Key? key,
    required this.textIcon,
    required this.ontab,
    required this.title,
  }) : super(key: key);
  final String textIcon;
  final String title;
  final Function ontab;

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
              Text(
                textIcon,
                style: const TextStyle(
                  color: kPrimaryColor,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(width: 20),
              Text(
                title,
                style: const TextStyle(
                  fontSize: 18,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
