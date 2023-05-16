import 'package:flutter/material.dart';
import 'package:wisewallet/Screens/VerifyID.dart';
import 'package:wisewallet/Screens/captureID.dart';
import 'package:wisewallet/Screens/verifyID2.dart';
import 'package:wisewallet/Screens/verifyID3.dart';
import 'package:wisewallet/Screens/verifySelfie.dart';
import '../classes/style.dart';
import '../classes/media_style.dart';

class CaptureSelfie extends StatefulWidget {
  const CaptureSelfie({super.key});

  @override
  State<CaptureSelfie> createState() => _CaptureSelfieState();
}

class _CaptureSelfieState extends State<CaptureSelfie> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appbar section //

      appBar: AppBar(
        elevation: 0,
        backgroundColor: style.white,
        toolbarHeight: 50,
        actions: <Widget>[
          Expanded(
              child: Padding(
            padding: const EdgeInsets.only(left: 24, right: 24),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                IconButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const VerifySelfie1()));
                    },
                    icon: const Icon(
                      Icons.arrow_back,
                      color: style.black,
                      size: 28,
                    )),
                const SizedBox(width: 100),
                SizeConfig().p18medB('Selfie', 18),
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
                  padding: const EdgeInsets.only(left: 24, right: 24, top: 24),
                  child: SingleChildScrollView(
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                        // info section //
                        SizedBox(
                          height: 50,
                          width: 375,
                          child: DecoratedBox(
                              decoration: BoxDecoration(
                                // color: style.white,
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
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
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
                          height: 80,
                        ),

                        // camera section frame //

                        Align(
                          alignment: Alignment.center,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              SizedBox(
                                width: 220,
                                height: 230,
                                child: DecoratedBox(
                                  decoration: BoxDecoration(
                                    // border: Border.all(
                                    //   // color: style.primary1,
                                    //   width: 1,
                                    // ),
                                    borderRadius: BorderRadius.circular(250),
                                  ),
                                  child: Image.asset('assets/selfie_photo.png'),
                                ),
                              ),

                              const SizedBox(
                                height: 80,
                              ),

                              // btn section //
                              SizedBox(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    // replace shot //
                                    TextButton(
                                      onPressed: () {
                                        Navigator.of(context).pushReplacement(
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  const CaptureID()),
                                        );
                                      },
                                      child: SizeConfig()
                                          .p14medC('Replace Shot', 14),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(
                                height: 24,
                              ),

                              const SizedBox(
                                height: 70,
                              ),

                              // btn//

                              SizedBox(
                                width: 325,
                                height: 50,
                                child: TextButton(
                                  style: ButtonStyle(
                                    backgroundColor: MaterialStateProperty.all(
                                        style.primary1),
                                    shape: MaterialStateProperty.all(
                                      RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          side: BorderSide(
                                              color: style.divider
                                                  .withOpacity(0.2))),
                                    ),
                                  ),
                                  onPressed: () async {
                                    Navigator.of(context).pushReplacement(
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const VerifyID3()),
                                    );
                                  },
                                  child:
                                      SizeConfig().p16medW('Submit Data', 14),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ]))))
        ],
      ),
    );
  }
}
