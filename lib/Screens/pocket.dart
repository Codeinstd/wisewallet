import 'package:flutter/material.dart';
import 'package:wisewallet/Screens/history.dart';
import 'package:wisewallet/Screens/home.dart';
import 'package:wisewallet/Screens/profile.dart';
import '../classes/style.dart';
import '../classes/media_style.dart';

class Pocket extends StatefulWidget {
  const Pocket({super.key});

  @override
  State<Pocket> createState() => _PocketState();
}

class _PocketState extends State<Pocket> {
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
            padding: const EdgeInsets.only(left: 24, right: 24),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizeConfig().p18medB('Pocket Savings', 18),
              ],
            ),
          ))
        ],
      ),

      // bottombar section//

      bottomNavigationBar: BottomAppBar(
          elevation: 0.5,
          child: SizedBox(
            height: 65,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 28, vertical: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // home //
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.of(context).pushReplacement(
                            MaterialPageRoute(
                                builder: (context) => const home()),
                          );
                        },
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image.asset(
                              'assets/Home.png',
                              height: 26,
                              color: style.divider,
                            ),
                            const SizedBox(
                              height: 6,
                            ),
                            SizeConfig().p14regB('Home', 14),
                          ],
                        ),
                      )
                    ],
                  ),

                  // Pocket //
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      InkWell(
                        onTap: () {
                          // Navigator.of(context).pushReplacement(
                          //   MaterialPageRoute(
                          //       builder: (context) => const Pocket()),
                          // );
                        },
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image.asset(
                              'assets/pocket2.png',
                              height: 26,
                            ),
                            const SizedBox(
                              height: 6,
                            ),
                            SizeConfig().p14medC('Pocket', 14),
                          ],
                        ),
                      )
                    ],
                  ),

                  // History //
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.of(context).pushReplacement(
                            MaterialPageRoute(
                                builder: (context) => const History()),
                          );
                        },
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image.asset(
                              'assets/history..png',
                              height: 26,
                            ),
                            const SizedBox(
                              height: 6,
                            ),
                            SizeConfig().p14regB('History', 14),
                          ],
                        ),
                      )
                    ],
                  ),

                  // Profile //
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.of(context).pushReplacement(
                            MaterialPageRoute(
                                builder: (context) => const Profile()),
                          );
                        },
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image.asset(
                              'assets/profile.png',
                              height: 26,
                            ),
                            const SizedBox(
                              height: 6,
                            ),
                            SizeConfig().p14regB('Profile', 14),
                          ],
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          )),

      // body section //

      // body section //
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Expanded(
              child: Padding(
            padding: const EdgeInsets.only(left: 0, right: 0, top: 4),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // card info //

                  SizedBox(
                    width: 375,
                    height: 175,
                    child: Padding(
                      padding:
                          const EdgeInsets.only(left: 24, right: 24, top: 14),
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                            color: style.primary1,
                            borderRadius: BorderRadius.circular(8)),
                        child: Padding(
                          padding: const EdgeInsets.only(
                              left: 20, right: 20, top: 8, bottom: 8),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      SizeConfig()
                                          .p14regW('Pocket Balance', 12),
                                      IconButton(
                                          onPressed: () {},
                                          icon: const Icon(
                                            Icons.key_off_sharp,
                                            color: style.white,
                                          )),
                                    ],
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      SizeConfig()
                                          .p12regW('Todays return:', 12),
                                      const SizedBox(
                                        height: 4,
                                      ),
                                      SizeConfig().p12regW('N00.00', 12),
                                    ],
                                  )
                                ],
                              ),
                              const SizedBox(
                                height: 2,
                              ),
                              SizeConfig().p30medW('N00.00', 30),
                              const SizedBox(
                                height: 18,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  // withdraw wallet //
                                  SizedBox(
                                    width: 130,
                                    height: 34,
                                    child: TextButton(
                                      style: ButtonStyle(
                                        // backgroundColor:
                                        //     MaterialStateProperty.all(
                                        //         style.primary1),
                                        shape: MaterialStateProperty.all(
                                          RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(6),
                                              side: const BorderSide(
                                                  color: style.white)),
                                        ),
                                      ),
                                      onPressed: () async {
                                        // Navigator.of(context).pushReplacement(
                                        //   MaterialPageRoute(
                                        //       builder: (context) =>
                                        //           const SetNewPassword()),
                                        // );
                                      },
                                      child: Padding(
                                          padding: const EdgeInsets.symmetric(
                                              vertical: 0, horizontal: 4),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceEvenly,
                                            children: [
                                              const Icon(
                                                Icons.add,
                                                color: style.white,
                                                size: 20,
                                              ),
                                              SizeConfig()
                                                  .p14medW('Transfer', 14)
                                            ],
                                          )),
                                    ),
                                  ),

                                  // fund wallet //
                                  SizedBox(
                                    width: 130,
                                    height: 34,
                                    child: TextButton(
                                        style: ButtonStyle(
                                          backgroundColor:
                                              MaterialStateProperty.all(
                                                  style.white),
                                          // shape: MaterialStateProperty.all(
                                          //   RoundedRectangleBorder(
                                          //       borderRadius:
                                          //           BorderRadius.circular(6),
                                          //       side: const BorderSide(
                                          //           color: style.white)),
                                          // ),
                                        ),
                                        onPressed: () async {
                                          // Navigator.of(context).pushReplacement(
                                          //   MaterialPageRoute(
                                          //       builder: (context) =>
                                          //           const SetNewPassword()),
                                          // );
                                        },
                                        child: Padding(
                                            padding: const EdgeInsets.symmetric(
                                                vertical: 0, horizontal: 0),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceEvenly,
                                              children: [
                                                const Icon(
                                                  Icons.add_circle,
                                                  color: style.primary1,
                                                  size: 20,
                                                ),
                                                SizeConfig()
                                                    .p14medC('Top Up', 14)
                                              ],
                                            ))),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),

                  const SizedBox(
                    height: 20,
                  ),

                  // Recent Transaction//

                  SizedBox(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 24, right: 24),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // SizeConfig().p16medB('Recent Transaction', 16),
                          // const SizedBox(
                          //   height: 16,
                          // ),
                          Image.asset(
                            'assets/empty_state.png',
                          ),
                          const SizedBox(
                            height: 12,
                          ),
                          const SizedBox(
                              child: Flexible(
                            child: Text(
                              'You currently do not have any savings pocket activated',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: style.text2,
                                  fontSize: 16,
                                  height: 1.5,
                                  fontFamily: 'space Grotesk'),
                            ),
                          )),
                          const SizedBox(
                            height: 28,
                          ),
                          Align(
                            alignment: Alignment.center,
                            child: InkWell(
                              onTap: () {},
                              child: SizeConfig().p16medC('Start Saving', 16),
                            ),
                          )
                        ],
                      ),
                    ),
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
