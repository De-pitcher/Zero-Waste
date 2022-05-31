import 'package:flutter/material.dart';
import 'package:page_view_indicators/circle_page_indicator.dart';
import 'package:zero_waste/screens/onboarding_screens/first_screen.dart';
import 'package:zero_waste/screens/onboarding_screens/second_screen.dart';
import 'package:zero_waste/screens/onboarding_screens/third_screen.dart';

import '../../constants/constant.dart';
import '../login_screen.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  final List<Widget> _pageList = [
    const FirstScreen(),
    const SecondScreen(),
    const LastScreen(),
  ];
  final _currentPageNotifier = ValueNotifier<int>(0);
  bool _navToNextScreen = false;

  ElevatedButton lastPageButton() {
    return ElevatedButton(
      onPressed: () {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => const LoginScreen(),
          ),
        );
      },
      style: elevatedButtonStyleOne,
      child: Text(
        'Get Started',
        style: textStyleTwo,
      ),
    );
  }

  Container nextPage() {
    return Container(
      decoration: BoxDecoration(
        color: colorGreen,
        borderRadius: BorderRadius.circular(40),
      ),
      child: IconButton(
        onPressed: () {},
        icon: const Icon(
          Icons.navigate_next,
          color: inputWhite,
        ),
        iconSize: 35,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Stack(
            children: [
              PageView.builder(
                itemBuilder: (context, int index) {
                  return _pageList[index];
                },
                itemCount: _pageList.length,
                onPageChanged: (index) {
                  _currentPageNotifier.value = index;
                  setState(() {
                    if (_currentPageNotifier.value == 2) {
                      _navToNextScreen = true;
                    }
                  });
                },
              ),
              Positioned(
                top: 635,
                left: 20,
                child: CirclePageIndicator(
                  currentPageNotifier: _currentPageNotifier,
                  itemCount: _pageList.length,
                  dotColor: Colors.grey,
                  selectedDotColor: colorGreen,
                  selectedSize: 16,
                  size: 16,
                ),
              ),
              Positioned(
                top: 620,
                right: 20,
                child: _navToNextScreen ? lastPageButton() : nextPage(),
              )
            ],
          ),
        ),
      ),
    );
  }
}
