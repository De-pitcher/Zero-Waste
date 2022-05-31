import 'package:flutter/material.dart';
import 'package:zero_waste/screens/login_screen.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../constants/constant.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  State<FirstScreen> createState() => FirstScreenState();
}

class FirstScreenState extends State<FirstScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pushReplacement(
                      MaterialPageRoute(
                        builder: (context) => const LoginScreen(),
                      ),
                    );
                  },
                  child: Text(
                    'Skip',
                    style: textStyleTwo,
                  ),
                ),
              ],
            ),
            Column(
              children: [
                SvgPicture.asset(
                  farmerSvg,
                  height: MediaQuery.of(context).size.height / 2,
                ),
                Text(
                  'Exchange Waste Product',
                  style: textStyleOne,
                ),
                const SizedBox(height: 10),
                Text(
                  'Exchange your farm waste for organic manure ',
                  style: textStyleTwo,
                ),
                Text(
                  'by supplying a black soldier fly farmer.',
                  style: textStyleTwo,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
