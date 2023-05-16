import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:wisewallet/Screens/home.dart';
import 'package:wisewallet/Screens/pocket.dart';
import 'package:wisewallet/Screens/profile.dart';
import '../classes/media_style.dart';
import '../classes/style.dart';

class History extends StatefulWidget {
  const History({super.key});

  @override
  State<History> createState() => _HistoryState();
}

class _HistoryState extends State<History> {
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
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizeConfig().p18medB('History', 18),
                InkWell(
                  onTap: () {},
                  child: SizeConfig().p12medC('Beneficiaries', 12),
                ),
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
                              color: style.divider,
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
                          // Navigator.of(context).pushReplacement(
                          //   MaterialPageRoute(
                          //       builder: (context) => const History()),
                          // );
                        },
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image.asset(
                              'assets/history..png',
                              height: 26,
                              color: style.primary1,
                            ),
                            const SizedBox(
                              height: 6,
                            ),
                            SizeConfig().p14medC('History', 14),
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
                              color: style.divider,
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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      // wallet btn//
                      SizedBox(
                        width: 85,
                        height: 34,
                        child: TextButton(
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(
                                  style.IconOverlay.withOpacity(0.5)),
                              shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8),
                                  // side: const BorderSide(
                                  // color: style.white)
                                ),
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
                                    vertical: 0, horizontal: 0),
                                child: SizeConfig().p14medC('Wallet', 14))),
                      ),

                      const SizedBox(
                        width: 24,
                      ),

                      // savings btn //
                      SizedBox(
                        width: 85,
                        height: 34,
                        child: TextButton(
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(
                                  style.divider.withOpacity(0.3)),
                              shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8),
                                  // side: const BorderSide(
                                  // color: style.white)
                                ),
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
                                    vertical: 0, horizontal: 0),
                                child: SizeConfig().p14regB('Savings', 14))),
                      ),
                    ],
                  ),

                  const SizedBox(
                    height: 24,
                  ),
                  // All Transaction//
                  SizedBox(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizeConfig().p16medB('All Transaction', 16),
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
                          child:
                              SizeConfig().p16regB('No transactions yet!', 12),
                        )
                      ],
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
