import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../constants/constant.dart';

class SecondScreen extends StatefulWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  State<SecondScreen> createState() => SecondScreenState();
}

class SecondScreenState extends State<SecondScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            const SizedBox(height: 80),
            SvgPicture.asset(
              poultrySvg,
              height: MediaQuery.of(context).size.height / 2.5,
            ),
            const SizedBox(height: 46),
            Text(
              'Connect With Labourers',
              style: textStyleOne,
            ),
            const SizedBox(height: 10),
            Text(
              'Opportunity to get co-workers and connect with ',
              style: textStyleTwo,
            ),
            Text(
              'labourers to sort out bad crops and waste on farms.',
              style: textStyleTwo,
            ),
          ],
        ),
      ),
    );
  }
}
