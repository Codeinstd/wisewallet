import 'package:flutter/material.dart';
import 'package:wisewallet/Screens/VerifyID.dart';
import 'package:wisewallet/Screens/history.dart';
import 'package:wisewallet/Screens/pocket.dart';
import 'package:wisewallet/Screens/profile.dart';
import 'package:wisewallet/Screens/splash.dart';
import 'package:wisewallet/main.dart';
import '../classes/media_style.dart';
import '../classes/style.dart';
import 'package:flutter/services.dart';

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                        onTap: () {},
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image.asset(
                              'assets/Home.png',
                              height: 26,
                            ),
                            const SizedBox(
                              height: 6,
                            ),
                            SizeConfig().p14medC('Home', 14),
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
                          Navigator.of(context).pushReplacement(
                            MaterialPageRoute(
                                builder: (context) => const Pocket()),
                          );
                        },
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image.asset(
                              'assets/pocket-.png',
                              height: 26,
                            ),
                            const SizedBox(
                              height: 6,
                            ),
                            SizeConfig().p14regB('Pocket', 14),
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

      // appbar section //
      appBar: AppBar(
        elevation: 0,
        backgroundColor: style.white,
        toolbarHeight: 50,
        actions: <Widget>[
          Expanded(
              child: Padding(
                  padding: const EdgeInsets.only(left: 24, right: 16),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              SizeConfig().p18medB('Holla Phos!', 16),
                              Image.asset(
                                'assets/sure.png',
                                height: 22,
                              )
                            ],
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                                width: 94,
                                height: 32,
                                child: DecoratedBox(
                                  decoration: BoxDecoration(
                                      color: style.primary1.withOpacity(0.08),
                                      borderRadius: BorderRadius.circular(10)),
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        left: 2, right: 4),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Image.asset(
                                          'assets/newbie_badge.png',
                                          height: 24,
                                        ),
                                        SizeConfig().p14medC('Newbie', 14),
                                      ],
                                    ),
                                  ),
                                )),
                            const SizedBox(
                              width: 12,
                            ),
                            const Icon(
                              Icons.notifications_none_outlined,
                              color: style.black,
                            )
                          ],
                        ),
                      ])))
        ],
      ),

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
                  // info //
                  SizedBox(
                    height: 40,
                    width: 375,
                    child: InkWell(
                        onTap: () {
                          Navigator.of(context).pushReplacement(
                            MaterialPageRoute(
                                builder: (context) => const VerifyID()),
                          );
                        },
                        child: DecoratedBox(
                          decoration: BoxDecoration(
                              color: style.lightRed.withOpacity(0.1)),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 24, right: 16),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Image.asset(
                                        'assets/VerifyIdentity.png',
                                        height: 24,
                                      ),
                                      const SizedBox(
                                        width: 6,
                                      ),
                                      SizeConfig()
                                          .p14regR('Verify your Identity', 14),
                                    ]),
                                const Icon(
                                  Icons.arrow_forward,
                                  color: style.error,
                                )
                              ],
                            ),
                          ),
                        )),
                  ),

                  // card info //

                  SizedBox(
                    width: 375,
                    height: 170,
                    child: Padding(
                      padding:
                          const EdgeInsets.only(left: 24, right: 24, top: 14),
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                            color: style.primary1,
                            borderRadius: BorderRadius.circular(8)),
                        child: Padding(
                          padding: const EdgeInsets.only(
                              left: 20, right: 20, top: 2),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  SizeConfig().p14regW('Available Balance', 12),
                                  IconButton(
                                      onPressed: () {},
                                      icon: const Icon(
                                        Icons.visibility,
                                        color: style.white,
                                      )),
                                ],
                              ),
                              // const SizedBox(
                              //   height: 1,
                              // ),
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
                                                Icons.remove_circle_outline,
                                                color: style.white,
                                                size: 20,
                                              ),
                                              SizeConfig()
                                                  .p14medW('Withdraw', 14)
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
                                                    .p14medC('Fund Wallet', 14)
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
                    height: 24,
                  ),

                  // Recent Transaction//

                  SizedBox(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 24, right: 24),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizeConfig().p16medB('Recent Transaction', 16),
                            const SizedBox(
                              height: 16,
                            ),
                            Image.asset(
                              'assets/empty_state.png',
                            ),
                            const SizedBox(
                              height: 16,
                            ),
                            Align(
                              alignment: Alignment.center,
                              child: SizeConfig()
                                  .p16regB('No transactions yet!', 12),
                            )
                          ]),
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
