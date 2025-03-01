import 'package:caffecino/core/text_style.dart';
import 'package:caffecino/feature/login/presentaion/screen/login_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../../../core/color_app.dart';
import '../../../../../core/sizeUtilis.dart';
import '../../../data/model/on_boarding_model.dart';
import '../wedgitss/button.dart';


class OnbordingView extends StatefulWidget {
  OnbordingView({super.key});

  @override
  State<OnbordingView> createState() => _OnbordingViewState();
}

class _OnbordingViewState extends State<OnbordingView> {
  PageController pageController = PageController();
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Stack(
              children: [

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Column(
                    children: [
                      Expanded(
                        child: PageView.builder(
                            controller: pageController,
                            itemBuilder: (c, index) {
                              selectedIndex = index;
                              return Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset(onbordings[index].image),
                                  SizedBox(
                                    height: height * .1,
                                  ),
                                  Text(onbordings[index].txt,
                                      textAlign: TextAlign.center,

                                      style: primary25w700),
                                  SizedBox(
                                    height: height * .03,
                                  ),  Text(onbordings[index].desc,
                                      textAlign: TextAlign.center,

                                      style: black17w400),
                                  SizedBox(
                                    height: height * .03,
                                  ),
                                ],
                              );
                            }),
                      ),
                      // SmoothPageIndicator(
                      //   controller: pageController,
                      //   count: onbordings.length,
                      //   effect: const ExpandingDotsEffect(
                      //       strokeWidth: 4,
                      //       activeDotColor: ColorApp.primary,
                      //       dotHeight: 20,
                      //       dotWidth: 20,
                      //       radius: 25,
                      //       dotColor:ColorApp.second,
                      //       expansionFactor: 3),
                      // ),
                      SizedBox(
                        height: height * .03,
                      ),
                      Row(
                        children: [


                          CustomButton(text: "Skip", color: ColorApp.second, l: 50, w: 100,onpressed: () {
    Navigator.pushReplacement(context,
    MaterialPageRoute(builder: (c) {
    return const LoginScreen();
    }));
    },),
                          SizedBox(
     width: 20,
    ),
                          CustomButton(



                            onpressed: () {
                              if (selectedIndex == onbordings.length - 1) {
                                Navigator.pushReplacement(context,
                                    MaterialPageRoute(builder: (c) {
                                      return const LoginScreen();
                                    }));
                              } else {
                                pageController.animateToPage(selectedIndex + 1,
                                    duration: const Duration(seconds: 1),
                                    curve: Curves.easeIn);
                              }
                            },

                            color:ColorApp.primary,
                            text:
                            "next", l: 50, w: 250,
                          ),
                        ],
                      ),
                          ])
                      ),

                      SizedBox(
                        height: height * .3,
                      ),
                    ],
                  ),
                ),

            );
  }
}


