import 'package:flutter/material.dart';
import 'package:flutter_application_1/main.dart';
import 'package:introduction_screen/introduction_screen.dart';

class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return IntroductionScreen(
      pages: [
        PageViewModel(
          title: 'Welcome to my App',
          body: 'This is my page',
          image: Image.asset('image/child.png'),
          decoration: getPageDecoration(),
        ),
        PageViewModel(
          title: 'Welcome to my App',
          body: 'This is my page',
          image: Image.asset('image/home.png'),
          decoration: getPageDecoration(),
        ),
        PageViewModel(
          title: 'Welcome to my App',
          body: 'This is my page',
          image: Image.asset('image/coffee.png'),
          decoration: getPageDecoration(),
        ),
        PageViewModel(
          title: 'Welcome to my App',
          body: 'This is my page',
          image: Image.asset('image/milk.png'),
          decoration: getPageDecoration(),
        ),
      ],
      done: const Text('done'),
      onDone: () {
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(
            builder: (context) => const Mypage(),
          ),
        );
      },
      next: const Icon(Icons.arrow_forward),
      showSkipButton: true,
      skip: const Text('Skip'),
      dotsDecorator: DotsDecorator(
        color: Colors.cyan,
        size: const Size(10, 10),
        activeSize: const Size(22, 10),
        activeColor: Colors.blue[800],
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24.0),
        ),
      ),
      curve: Curves.bounceOut,
    );
  }
}

PageDecoration getPageDecoration() {
  return PageDecoration(
      titleTextStyle: const TextStyle(
        fontSize: 28,
        fontWeight: FontWeight.bold,
      ),
      bodyTextStyle: const TextStyle(
        fontSize: 18,
        color: Colors.blue,
      ),
      imagePadding: const EdgeInsets.only(
        top: 40,
      ),
      pageColor: Colors.grey[500]);
}
