import 'package:flutter/material.dart';
import 'package:wisewallet/Screens/home.dart';
import 'package:wisewallet/Screens/verifySelfie.dart';
import '../classes/style.dart';
import '../classes/media_style.dart';

class Selfie extends StatefulWidget {
  const Selfie({super.key});

  @override
  State<Selfie> createState() => _SelfieState();
}

class _SelfieState extends State<Selfie> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appbar section //

      appBar: AppBar(
        elevation: 0,
        toolbarHeight: 50,
        backgroundColor: style.white,
        actions: <Widget>[
          Expanded(
              child: Padding(
            padding: const EdgeInsets.only(left: 16, right: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                IconButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const home()));
                    },
                    icon: const Icon(
                      Icons.arrow_back,
                      color: style.black,
                      size: 28,
                    )),
              ],
            ),
          ))
        ],
      ),

      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Expanded(
              child: Padding(
            padding: const EdgeInsets.only(left: 24, right: 24, top: 16),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizeConfig().p30medB('Selfie', 30),
                  const SizedBox(
                    height: 8,
                  ),
                  SizeConfig().p16regB(
                      'The document will be compared with your valid ID', 30),
                  const SizedBox(
                    height: 24,
                  ),

                  // notice card //

                  SizedBox(
                    height: 50,
                    width: 375,
                    child: DecoratedBox(
                        decoration: BoxDecoration(
                          color: style.white,
                          border: Border.all(
                            color: style.info,
                            width: 1,
                          ),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(
                            left: 8,
                            top: 8,
                            bottom: 8,
                          ),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Image.asset(
                                  'assets/info.png',
                                  height: 24,
                                ),
                                const SizedBox(
                                  width: 8,
                                ),
                                const Flexible(
                                  child: Text(
                                    'Please face forward and make sure your whole face is in the circle and clearly visible.',
                                    style: TextStyle(
                                        color: style.text2,
                                        fontFamily: 'space Grotesk',
                                        fontSize: 12,
                                        letterSpacing: 0.15,
                                        height: 1.4),
                                  ),
                                )
                              ]),
                        )),
                  ),
                  const SizedBox(
                    height: 60,
                  ),

                  // selfie space //

                  Align(
                    alignment: Alignment.center,
                    child: Image.asset(
                      'assets/selfie_space.png',
                      height: 230,
                    ),
                  ),

                  const SizedBox(
                    height: 150,
                  ),

                  // btn//

                  SizedBox(
                    width: 325,
                    height: 50,
                    child: TextButton(
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(style.primary1),
                        shape: MaterialStateProperty.all(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                              side: BorderSide(
                                  color: style.divider.withOpacity(0.2))),
                        ),
                      ),
                      onPressed: () async {
                        Navigator.of(context).pushReplacement(
                          MaterialPageRoute(
                              builder: (context) => const VerifySelfie1()),
                        );
                      },
                      child: SizeConfig().p16medW('Take a selfie', 14),
                    ),
                  ),
                ],
              ),
            ),
          ))
        ],
      ),
    );
  }
}
