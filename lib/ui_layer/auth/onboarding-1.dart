import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:tmarjy_m3ak/constants.dart';

import 'login_page.dart';

class IntroScreens extends StatefulWidget {
  @override
  _IntroScreensState createState() => _IntroScreensState();
}

class _IntroScreensState extends State<IntroScreens> {
  final introKey = GlobalKey<IntroductionScreenState>();

  void _onIntroEnd(context) {
    Navigator.of(context).push(
      MaterialPageRoute(builder: (_) => Login()),
    );
  }

  Widget _buildImage(String assetName) {
    return Align(
      child: Image.asset('$assetName', width: 350.0),
      alignment: Alignment.bottomCenter,
    );
  }

  @override
  Widget build(BuildContext context) {
    const bodyStyle = TextStyle(fontSize: 28.0, color: kSecondary);
    const pageDecoration = const PageDecoration(
      titleTextStyle: TextStyle(fontSize: 32.0, color: kSecondary, fontWeight: FontWeight.bold),
      bodyTextStyle: bodyStyle,
      descriptionPadding: EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 16.0),
      pageColor: kPrimary,
      imagePadding: EdgeInsets.zero,
    );
    return Scaffold(
      body: IntroductionScreen(
        key: introKey,
        pages: [
          PageViewModel(
            title: "إطلب ممرضك",
            body: "هتلاقي عندنا العناية الكاملة بمريضك في اي وقت",
            image: _buildImage("images/onboarding-1.png"),
            decoration: pageDecoration,
          ),
          PageViewModel(
            title: "علاجك لباب البيت",
            body: "علاجك و تحاليلك هتوصلك و انتا ف مكانك",
            image: _buildImage('images/onboarding-2.png'),
            decoration: pageDecoration,
          ),
          PageViewModel(
            title: "الاشعة و التحاليل",
            body: "هناخد منك العينة و انتا ف بيتك",
            image: _buildImage('images/onboarding-3.png'),
            decoration: pageDecoration,
          ),
        ],
        onDone: () => _onIntroEnd(context),
        //onSkip: () => _onIntroEnd(context), // You can override onSkip callback
        showSkipButton: true,
        skipFlex: 0,
        nextFlex: 0,
        skip: const Text('تخطي'),
        next: const Icon(Icons.arrow_forward),
        done: const Text('تم', style: TextStyle(fontWeight: FontWeight.w600)),
        dotsDecorator: const DotsDecorator(
          size: Size(10.0, 10.0),
          color: Color(0xFFBDBDBD),
          activeSize: Size(22.0, 10.0),
          activeShape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(25.0)),
          ),
        ),
      ),
    );
  }
}
