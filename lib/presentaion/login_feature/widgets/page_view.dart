import 'package:flutter/material.dart';

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
                  CustomTextField(
                    prefixIcon: Icon(Icons.email),
                    hint: 'Email',
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  CustomTextField(
                    prefixIcon: ImageIcon(
                      AssetImage("assets/icons/password_icon.png"),
                    ),
                    hint: 'Password',
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomTextField(
                    hint: 'Phone',
                    prefixIcon: Icon(Icons.phone),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  CustomTextField(
                    prefixIcon: ImageIcon(
                      AssetImage("assets/icons/password_icon.png"),
                    ),
                    hint: 'Password',
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
