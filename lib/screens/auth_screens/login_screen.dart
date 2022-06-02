import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/material.dart';
import 'package:zero_waste/constants/constant.dart';
import 'package:zero_waste/screens/auth_screens/signup_screen.dart';
import '../../widgets/text_field_widget.dart';
import '../forget_password_screens/forget_password.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  Color inputContainrBrdrColor = inputBorderColor;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 76),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(appImage, width: 75, height: 75),
              const SizedBox(height: 15),
              Text(
                "Login to your Account",
                style: textStyleTwo,
              ),
              const SizedBox(height: 38),
              const TextFields(
                  label: 'Username', showText: false, phoneField: false),
              const SizedBox(height: 16),
              const TextFields(
                  label: 'Password', showText: true, phoneField: false),
              const SizedBox(height: 16),
              Container(
                constraints:
                    const BoxConstraints.expand(height: 15, width: 400),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const ForgetPassword(),
                      ),
                    );
                  },
                  child: Text(
                    "Forget password",
                    style: userTextStyleOne,
                  ),
                ),
              ),
              const SizedBox(height: 24),
              Container(
                height: 52,
                constraints: const BoxConstraints(maxWidth: 400),
                child: ElevatedButton(
                  onPressed: () {},
                  style: elevatedButtonStyleTwo,
                  child: const Text("Sign in"),
                ),
              ),
              const SizedBox(height: 16),
              Wrap(
                children: [
                  Text("Don't have an Account? ", style: textStyleTwo),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const SignUpScreen(),
                        ),
                      );
                    },
                    child: Text("Sign up", style: textStyleThree),
                  )
                ],
              ),
              const SizedBox(height: 13),
              Container(
                constraints: const BoxConstraints(maxWidth: 400),
                child: Row(
                  children: [
                    Expanded(child: Divider(thickness: 1, color: lineColor)),
                    const SizedBox(width: 15),
                    Text("OR", style: textStyleFive),
                    const SizedBox(width: 15),
                    Expanded(child: Divider(thickness: 1, color: lineColor)),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Text("Login using Social Networks", style: textStyleTwo),
              const SizedBox(height: 16),
              Wrap(
                alignment: WrapAlignment.center,
                children: [
                  circleContainer(
                    child: SvgPicture.asset(fbSvg),
                  ),
                  const SizedBox(width: 12),
                  circleContainer(
                    child: SvgPicture.asset(googleSvg),
                  ),
                  const SizedBox(width: 12),
                  circleContainer(
                    child: SvgPicture.asset(linklnSvg),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
