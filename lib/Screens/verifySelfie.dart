import 'package:flutter/material.dart';
import 'package:wisewallet/Screens/captureSelfie.dart';
import 'package:wisewallet/Screens/home.dart';
import '../classes/media_style.dart';
import '../classes/style.dart';

class VerifySelfie1 extends StatefulWidget {
  const VerifySelfie1({super.key});

  @override
  State<VerifySelfie1> createState() => _VerifySelfie1State();
}

class _VerifySelfie1State extends State<VerifySelfie1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: style.black,
      // appbar section //
      appBar: AppBar(
        elevation: 0,
        toolbarHeight: 50,
        foregroundColor: style.black,
        backgroundColor: style.black,
        actions: <Widget>[
          Expanded(
              child: Padding(
            padding: const EdgeInsets.only(left: 16, right: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                      color: style.white,
                      size: 28,
                    )),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: 60,
                      height: 4,
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                            color: style.gray.withOpacity(0.5),
                            borderRadius: BorderRadius.circular(8)),
                      ),
                    ),
                    const SizedBox(
                      width: 2,
                    ),
                    SizedBox(
                      width: 60,
                      height: 4,
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                            color: style.gray.withOpacity(0.5),
                            borderRadius: BorderRadius.circular(8)),
                      ),
                    ),
                    const SizedBox(
                      width: 2,
                    ),
                    SizedBox(
                      width: 60,
                      height: 4,
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                            color: style.gray.withOpacity(0.5),
                            borderRadius: BorderRadius.circular(8)),
                      ),
                    ),
                    const SizedBox(
                      width: 2,
                    ),
                    SizedBox(
                      width: 60,
                      height: 4,
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                            color: style.gray.withOpacity(0.5),
                            borderRadius: BorderRadius.circular(8)),
                      ),
                    ),
                  ],
                ),
                IconButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const home()));
                    },
                    icon: const Icon(
                      Icons.close,
                      color: style.white,
                      size: 28,
                    )),
              ],
            ),
          ))
        ],
      ),

      // body section //

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
                  // notice card //

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
                                        color: style.white,
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

                  // camera space

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
                              border: Border.all(
                                color: style.primary1,
                                width: 1,
                              ),
                              borderRadius: BorderRadius.circular(250),
                            )),
                          ),
                          const SizedBox(
                            height: 150,
                          ),
                          SizedBox(
                            height: 65,
                            width: 65,
                            child: InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const CaptureSelfie()));
                              },
                              child: DecoratedBox(
                                decoration: BoxDecoration(
                                  color: style.white,
                                  border: Border.all(
                                    color: style.black,
                                    width: 6,
                                  ),
                                  borderRadius: BorderRadius.circular(40),
                                ),
                                child: DecoratedBox(
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                            color: style.white,
                                            width: 6,
                                            strokeAlign:
                                                BorderSide.strokeAlignOutside),
                                        borderRadius:
                                            BorderRadiusDirectional.circular(
                                                100))),
                              ),
                            ),
                          ),
                        ]),
                  )
                ],
              ),
            ),
          ))
        ],
      ),
    );
  }
}
