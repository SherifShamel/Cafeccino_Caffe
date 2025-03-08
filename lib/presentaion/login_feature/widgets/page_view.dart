import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../core/constants.dart';
import '../../../core/widgets/custom_text_form_field.dart';

class CustomPageView extends StatefulWidget {
  final PageController pageController;

  const CustomPageView({super.key, required this.pageController});

  @override
  State<CustomPageView> createState() => _CustomPageViewState();
}

class _CustomPageViewState extends State<CustomPageView> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            InkWell(
              onTap: () {
                setState(() {});
                _goToPage(0);
              },
              child: Text(
                "E-mail",
                style: TextStyle(
                  letterSpacing: 2,
                  decoration: _selectedIndex == 0
                      ? TextDecoration.underline
                      : TextDecoration.none,
                  fontSize: 18,
                ),
              ),
            ),
            SizedBox(width: 10),
            InkWell(
              onTap: () {
                setState(() {});
                _goToPage(1);
              },
              child: Text(
                "Mobile Number",
                style: TextStyle(
                  decoration: _selectedIndex == 1
                      ? TextDecoration.underline
                      : TextDecoration.none,
                  fontSize: 18,
                ),
              ),
            ),
          ],
        ),

        SizedBox(
          height: 150,
          child: PageView(
            controller: widget.pageController,
            physics: NeverScrollableScrollPhysics(),
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  MyCustomTextFormField(
                    prefixIcon: Icon(Icons.email),
                    hintText: 'Email',
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  MyCustomTextFormField(
                    prefixIcon: Icon(Icons.password),
                    hintText: 'Password',
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  MyCustomTextFormField(
                    hintText: 'Phone',
                    prefixIcon: Icon(Icons.phone),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  MyCustomTextFormField(
                    hintText: 'Password',
                    prefixIcon: Icon(Icons.password),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }

  void _goToPage(int pageIndex) {
    _selectedIndex = pageIndex;
    widget.pageController.animateToPage(
      pageIndex,
      duration: Duration(milliseconds: 400),
      curve: Curves.easeInOut,
    );
  }
}
