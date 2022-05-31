import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../constants/constant.dart';

class LastScreen extends StatefulWidget {
  const LastScreen({Key? key}) : super(key: key);

  @override
  State<LastScreen> createState() => LastScreenState();
}

class LastScreenState extends State<LastScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            const SizedBox(height: 80),
            SvgPicture.asset(
              keeperSvg,
              height: MediaQuery.of(context).size.height / 2.5,
            ),
            const SizedBox(height: 46),
            Text(
              'Connect With Labourers',
              style: textStyleOne,
            ),
            const SizedBox(height: 10),
            Text(
              'Get a rich source of insect protein for feeds.',
              style: textStyleTwo,
            ),
          ],
        ),
      ),
    );
  }
}
