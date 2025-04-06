import 'package:caffecino/core/constants.dart';
import 'package:caffecino/presentaion/login_feature/widgets/page_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    var controller = PageController();

    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: SingleChildScrollView(
            child: SizedBox(
              width: double.infinity,
              child: Column(
                spacing: 22.h,
                children: [
                  Image.asset('assets/logo_coffee.png'),
                  Text(
                    "Welcome Back",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 24, color: Color(kPrimaryColor)),
                  ),
                  CustomPageView(
                    pageController: controller,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: InkWell(
                      onTap: () {
                        isChecked = !isChecked;
                        setState(() {});
                      },
                      child: Row(
                        spacing: 4,
                        children: [
                          Icon(
                            isChecked
                                ? Icons.check_circle_outline_outlined
                                : Icons.circle_outlined,
                            color: Color(kPrimaryColor),
                          ),
                          Text(
                            'Remember Me',
                            textAlign: TextAlign.start,
                            style: TextStyle(color: Color(kPrimaryColor)),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: Text(
                      'Forgot Password?',
                      textAlign: TextAlign.end,
                    ),
                  ),
                  SizedBox(
                    width: screenWidth * 0.75.w,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ButtonStyle(
                        elevation: WidgetStatePropertyAll(5),
                        padding: WidgetStatePropertyAll(EdgeInsets.all(10)),
                        backgroundColor:
                            WidgetStatePropertyAll(Color(0xff2F2105)),
                        shape: WidgetStatePropertyAll(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                      child: Text(
                        "Continue",
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                    ),
                  ),
                  SizedBox(height: screenHeight * 0.0001.h),
                  Text("Log in with"),
                  SizedBox(height: screenHeight * 0.0001.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ImageIcon(
                        AssetImage("assets/icons/facebook.png"),
                        size: 28,
                        color: Color(0xff1877F2),
                      ),
                      ImageIcon(
                        AssetImage("assets/icons/google.png"),
                        size: 28,
                      ),
                      ImageIcon(
                        AssetImage("assets/icons/iphone.png"),
                        size: 28,
                      ),
                    ],
                  ),
                  RichText(
                    text: TextSpan(
                        text: 'Don\'t have an account?',
                        style: TextStyle(color: Colors.black54),
                        children: [
                          TextSpan(
                            text: ' Sign Up',
                            style: TextStyle(color: Color(0xff3FB6FF)),
                          ),
                        ]),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
