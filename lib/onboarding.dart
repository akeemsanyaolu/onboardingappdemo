import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:onboardingappdemo/signup.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Onboarding extends StatefulWidget {
  const Onboarding({super.key});

  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  final controller = PageController();
  bool isLastPage = false;

  @override
  void dispose() {
    controller.dispose;

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        color: const Color(0xFF5D5FEF),
        child: Column(
          children: [
            const Spacer(),
            SmoothPageIndicator(
              controller: controller,
              count: 4,
              effect: WormEffect(
                  dotWidth: 70,
                  dotHeight: 5,
                  dotColor: Colors.white.withOpacity(0.20),
                  activeDotColor: Colors.white,
                  spacing: 20),
            ),
            const Spacer(),
            SizedBox(
              height: 500,
              child: PageView(
                onPageChanged: (index) {
                  setState(() {
                    isLastPage = index == 3;
                  });
                },
                controller: controller,
                children: const [
                  Item2(
                      'assets/cuate1.svg',
                      'Introducing a new era\nof travel experiences',
                      'Immerse yourself in unique cultures, discover inspiring landscapes, and create memories'),
                  Item2(
                      'assets/cuate.svg',
                      'Experience unforgettable \nadventures onboard',
                      'There are many variations of passages\nof Lorem Ipsum available'),
                  Item2(
                      'assets/cuate3.svg',
                      'It\'s a big world out\nthere, go explore!',
                      'Embrace the adventure awaits and uncover\nthe beauty of every corner'),
                  Item2(
                      'assets/cuate4.svg',
                      'Create lasting memories\nwith our immersive app',
                      'Unleash your wanderlust and craft unforgettable experiences around the globe'),
                ],
              ),
            ),
            const Spacer(),
            SizedBox(
              width: 350,
              height: 68,
              child: ElevatedButton(
                  onPressed: () {
                    isLastPage
                        ? Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const SignUp()))
                        : controller.nextPage(
                            duration: const Duration(milliseconds: 500),
                            curve: Curves.fastOutSlowIn);
                  },
                  style: ElevatedButton.styleFrom(
                      elevation: 5,
                      backgroundColor: const Color(0xFFFFC727),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18))),
                  child: Text(
                    isLastPage ? 'Get Started' : 'Next',
                    style: const TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.w500),
                  )),
            ),
            const Spacer()
          ],
        ),
      ),
    );
  }
}

class Item2 extends StatelessWidget {
  final String imgURL;
  final String text1;
  final String text2;

  const Item2(this.imgURL, this.text1, this.text2, {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Spacer(),
        SvgPicture.asset(
          imgURL,
          height: 300,
        ),
        const Spacer(
          flex: 5,
        ),
        Text(
          text1,
          textAlign: TextAlign.center,
          style: const TextStyle(
              letterSpacing: 1,
              wordSpacing: 4,
              fontSize: 32,
              fontWeight: FontWeight.w600,
              color: Colors.white),
        ),
        const Spacer(
          flex: 2,
        ),
        Text(
          text2,
          textAlign: TextAlign.center,
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w400,
            color: Colors.white,
            letterSpacing: 0.5,
            wordSpacing: 4,
          ),
        )
      ],
    );
  }
}
