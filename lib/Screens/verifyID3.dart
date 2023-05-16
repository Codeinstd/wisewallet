import 'package:flutter/material.dart';
import 'package:wisewallet/Screens/home.dart';
import 'package:wisewallet/Screens/home2.dart';
import '../classes/style.dart';
import '../classes/media_style.dart';

class VerifyID3 extends StatefulWidget {
  const VerifyID3({super.key});

  @override
  State<VerifyID3> createState() => _VerifyID3State();
}

class _VerifyID3State extends State<VerifyID3> {
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
            padding: EdgeInsets.only(left: 16, right: 16),
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
                const SizedBox(width: 60),
                SizeConfig().p18medB('Verify Identity', 18),
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
            padding: EdgeInsets.only(left: 24, right: 24, top: 16),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // timer //
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                          height: 40,
                          width: 40,
                          child: DecoratedBox(
                            decoration: BoxDecoration(
                              // color: style.primary1,
                              border: Border.all(
                                color: style.primary1,
                                width: 1,
                              ),
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(
                                left: 8,
                                top: 12,
                              ),
                              child: SizeConfig().p14medC('1/2', 14),
                            ),
                          )),
                      const SizedBox(
                        width: 10,
                      ),
                      const Flexible(
                        child: Text(
                          'Confirm the requirement below to gain full access to Wisewallet features.',
                          style: TextStyle(
                              color: style.text2,
                              fontFamily: 'space Grotesk',
                              fontSize: 14,
                              letterSpacing: 0.15,
                              height: 1.4),
                        ),
                      )
                    ],
                  ),

                  const SizedBox(
                    height: 30,
                  ),

                  // cardbox info //

                  // card 001 //

                  SizedBox(
                    width: 375,
                    height: 98,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        color: style.white,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 28, vertical: 16),
                        child: InkWell(
                          onTap: () {
                            // Navigator.push(
                            //     context,
                            //     MaterialPageRoute(
                            //         builder: (context) => const ValidIDCard()));
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Image.asset(
                                'assets/Issued ID.png',
                                height: 32,
                              ),

                              // column info //
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        SizeConfig()
                                            .p14medB('Valid Issued ID', 14),
                                        const SizedBox(
                                          width: 60,
                                        ),
                                        SizedBox(
                                          height: 24,
                                          width: 60,
                                          child: DecoratedBox(
                                              decoration: BoxDecoration(
                                                color: style.info
                                                    .withOpacity(0.12),
                                                // border: Border.all(
                                                //   color: style.info,
                                                //   width: 1,
                                                // ),
                                                borderRadius:
                                                    BorderRadius.circular(8),
                                              ),
                                              child: Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 8, right: 4),
                                                child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: const [
                                                      Flexible(
                                                        child: Text(
                                                          'Pending',
                                                          style: TextStyle(
                                                              color: style.info,
                                                              fontFamily:
                                                                  'space Grotesk',
                                                              fontSize: 11,
                                                              letterSpacing:
                                                                  0.15,
                                                              height: 1.4),
                                                        ),
                                                      )
                                                    ]),
                                              )),
                                        ),
                                      ]),
                                  const SizedBox(
                                    height: 8,
                                  ),
                                  SizeConfig().p12regB(
                                      'This could either be NIMC, Voters Card  ',
                                      12),
                                  const SizedBox(
                                    height: 4,
                                  ),
                                  SizeConfig().p12regB('or Passport Photo', 12),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),

                  const SizedBox(
                    height: 24,
                  ),

                  // card 002 //

                  SizedBox(
                    width: 375,
                    height: 98,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        color: style.white,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 28, vertical: 16),
                        child: InkWell(
                          onTap: () {
                            // Navigator.push(
                            //     context,
                            //     MaterialPageRoute(
                            //         builder: (context) => const ValidIDCard()));
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Image.asset(
                                'assets/Issued ID.png',
                                height: 32,
                              ),

                              // column info //
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        SizeConfig().p14medB('Selfie', 14),
                                        const SizedBox(
                                          width: 120,
                                        ),
                                        SizedBox(
                                          height: 24,
                                          width: 60,
                                          child: DecoratedBox(
                                              decoration: BoxDecoration(
                                                color: style.info
                                                    .withOpacity(0.12),
                                                // border: Border.all(
                                                //   color: style.info,
                                                //   width: 1,
                                                // ),
                                                borderRadius:
                                                    BorderRadius.circular(8),
                                              ),
                                              child: Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 8, right: 4),
                                                child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: const [
                                                      Flexible(
                                                        child: Text(
                                                          'Pending',
                                                          style: TextStyle(
                                                              color: style.info,
                                                              fontFamily:
                                                                  'space Grotesk',
                                                              fontSize: 11,
                                                              letterSpacing:
                                                                  0.15,
                                                              height: 1.4),
                                                        ),
                                                      )
                                                    ]),
                                              )),
                                        ),
                                      ]),
                                  const SizedBox(
                                    height: 8,
                                  ),
                                  SizeConfig().p12regB(
                                      'Take a picture of yourself in a clean and',
                                      12),
                                  const SizedBox(
                                    height: 4,
                                  ),
                                  SizeConfig().p12regB('clean environment', 12),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 300,
                  ),

                  // btn section //
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
                      onPressed: () {
                        showModalBottomSheet(
                            isDismissible: false,
                            enableDrag: false,
                            isScrollControlled: true,
                            useSafeArea: false,
                            backgroundColor: style.white,
                            shape: const RoundedRectangleBorder(
                              borderRadius: BorderRadius.vertical(
                                top: Radius.circular(20),
                              ),
                            ),
                            clipBehavior: Clip.antiAliasWithSaveLayer,
                            context: context,
                            builder: (BuildContext context) {
                              return SizedBox(
                                // height: 1000,
                                child: DecoratedBox(
                                  decoration: const BoxDecoration(
                                      // color: style.white,
                                      // borderRadius: BorderRadius.only(
                                      //     topLeft: Radius.circular(20),
                                      //     topRight: Radius.circular(20))
                                      ),
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        left: 24,
                                        right: 24,
                                        top: 8,
                                        bottom: 60),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      // crossAxisAlignment:
                                      //     CrossAxisAlignment.center,
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          children: [
                                            IconButton(
                                                onPressed: () {
                                                  Navigator.pop(context);
                                                },
                                                icon: const Icon(
                                                  Icons.close,
                                                  color: style.divider,
                                                ))
                                          ],
                                        ),
                                        const SizedBox(
                                          height: 50,
                                        ),
                                        Image.asset(
                                          'assets/ID_success.png',
                                          height: 220,
                                        ),
                                        // const SizedBox(
                                        //   height: 8,
                                        // ),

                                        SizeConfig()
                                            .p18medB('Review in Progress', 16),
                                        const SizedBox(
                                          height: 12,
                                        ),

                                        const Flexible(
                                          child: Text(
                                            'Congratulations! on verifying your identity.  We will send you a message to confirm the submitted data',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              color: style.text2,
                                              fontFamily: 'space Grotesk',
                                              fontSize: 15,
                                              height: 1.4,
                                              letterSpacing: -0.4,
                                            ),
                                          ),
                                        ),

                                        const SizedBox(
                                          height: 60,
                                        ),

                                        // btn //
                                        SizedBox(
                                          width: 325,
                                          height: 48,
                                          child: TextButton(
                                              style: ButtonStyle(
                                                backgroundColor:
                                                    MaterialStateProperty.all(
                                                        style.primary1),
                                                shape:
                                                    MaterialStateProperty.all(
                                                  RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10)),
                                                ),
                                              ),
                                              onPressed: () {
                                                Navigator.pushReplacement(
                                                  context,
                                                  MaterialPageRoute(
                                                      builder: (context) =>
                                                          const home2()),
                                                );
                                              },
                                              child: SizeConfig().p16medW(
                                                  'Enjoy Saving Now', 16)),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              );
                            });
                      },
                      child: SizeConfig().p16medW('Continue', 14),
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
