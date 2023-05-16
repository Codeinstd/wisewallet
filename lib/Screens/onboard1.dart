import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:wisewallet/Screens/signIn.dart';
import 'package:wisewallet/Screens/signUp.dart';
import '../classes/media_style.dart';
import 'package:wisewallet/Screens/splash.dart';
import '../classes/style.dart';

class Onboard1 extends StatefulWidget {
  const Onboard1({super.key});

  @override
  State<Onboard1> createState() => _Onboard1State();
}

class _Onboard1State extends State<Onboard1> {
  // declaring controller //
  final controller = PageController();
  bool isLastPage = false;

  @override
  void dispose() {
    controller.dispose();

    super.dispose();
  }

  Widget buildPage({
    required String urlImage,
    required String title,
    required String subtitle,
  }) =>
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            title,
            style: const TextStyle(
              color: style.black,
              fontSize: 34,
              fontWeight: FontWeight.w800,
              fontFamily: 'space Grotesk',
              letterSpacing: -0.8,
            ),
          ),
          const SizedBox(height: 10),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 4),
            child: Text(
              subtitle,
              style: const TextStyle(
                color: style.text2,
                fontSize: 16,
                fontWeight: FontWeight.w400,
                fontFamily: 'space Grotesk',
                height: 1.3,
                letterSpacing: 0.65,
              ),
            ),
          ),
          const SizedBox(height: 45),
          Image.asset(
            urlImage,
            fit: BoxFit.cover,
            width: double.infinity,
          ),
        ],
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Container(
              padding: const EdgeInsets.only(
                  left: 24, right: 24, top: 24, bottom: 250),
              child: PageView(
                pageSnapping: true,
                controller: controller,
                onPageChanged: (index) {
                  setState(() => isLastPage = index == 2);
                },
                children: [
                  buildPage(
                      urlImage: 'assets/onboard1.png',
                      title: 'Ease savings with Wisewallet',
                      subtitle:
                          'With one click, save your cash or assets and get returnable yield interest'),

                  // page 2//
                  buildPage(
                      urlImage: 'assets/onboard2.png',
                      title: 'Send cash to local & foreign friends',
                      subtitle:
                          'Swift Instant cash transfers to friends & families on and off the platform '),

                  // page 2//
                  buildPage(
                      urlImage: 'assets/onboard3.png',
                      title: 'Get insight of financial records',
                      subtitle:
                          'Keep track of your financial performance both inflow and outflow transactions'),
                ],
              ),
            ),
          ),
        ],
      ),

      // bottom-sheet //
      bottomSheet: SizedBox(
        child: Container(
            padding: const EdgeInsets.only(
              left: 24,
              right: 24,
              bottom: 50,
            ),
            height: 200,
            child: Column(
              children: [
                Center(
                  child: SmoothPageIndicator(
                    controller: controller,
                    count: 3,
                    effect: ExpandingDotsEffect(
                      spacing: 10,
                      dotColor: style.primary1.withOpacity(0.1),
                      activeDotColor: style.primary1,
                      dotHeight: 8,
                      dotWidth: 8,
                    ),
                    onDotClicked: (index) => controller.animateToPage(index,
                        duration: const Duration(milliseconds: 500),
                        curve: Curves.easeIn),
                  ),
                ),
                const Spacer(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // btn 1//
                    SizedBox(
                      width: 150,
                      height: 48,
                      child: TextButton(
                          style: ButtonStyle(
                            shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                                side: const BorderSide(color: style.primary1),
                              ),
                            ),
                          ),
                          onPressed: () {
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const SignIn()),
                            );
                          },
                          child: SizeConfig().p16medC('Sign In', 16)),
                    ),

                    // btn 2//
                    SizedBox(
                      width: 150,
                      height: 48,
                      child: TextButton(
                          style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(style.primary1),
                            shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)),
                            ),
                          ),
                          onPressed: () {
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const SignUp()),
                            );
                          },
                          child: SizeConfig().p16medW('Sign Up', 16)),
                    ),
                  ],
                ),
                // const Spacer(),
              ],
            )),
      ),
    );
  }
}
