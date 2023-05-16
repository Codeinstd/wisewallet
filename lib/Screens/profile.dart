import 'package:flutter/material.dart';
import 'package:wisewallet/Screens/history.dart';
import 'package:wisewallet/Screens/home.dart';
import 'package:wisewallet/Screens/pocket.dart';
import 'package:wisewallet/Screens/signIn.dart';
import '../classes/media_style.dart';
import '../classes/style.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
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
            padding: EdgeInsets.only(left: 24, right: 24),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizeConfig().p18medB('Profile', 18),
                InkWell(
                  onTap: () {
                    Navigator.of(context).pushReplacement(
                      MaterialPageRoute(builder: (context) => const SignIn()),
                    );
                  },
                  child: SizeConfig().p12medC('Logout', 12),
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
                              'assets/pocket2.png',
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
                              color: style.divider,
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
                        onTap: () {},
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image.asset(
                              'assets/profile.png',
                              height: 26,
                              color: style.primary1,
                            ),
                            const SizedBox(
                              height: 6,
                            ),
                            SizeConfig().p14medC('Profile', 14),
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
            padding: const EdgeInsets.only(left: 0, right: 0, top: 8),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // info section //

                  SizedBox(
                    width: 375,
                    height: 95,
                    child: DecoratedBox(
                      decoration: const BoxDecoration(
                        color: style.white,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 24, right: 24, top: 8, bottom: 8),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Image.asset(
                                  'assets/Avatar.png',
                                  height: 50,
                                ),
                                const SizedBox(
                                  width: 16,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizeConfig().p16medB('Phos Chronos', 16),
                                    const SizedBox(
                                      height: 4,
                                    ),
                                    SizeConfig().p12regB('phos@gmail.com', 12),
                                    const SizedBox(
                                      height: 8,
                                    ),
                                    SizedBox(
                                        width: 80,
                                        height: 28,
                                        child: DecoratedBox(
                                          decoration: BoxDecoration(
                                              color: style.primary1
                                                  .withOpacity(0.08),
                                              borderRadius:
                                                  BorderRadius.circular(8)),
                                          child: Padding(
                                            padding: const EdgeInsets.only(
                                                left: 2, right: 4),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceEvenly,
                                              children: [
                                                Image.asset(
                                                  'assets/newbie_badge.png',
                                                  height: 20,
                                                ),
                                                SizeConfig()
                                                    .p12medC('Newbie', 14),
                                              ],
                                            ),
                                          ),
                                        )),
                                  ],
                                ),
                              ],
                            ),
                            Image.asset(
                              'assets/Edit_Profile.png',
                              height: 32,
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 24,
                  ),

                  // Account Settings //

                  SizedBox(
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 24, right: 24, top: 12, bottom: 12),
                          child: SizeConfig().p16medB('Account Settings', 16),
                        ),
                        DecoratedBox(
                          decoration: const BoxDecoration(color: style.white),
                          child: Padding(
                            padding: const EdgeInsets.only(
                              left: 24,
                              right: 24,
                              top: 14,
                              bottom: 14,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                // security //
                                InkWell(
                                  onTap: () {},
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Image.asset(
                                            'assets/security.png',
                                            height: 36,
                                          ),
                                          const SizedBox(
                                            width: 8,
                                          ),
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              SizeConfig()
                                                  .p14medB('Security', 14),
                                              const SizedBox(
                                                height: 6,
                                              ),
                                              SizeConfig().p12regB(
                                                  'Manage your account priviledges',
                                                  14),
                                            ],
                                          )
                                        ],
                                      ),
                                      const Icon(
                                        Icons.arrow_forward_ios_outlined,
                                        color: style.divider,
                                        size: 16,
                                      )
                                    ],
                                  ),
                                ),
                                const SizedBox(
                                  height: 8,
                                ),
                                const Divider(
                                  color: style.divider,
                                ),
                                const SizedBox(
                                  height: 8,
                                ),
                                // legal //
                                InkWell(
                                  onTap: () {},
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Image.asset(
                                            'assets/legal.png',
                                            height: 36,
                                          ),
                                          const SizedBox(
                                            width: 8,
                                          ),
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              SizeConfig().p14medB('Legal', 14),
                                              const SizedBox(
                                                height: 6,
                                              ),
                                              SizeConfig().p12regB(
                                                  'More information on Wisewallet',
                                                  14),
                                            ],
                                          )
                                        ],
                                      ),
                                      const Icon(
                                        Icons.arrow_forward_ios_outlined,
                                        color: style.divider,
                                        size: 16,
                                      )
                                    ],
                                  ),
                                ),
                                const SizedBox(
                                  height: 8,
                                ),
                                const Divider(
                                  color: style.divider,
                                ),
                                const SizedBox(
                                  height: 8,
                                ),
                                // Referrals //
                                InkWell(
                                  onTap: () {},
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Image.asset(
                                            'assets/Referrals.png',
                                            height: 36,
                                          ),
                                          const SizedBox(
                                            width: 8,
                                          ),
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              SizeConfig()
                                                  .p14medB('Referrals', 14),
                                              const SizedBox(
                                                height: 6,
                                              ),
                                              SizeConfig().p12regB(
                                                  'Earn whilst you invite a friend',
                                                  14),
                                            ],
                                          )
                                        ],
                                      ),
                                      const Icon(
                                        Icons.arrow_forward_ios_outlined,
                                        color: style.divider,
                                        size: 16,
                                      )
                                    ],
                                  ),
                                ),
                                const SizedBox(
                                  height: 8,
                                ),
                                const Divider(
                                  color: style.divider,
                                ),
                                const SizedBox(
                                  height: 8,
                                ),
                                // Support //
                                InkWell(
                                  onTap: () {},
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Image.asset(
                                            'assets/Support.png',
                                            height: 36,
                                          ),
                                          const SizedBox(
                                            width: 8,
                                          ),
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              SizeConfig()
                                                  .p14medB('Support', 14),
                                              const SizedBox(
                                                height: 6,
                                              ),
                                              SizeConfig().p12regB(
                                                  'Get issues resolved swiftly',
                                                  14),
                                            ],
                                          )
                                        ],
                                      ),
                                      const Icon(
                                        Icons.arrow_forward_ios_outlined,
                                        color: style.divider,
                                        size: 16,
                                      )
                                    ],
                                  ),
                                ),
                                // const SizedBox(
                                //   height: 8,
                                // ),
                                // const Divider(
                                //   color: style.divider,
                                // ),
                              ],
                            ),
                          ),
                        )
                      ]))
                ],
              ),
            ),
          ))
        ],
      ),
    );
  }
}
