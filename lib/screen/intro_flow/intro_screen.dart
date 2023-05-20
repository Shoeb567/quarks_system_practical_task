import 'package:flutter/material.dart';
import 'package:quarks_system_practical_task/screen/profile_flow/profile_screen.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../remote_config/remote_config.dart';
import '../../utils/app_colors.dart';
import '../../utils/common_widgets.dart';
import '../payment_flow/payment_screen.dart';
import 'intro_page1.dart';
import 'intro_page2.dart';
import 'intro_page3.dart';

class IntroScreen extends StatefulWidget {
  const IntroScreen({Key? key}) : super(key: key);

  @override
  State<IntroScreen> createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  final List<Widget> introList = <Widget>[
    const IntroPage1(),
    const IntroPage2(),
    const IntroPage3()
  ];
  int currentIndex = 0;
  PageController _controller = PageController();
  bool isCreateAccBtnExpanded = false;

  @override
  void initState() {
    _controller = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            PageView.builder(
              controller: _controller,
              itemCount: introList.length,
              onPageChanged: (int index) {
                currentIndex = index;
                isCreateAccBtnExpanded = false;
                if (mounted) setState(() {});
                if (index == 2) {
                  Future.delayed(Duration(milliseconds: 300), () {
                    isCreateAccBtnExpanded = true;
                    if (mounted) setState(() {});
                  });
                }
              },
              itemBuilder: (_, i) {
                return Container(child: introList[i]);
              },
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height - 400),
              child: Center(
                child: SmoothPageIndicator(
                    controller: _controller, // PageController
                    count: 3,
                    effect: const ExpandingDotsEffect(
                      activeDotColor: AppColors.blueColor,
                      dotColor: AppColors.greyColor,
                      strokeWidth: 2,
                      dotWidth: 12,
                      dotHeight: 5,
                      spacing: 4,
                      expansionFactor: 2,
                    ), // your preferred effect
                    onDotClicked: (index) {}),
              ),
            ),
            Positioned(
              bottom: 40,
              child: Container(
                width: MediaQuery.of(context).size.width,
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: Container(
                  child: currentIndex == introList.length - 1
                      ? commonButton(
                          title: "Get Started",
                          backgroundColor: AppColors.blueColor,
                          onTap: () {
                            getRemoteConfigDataAndRedirect();
                          },
                        )
                      : skipAndNextButton(),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  void getRemoteConfigDataAndRedirect() {
    final remoteConfigData = RemoteConfig.getValueFromRemoteConfig();
    if (remoteConfigData) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => const PaymentScreen(),
        ),
      );
    } else {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => const ProfileScreen(),
        ),
      );
    }
  }
  Widget skipAndNextButton(){
    return Row(
      children: [
        Expanded(
          flex: 1,
          child: commonButton(
            title: "Skip",
            borderColor: AppColors.buttonBorderColor,
            backgroundColor: AppColors.white,
            textColor: AppColors.darkGreyColor,
            onTap: () {
              _controller.jumpToPage(2);
            },
          ),
        ),
        const SizedBox(width: 16),
        Expanded(
          flex: 1,
          child: commonButton(
            title: "Next",
            backgroundColor: AppColors.blueColor,
            onTap: () {
              _controller.nextPage(
                  duration:
                  const Duration(milliseconds: 100),
                  curve: Curves.bounceIn);
            },
          ),
        ),
      ],
    );
  }
}
