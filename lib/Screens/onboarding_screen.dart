import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:store/Screens/home_page.dart';

class OnBoardingScreen extends StatelessWidget {
  final introKey = GlobalKey<IntroductionScreenState>();
  static String id = 'Splash Page';

  OnBoardingScreen({super.key});
  @override
  Widget build(BuildContext context) {
    const pageDecoration = PageDecoration(
      titleTextStyle: TextStyle(
        fontSize: 28,
        fontWeight: FontWeight.w700,
      ),
      bodyTextStyle: TextStyle(fontSize: 19),
      bodyPadding: EdgeInsets.fromLTRB(16, 0, 16, 16),
      pageColor: Colors.black12,
      imagePadding: EdgeInsets.zero,
    );
    return IntroductionScreen(
      key: introKey,
      globalBackgroundColor: HexColor('333739'),
      pages: [
        PageViewModel(
          title: 'Shop now',
          body: 'Welcome to Tokoto, Let’s shop!',
          image: Image.asset('assets/images/splash_1.png',
              width: 200, height: 200),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: 'Big discount',
          body:
              'We help people conect with store \naround United State of America',
          image: Image.asset('assets/images/splash_2.png',
              width: 200, height: 200),
          decoration: pageDecoration,
        ),
        PageViewModel(
            title: 'Free Delivery',
            body: 'We show the easy way to shop. \nJust stay at home with us',
            image: Image.asset(
              'assets/images/splash_3.png',
              width: 200,
            ),
            decoration: pageDecoration.copyWith(
              bodyFlex: 2,
              imageFlex: 3,
              safeArea: 50,
            ),
            footer: Padding(
              padding: const EdgeInsets.only(left: 15, right: 15, top: 50),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const HomePage(),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  maximumSize: const Size.fromHeight(55),
                  backgroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                child: const Text(
                  'continue',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.black,
                  ),
                ),
              ),
            ))
      ],
      showSkipButton: false,
      showDoneButton: false,
      showBackButton: true,
      back: const Text(
        'Back',
        style: TextStyle(fontWeight: FontWeight.w600, color: Colors.white),
      ),
      next: const Text(
        'Next',
        style: TextStyle(fontWeight: FontWeight.w600, color: Colors.white),
      ),
      dotsDecorator: DotsDecorator(
          size: const Size.square(10),
          activeSize: const Size(20, 10),
          activeColor: Colors.white,
          color: Colors.black26,
          spacing: const EdgeInsets.symmetric(horizontal: 3),
          activeShape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25),
          )),
    );
  }
}
