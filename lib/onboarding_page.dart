import 'package:shop_app/screens/sign_in/sign_in_screen.dart';
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

import 'package:shop_app/button_widget.dart';
import 'package:shop_app/size_config.dart';

class OnBoardingPage extends StatelessWidget {
  static String routeName = "/onboarding";

  const OnBoardingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return SafeArea(
      child: IntroductionScreen(
        pages: [
          PageViewModel(
            title: 'Learn anything',
            body: 'from home or your working place',
            image: buildImage('assets/images/blogging.png'),
            decoration: getPageDecoration(),
          ),
          PageViewModel(
            title: 'page 2',
            body: 'Available right at your fingerprints',
            image: buildImage('assets/images/idea.png'),
            decoration: getPageDecoration(),
          ),
          PageViewModel(
            title: 'page 3',
            body: 'For enhanced reading experience',
            image: buildImage('assets/images/growth-2.png'),
            decoration: getPageDecoration(),
          ),
          PageViewModel(
            title: 'Today a Learner, tomorrow a leader',
            body: 'Start your journey',
            footer: ButtonWidget(
                text: 'Start Learning',
                onClicked: () => goToHome(context),
                key: null),
            image: buildImage('assets/images/success.png'),
            decoration: getPageDecoration(),
          ),
        ],
        done: Text('Read', style: TextStyle(fontWeight: FontWeight.w600)),
        onDone: () => goToHome(context),
        showSkipButton: true,
        skip: Text('Skip', style: TextStyle(color: Colors.grey)),
        onSkip: () => goToHome(context),
        next: Icon(Icons.arrow_forward, color: Color(0xFFEC615C)),
        dotsDecorator: getDotDecoration(),
        onChange: (index) => print('Page $index selected'),
        globalBackgroundColor: Colors.white,
        skipFlex: 0,
        nextFlex: 0,
        // isProgressTap: false,
        // isProgress: false,
        // showNextButton: false,
        // freeze: true,
        //animationDuration: 30,
      ),
    );
  }

  void goToHome(context) => Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (_) => SignInScreen()),
      );

  Widget buildImage(String path) =>
      Center(child: Image.asset(path, width: 800, height: 600));

  DotsDecorator getDotDecoration() => DotsDecorator(
        color: Colors.grey,
        activeColor: Color(0xFFEC615C),
        size: Size(10, 10),
        activeSize: Size(35, 10),
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
      );

  PageDecoration getPageDecoration() => PageDecoration(
        titleTextStyle: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        bodyTextStyle: TextStyle(fontSize: 20),
        titlePadding: EdgeInsets.only(top: 150),
        descriptionPadding: EdgeInsets.only(top: 15),
        imagePadding: EdgeInsets.only(top: 90),
        pageColor: Colors.white,
      );
}
