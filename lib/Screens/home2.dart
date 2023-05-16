import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:wisewallet/Screens/bankTransfer.dart';
import 'package:wisewallet/Screens/history.dart';
import 'package:wisewallet/Screens/pocket.dart';
import 'package:wisewallet/Screens/profile.dart';
import '../classes/media_style.dart';
import '../classes/style.dart';
import 'package:flutter/services.dart';

class home2 extends StatefulWidget {
  const home2({super.key});

  @override
  State<home2> createState() => _home2State();
}

class _home2State extends State<home2> {
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
                              SizeConfig().p30medW('N200.10', 30),
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
                                      onPressed: () {
                                        showModalBottomSheet(
                                            backgroundColor: style.gray03,
                                            isDismissible: false,
                                            isScrollControlled: true,
                                            enableDrag: false,
                                            clipBehavior:
                                                Clip.antiAliasWithSaveLayer,
                                            shape: const RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.vertical(
                                                top: Radius.circular(20),
                                              ),
                                            ),
                                            context: context,
                                            builder: (BuildContext context) {
                                              return SizedBox(
                                                  child: DecoratedBox(
                                                decoration:
                                                    const BoxDecoration(),
                                                child: Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                      left: 24,
                                                      right: 24,
                                                      top: 24,
                                                      bottom: 24,
                                                    ),
                                                    child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.min,
                                                      children: [
                                                        Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .end,
                                                          children: [
                                                            IconButton(
                                                                onPressed: () {
                                                                  Navigator.pop(
                                                                      context);
                                                                },
                                                                icon:
                                                                    const Icon(
                                                                  Icons.close,
                                                                  color: style
                                                                      .divider,
                                                                ))
                                                          ],
                                                        ),
                                                        const SizedBox(
                                                          height: 24,
                                                        ),
                                                        SizeConfig().p16medB(
                                                            'How would you like to transfer from you wallet',
                                                            16),

                                                        const SizedBox(
                                                          height: 24,
                                                        ),

                                                        // bank account //
                                                        SizedBox(
                                                          child: InkWell(
                                                            onTap: () {
                                                              Navigator.of(
                                                                      context)
                                                                  .pushReplacement(
                                                                MaterialPageRoute(
                                                                    builder:
                                                                        (context) =>
                                                                            const BankTransfer()),
                                                              );
                                                            },
                                                            child: DecoratedBox(
                                                              decoration: BoxDecoration(
                                                                  color: style
                                                                      .white,
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              12)),
                                                              child: Padding(
                                                                padding: const EdgeInsets
                                                                        .symmetric(
                                                                    horizontal:
                                                                        12,
                                                                    vertical:
                                                                        16),
                                                                child: Row(
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .spaceBetween,
                                                                  children: [
                                                                    Row(
                                                                      children: [
                                                                        Image.asset(
                                                                            'assets/Bank_Account.png',
                                                                            height:
                                                                                40),
                                                                        const SizedBox(
                                                                          width:
                                                                              14,
                                                                        ),
                                                                        Column(
                                                                          crossAxisAlignment:
                                                                              CrossAxisAlignment.start,
                                                                          children: [
                                                                            SizeConfig().p16medB('Bank Account',
                                                                                16),
                                                                            const SizedBox(
                                                                              height: 4,
                                                                            ),
                                                                            SizeConfig().p12regB('Send to a local bank account',
                                                                                12),
                                                                          ],
                                                                        ),
                                                                      ],
                                                                    ),
                                                                    const Icon(
                                                                      Icons
                                                                          .arrow_forward_ios_outlined,
                                                                      color: style
                                                                          .divider,
                                                                      size: 16,
                                                                    )
                                                                  ],
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                        ),

                                                        const SizedBox(
                                                          height: 24,
                                                        ),

                                                        // savings pocket //
                                                        SizedBox(
                                                          child: InkWell(
                                                            onTap: () {},
                                                            child: DecoratedBox(
                                                              decoration: BoxDecoration(
                                                                  color: style
                                                                      .white,
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              12)),
                                                              child: Padding(
                                                                padding: const EdgeInsets
                                                                        .symmetric(
                                                                    horizontal:
                                                                        12,
                                                                    vertical:
                                                                        16),
                                                                child: Row(
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .spaceBetween,
                                                                  children: [
                                                                    Row(
                                                                      children: [
                                                                        Image.asset(
                                                                            'assets/Pocket.png',
                                                                            height:
                                                                                40),
                                                                        const SizedBox(
                                                                          width:
                                                                              14,
                                                                        ),
                                                                        Column(
                                                                          crossAxisAlignment:
                                                                              CrossAxisAlignment.start,
                                                                          children: [
                                                                            SizeConfig().p16medB('Savings Pocket',
                                                                                16),
                                                                            const SizedBox(
                                                                              height: 6,
                                                                            ),
                                                                            SizeConfig().p12regB('Send to your pocket savings',
                                                                                12),
                                                                          ],
                                                                        ),
                                                                      ],
                                                                    ),
                                                                    const Icon(
                                                                      Icons
                                                                          .arrow_forward_ios_outlined,
                                                                      color: style
                                                                          .divider,
                                                                      size: 16,
                                                                    )
                                                                  ],
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                        const SizedBox(
                                                          height: 40,
                                                        ),

                                                        // create now //
                                                        SizedBox(
                                                          child: DecoratedBox(
                                                            decoration: BoxDecoration(
                                                                color: style
                                                                    .info
                                                                    .withOpacity(
                                                                        0.058),
                                                                border: Border.all(
                                                                    color: style
                                                                        .info),
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            12)),
                                                            child: Padding(
                                                              padding: const EdgeInsets
                                                                      .symmetric(
                                                                  horizontal:
                                                                      12,
                                                                  vertical: 16),
                                                              child: Row(
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .spaceBetween,
                                                                children: [
                                                                  Row(
                                                                    children: [
                                                                      Image.asset(
                                                                          'assets/info.png',
                                                                          height:
                                                                              24),
                                                                      const SizedBox(
                                                                        width:
                                                                            4,
                                                                      ),
                                                                      const Text(
                                                                        'Yet to setup transactionPIN',
                                                                        style: TextStyle(
                                                                            color: style
                                                                                .info,
                                                                            fontSize:
                                                                                12.5,
                                                                            fontFamily:
                                                                                'space Grotesk',
                                                                            fontWeight:
                                                                                FontWeight.w500),
                                                                      ),
                                                                      const SizedBox(
                                                                        width:
                                                                            14,
                                                                      ),
                                                                      InkWell(
                                                                        onTap:
                                                                            () {},
                                                                        child:
                                                                            SizedBox(
                                                                          height:
                                                                              30,
                                                                          width:
                                                                              95,
                                                                          child:
                                                                              DecoratedBox(
                                                                            decoration:
                                                                                BoxDecoration(color: style.primary1, borderRadius: BorderRadius.circular(6)),
                                                                            child:
                                                                                Padding(padding: const EdgeInsets.only(left: 8, right: 5, top: 5, bottom: 2), child: SizeConfig().p14medW('Create Now', 14)),
                                                                          ),
                                                                        ),
                                                                      )
                                                                    ],
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    )),
                                              ));
                                            });
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
                                        onPressed: () {
                                          showModalBottomSheet(
                                              enableDrag: false,
                                              isScrollControlled: true,
                                              isDismissible: true,
                                              clipBehavior:
                                                  Clip.antiAliasWithSaveLayer,
                                              backgroundColor: style.gray03,
                                              context: context,
                                              shape:
                                                  const RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.vertical(
                                                  top: Radius.circular(20),
                                                ),
                                              ),
                                              builder: (BuildContext context) {
                                                return SizedBox(
                                                  // height: 500,
                                                  // width: 375,
                                                  child: DecoratedBox(
                                                    decoration:
                                                        const BoxDecoration(),
                                                    child: Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                        right: 24,
                                                        left: 24,
                                                        top: 24,
                                                        bottom: 40,
                                                      ),
                                                      child: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.min,
                                                        children: [
                                                          Row(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .end,
                                                            children: [
                                                              IconButton(
                                                                  onPressed:
                                                                      () {
                                                                    Navigator.pop(
                                                                        context);
                                                                  },
                                                                  icon:
                                                                      const Icon(
                                                                    Icons.close,
                                                                    color: style
                                                                        .divider,
                                                                  ))
                                                            ],
                                                          ),
                                                          const SizedBox(
                                                            height: 24,
                                                          ),
                                                          Column(
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            children: [
                                                              SizeConfig().p16medB(
                                                                  'How would you like to fund wallet',
                                                                  16),
                                                              const SizedBox(
                                                                height: 24,
                                                              ),

                                                              // bank transfer //
                                                              SizedBox(
                                                                child: InkWell(
                                                                  onTap: () {
                                                                    showModalBottomSheet(
                                                                        useSafeArea:
                                                                            false,
                                                                        backgroundColor:
                                                                            style
                                                                                .gray03,
                                                                        clipBehavior:
                                                                            Clip
                                                                                .antiAliasWithSaveLayer,
                                                                        shape:
                                                                            const RoundedRectangleBorder(
                                                                          borderRadius:
                                                                              BorderRadius.vertical(
                                                                            top:
                                                                                Radius.circular(20),
                                                                          ),
                                                                        ),
                                                                        enableDrag:
                                                                            false,
                                                                        isDismissible:
                                                                            true,
                                                                        isScrollControlled:
                                                                            true,
                                                                        context:
                                                                            context,
                                                                        builder:
                                                                            (BuildContext
                                                                                context) {
                                                                          return SizedBox(
                                                                            child:
                                                                                Padding(
                                                                              padding: const EdgeInsets.only(left: 24, right: 24, top: 16, bottom: 24),
                                                                              child: Column(
                                                                                mainAxisSize: MainAxisSize.min,
                                                                                children: [
                                                                                  Row(
                                                                                    mainAxisAlignment: MainAxisAlignment.end,
                                                                                    children: [
                                                                                      // close icon //
                                                                                      Row(
                                                                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                        children: [
                                                                                          IconButton(
                                                                                              onPressed: () {
                                                                                                Navigator.of(context).pushReplacement(
                                                                                                  MaterialPageRoute(builder: (context) => const home2()),
                                                                                                );
                                                                                              },
                                                                                              icon: const Icon(
                                                                                                Icons.close,
                                                                                                color: style.divider,
                                                                                              ))
                                                                                        ],
                                                                                      ),
                                                                                    ],
                                                                                  ),
                                                                                  const SizedBox(
                                                                                    height: 24,
                                                                                  ),
                                                                                  // header //
                                                                                  Column(
                                                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                                                    children: [
                                                                                      SizeConfig().p16medB('Bank Transfer', 16),
                                                                                      const SizedBox(
                                                                                        height: 8,
                                                                                      ),
                                                                                      SizeConfig().p14regB('Fund your account wallet with the provided bank details below', 12),

                                                                                      // body //
                                                                                      const SizedBox(
                                                                                        height: 24,
                                                                                      ),

                                                                                      SizeConfig().p12regB('Bank', 12),
                                                                                      const SizedBox(
                                                                                        height: 4,
                                                                                      ),
                                                                                      SizeConfig().p16medB('Serenity Bank', 16),
                                                                                      const SizedBox(
                                                                                        height: 8,
                                                                                      ),

                                                                                      const Divider(
                                                                                        color: style.divider,
                                                                                      ),

                                                                                      const SizedBox(
                                                                                        height: 16,
                                                                                      ),

                                                                                      Row(
                                                                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                        children: [
                                                                                          // acct no //
                                                                                          Column(
                                                                                            crossAxisAlignment: CrossAxisAlignment.start,
                                                                                            children: [
                                                                                              SizeConfig().p12regB('Account Number', 12),
                                                                                              const SizedBox(
                                                                                                height: 4,
                                                                                              ),
                                                                                              SizeConfig().p16medB('Serenity Bank', 16),
                                                                                              const SizedBox(
                                                                                                height: 8,
                                                                                              ),
                                                                                            ],
                                                                                          ),
                                                                                          InkWell(
                                                                                            onTap: () {
                                                                                              // flutter toast //
                                                                                              Fluttertoast.showToast(msg: 'copied!', toastLength: Toast.LENGTH_SHORT, gravity: ToastGravity.TOP, timeInSecForIosWeb: 4, fontSize: 14, backgroundColor: style.success, textColor: style.white);
                                                                                            },
                                                                                            child: SizedBox(
                                                                                              width: 65,
                                                                                              child: DecoratedBox(
                                                                                                decoration: BoxDecoration(color: style.primary1.withOpacity(0.08), borderRadius: BorderRadius.circular(4)),
                                                                                                child: Padding(
                                                                                                  padding: const EdgeInsets.only(left: 4, right: 4, top: 4, bottom: 4),
                                                                                                  child: Row(
                                                                                                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                                                                                                    children: [
                                                                                                      const Icon(
                                                                                                        Icons.copy,
                                                                                                        color: style.primary1,
                                                                                                        size: 16,
                                                                                                      ),
                                                                                                      SizeConfig().p12medC('Copy', 12),
                                                                                                    ],
                                                                                                  ),
                                                                                                ),
                                                                                              ),
                                                                                            ),
                                                                                          )
                                                                                        ],
                                                                                      ),

                                                                                      const Divider(
                                                                                        color: style.divider,
                                                                                      ),
                                                                                      const SizedBox(
                                                                                        height: 16,
                                                                                      ),

                                                                                      SizeConfig().p12regB('Account Name', 12),
                                                                                      const SizedBox(
                                                                                        height: 4,
                                                                                      ),
                                                                                      SizeConfig().p16medB('Phos Chronos', 16),
                                                                                      const SizedBox(
                                                                                        height: 8,
                                                                                      ),

                                                                                      const SizedBox(
                                                                                        height: 36,
                                                                                      ),

                                                                                      // btn //
                                                                                      SizedBox(
                                                                                        width: 325,
                                                                                        height: 48,
                                                                                        child: TextButton(
                                                                                            style: ButtonStyle(
                                                                                              backgroundColor: MaterialStateProperty.all(style.primary1),
                                                                                              shape: MaterialStateProperty.all(
                                                                                                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                                                                                              ),
                                                                                            ),
                                                                                            onPressed: () {
                                                                                              // flutter toast //
                                                                                              Fluttertoast.showToast(msg: 'Coo! your wallet will be credited once this is confirmed!', toastLength: Toast.LENGTH_SHORT, gravity: ToastGravity.TOP, timeInSecForIosWeb: 4, fontSize: 14, backgroundColor: style.success, textColor: style.white);
                                                                                            },
                                                                                            child: SizeConfig().p16medW('Transfer Done', 16)),
                                                                                      ),
                                                                                    ],
                                                                                  ),
                                                                                ],
                                                                              ),
                                                                            ),
                                                                          );
                                                                        });
                                                                  },
                                                                  child:
                                                                      DecoratedBox(
                                                                    decoration: BoxDecoration(
                                                                        color: style
                                                                            .white,
                                                                        borderRadius:
                                                                            BorderRadius.circular(12)),
                                                                    child:
                                                                        Padding(
                                                                      padding: const EdgeInsets
                                                                              .symmetric(
                                                                          horizontal:
                                                                              12,
                                                                          vertical:
                                                                              16),
                                                                      child:
                                                                          Row(
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.spaceBetween,
                                                                        children: [
                                                                          Row(
                                                                            children: [
                                                                              Image.asset('assets/Bank_Account.png', height: 40),
                                                                              const SizedBox(
                                                                                width: 14,
                                                                              ),
                                                                              Column(
                                                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                                                children: [
                                                                                  SizeConfig().p16medB('Bank Transfer', 16),
                                                                                  const SizedBox(
                                                                                    height: 6,
                                                                                  ),
                                                                                  SizeConfig().p12regB('via a bank account', 12),
                                                                                ],
                                                                              ),
                                                                            ],
                                                                          ),
                                                                          const Icon(
                                                                            Icons.arrow_forward_ios_outlined,
                                                                            color:
                                                                                style.divider,
                                                                            size:
                                                                                16,
                                                                          )
                                                                        ],
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),

                                                              const SizedBox(
                                                                height: 24,
                                                              ),

                                                              // Card Payment //
                                                              SizedBox(
                                                                child: InkWell(
                                                                  onTap: () {
                                                                    showModalBottomSheet(
                                                                        enableDrag:
                                                                            false,
                                                                        isDismissible:
                                                                            false,
                                                                        isScrollControlled:
                                                                            true,
                                                                        backgroundColor:
                                                                            style
                                                                                .gray03,
                                                                        shape:
                                                                            const RoundedRectangleBorder(
                                                                          borderRadius:
                                                                              BorderRadius.vertical(
                                                                            top:
                                                                                Radius.circular(20),
                                                                          ),
                                                                        ),
                                                                        clipBehavior:
                                                                            Clip
                                                                                .antiAliasWithSaveLayer,
                                                                        context:
                                                                            context,
                                                                        builder:
                                                                            (BuildContext
                                                                                context) {
                                                                          return SizedBox(
                                                                            child:
                                                                                DecoratedBox(
                                                                              decoration: const BoxDecoration(),
                                                                              child: Padding(
                                                                                padding: const EdgeInsets.only(left: 24, right: 24, top: 16, bottom: 8),
                                                                                child: Column(
                                                                                  mainAxisSize: MainAxisSize.min,
                                                                                  children: [
                                                                                    Row(
                                                                                      mainAxisAlignment: MainAxisAlignment.end,
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
                                                                                      height: 24,
                                                                                    ),
                                                                                    SizedBox(
                                                                                      width: 375,
                                                                                      child: Column(
                                                                                        crossAxisAlignment: CrossAxisAlignment.start,
                                                                                        children: [
                                                                                          // title //
                                                                                          SizeConfig().p16medB('Card Payment', 18),
                                                                                          const SizedBox(
                                                                                            height: 8,
                                                                                          ),
                                                                                          // info //
                                                                                          SizeConfig().p12regB('Fill in the provided box below to fund your wallet', 12),
                                                                                        ],
                                                                                      ),
                                                                                    ),
                                                                                    const SizedBox(height: 24),

                                                                                    // alert info //

                                                                                    SizedBox(
                                                                                      child: DecoratedBox(
                                                                                        decoration: BoxDecoration(color: style.white, border: Border.all(color: style.info), borderRadius: BorderRadius.circular(12)),
                                                                                        child: Padding(
                                                                                          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                                                                                          child: Row(
                                                                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                            children: [
                                                                                              Image.asset('assets/info.png', height: 24),
                                                                                              const SizedBox(
                                                                                                width: 8,
                                                                                              ),
                                                                                              const Flexible(
                                                                                                child: Text(
                                                                                                  'Please note some banks might require you to input your PIN to validate request.',
                                                                                                  style: TextStyle(color: style.text2, fontSize: 13, fontFamily: 'space Grotesk', fontWeight: FontWeight.w300, height: 1.4),
                                                                                                ),
                                                                                              ),
                                                                                            ],
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                    ),

                                                                                    const SizedBox(
                                                                                      height: 16,
                                                                                    ),

                                                                                    // text input space //

                                                                                    // card name //
                                                                                    Container(
                                                                                      height: 56,
                                                                                      width: 327,
                                                                                      decoration: const BoxDecoration(
                                                                                          // color: style.divider,
                                                                                          border: Border(bottom: BorderSide(width: 1, color: style.divider))),
                                                                                      margin: const EdgeInsets.all(0),
                                                                                      child: Row(
                                                                                        children: <Widget>[
                                                                                          Padding(
                                                                                            padding: const EdgeInsets.only(top: 16),
                                                                                            child: SizeConfig().p14regB('Card Name', 14),
                                                                                          ),
                                                                                          Expanded(
                                                                                            child: TextField(
                                                                                              cursorColor: style.primary1,
                                                                                              keyboardType: TextInputType.emailAddress,
                                                                                              inputFormatters: [
                                                                                                LengthLimitingTextInputFormatter(20)
                                                                                              ],
                                                                                              decoration: const InputDecoration(
                                                                                                border: InputBorder.none,
                                                                                                hintText: "Enter name",
                                                                                                hintStyle: TextStyle(color: style.divider),
                                                                                                contentPadding: EdgeInsets.only(left: 16, top: 14),
                                                                                              ),
                                                                                              style: const TextStyle(
                                                                                                fontFamily: 'space Grotesk',
                                                                                                fontSize: 16.0,
                                                                                                color: style.text2,
                                                                                              ),
                                                                                            ),
                                                                                          )
                                                                                        ],
                                                                                      ),
                                                                                    ),
                                                                                    const SizedBox(
                                                                                      height: 4,
                                                                                    ),

                                                                                    // card no //
                                                                                    Container(
                                                                                      height: 56,
                                                                                      width: 327,
                                                                                      decoration: const BoxDecoration(
                                                                                          // color: style.divider,
                                                                                          border: Border(bottom: BorderSide(width: 1, color: style.divider))),
                                                                                      margin: const EdgeInsets.all(0),
                                                                                      child: Row(
                                                                                        children: <Widget>[
                                                                                          Padding(
                                                                                            padding: const EdgeInsets.only(top: 16),
                                                                                            child: SizeConfig().p14regB('Card No     ', 14),
                                                                                          ),
                                                                                          Expanded(
                                                                                            child: TextField(
                                                                                              cursorColor: style.primary1,
                                                                                              keyboardType: TextInputType.emailAddress,
                                                                                              inputFormatters: [
                                                                                                LengthLimitingTextInputFormatter(16)
                                                                                              ],
                                                                                              decoration: const InputDecoration(
                                                                                                border: InputBorder.none,
                                                                                                hintText: "---- ---- ----",
                                                                                                hintStyle: TextStyle(color: style.divider),
                                                                                                contentPadding: EdgeInsets.only(left: 16, top: 14),
                                                                                              ),
                                                                                              style: const TextStyle(
                                                                                                fontFamily: 'space Grotesk',
                                                                                                fontSize: 16.0,
                                                                                                color: style.text2,
                                                                                              ),
                                                                                            ),
                                                                                          )
                                                                                        ],
                                                                                      ),
                                                                                    ),

                                                                                    const SizedBox(
                                                                                      height: 4,
                                                                                    ),

                                                                                    // expiry date //
                                                                                    Container(
                                                                                      height: 56,
                                                                                      width: 327,
                                                                                      decoration: const BoxDecoration(
                                                                                          // color: style.divider,
                                                                                          border: Border(bottom: BorderSide(width: 1, color: style.divider))),
                                                                                      margin: const EdgeInsets.all(0),
                                                                                      child: Row(
                                                                                        children: <Widget>[
                                                                                          Padding(
                                                                                            padding: const EdgeInsets.only(top: 16),
                                                                                            child: SizeConfig().p14regB('Expiry Date', 14),
                                                                                          ),
                                                                                          Expanded(
                                                                                            child: TextField(
                                                                                              cursorColor: style.primary1,
                                                                                              keyboardType: TextInputType.emailAddress,
                                                                                              inputFormatters: [
                                                                                                LengthLimitingTextInputFormatter(4)
                                                                                              ],
                                                                                              decoration: const InputDecoration(
                                                                                                border: InputBorder.none,
                                                                                                hintText: "mm/yy",
                                                                                                hintStyle: TextStyle(color: style.divider),
                                                                                                contentPadding: EdgeInsets.only(left: 16, top: 14),
                                                                                              ),
                                                                                              style: const TextStyle(
                                                                                                fontFamily: 'space Grotesk',
                                                                                                fontSize: 16.0,
                                                                                                color: style.text2,
                                                                                              ),
                                                                                            ),
                                                                                          )
                                                                                        ],
                                                                                      ),
                                                                                    ),
                                                                                    const SizedBox(
                                                                                      height: 4,
                                                                                    ),

                                                                                    // expiry date //
                                                                                    Container(
                                                                                      height: 56,
                                                                                      width: 327,
                                                                                      decoration: const BoxDecoration(
                                                                                          // color: style.divider,
                                                                                          border: Border(bottom: BorderSide(width: 1, color: style.divider))),
                                                                                      margin: const EdgeInsets.all(0),
                                                                                      child: Row(
                                                                                        children: <Widget>[
                                                                                          Padding(
                                                                                            padding: const EdgeInsets.only(top: 16),
                                                                                            child: SizeConfig().p14regB('CVV', 14),
                                                                                          ),
                                                                                          Expanded(
                                                                                            child: TextField(
                                                                                              cursorColor: style.primary1,
                                                                                              keyboardType: TextInputType.emailAddress,
                                                                                              inputFormatters: [
                                                                                                LengthLimitingTextInputFormatter(3)
                                                                                              ],
                                                                                              decoration: const InputDecoration(
                                                                                                border: InputBorder.none,
                                                                                                hintText: "---",
                                                                                                hintStyle: TextStyle(color: style.divider),
                                                                                                contentPadding: EdgeInsets.only(left: 60, top: 14),
                                                                                              ),
                                                                                              style: const TextStyle(
                                                                                                fontFamily: 'space Grotesk',
                                                                                                fontSize: 16.0,
                                                                                                color: style.text2,
                                                                                              ),
                                                                                            ),
                                                                                          )
                                                                                        ],
                                                                                      ),
                                                                                    ),

                                                                                    const SizedBox(
                                                                                      height: 80,
                                                                                    ),

                                                                                    // btn 2//
                                                                                    SizedBox(
                                                                                      width: 375,
                                                                                      height: 48,
                                                                                      child: TextButton(
                                                                                          style: ButtonStyle(
                                                                                            backgroundColor: MaterialStateProperty.all(style.primary1),
                                                                                            shape: MaterialStateProperty.all(
                                                                                              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                                                                                            ),
                                                                                          ),
                                                                                          onPressed: () {
                                                                                            // Showmodal //
                                                                                            showModalBottomSheet(
                                                                                                enableDrag: false,
                                                                                                isDismissible: false,
                                                                                                isScrollControlled: true,
                                                                                                backgroundColor: style.gray03,
                                                                                                shape: const RoundedRectangleBorder(
                                                                                                  borderRadius: BorderRadius.vertical(
                                                                                                    top: Radius.circular(20),
                                                                                                  ),
                                                                                                ),
                                                                                                clipBehavior: Clip.antiAliasWithSaveLayer,
                                                                                                context: context,
                                                                                                builder: (BuildContext context) {
                                                                                                  return SizedBox(
                                                                                                    // height: 1200,
                                                                                                    child: DecoratedBox(
                                                                                                      decoration: const BoxDecoration(),
                                                                                                      child: Padding(
                                                                                                        padding: const EdgeInsets.only(left: 24, right: 24, top: 16, bottom: 8),
                                                                                                        child: Column(
                                                                                                          mainAxisSize: MainAxisSize.min,
                                                                                                          children: [
                                                                                                            Row(
                                                                                                              mainAxisAlignment: MainAxisAlignment.end,
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
                                                                                                              height: 24,
                                                                                                            ),
                                                                                                            SizedBox(
                                                                                                              width: 375,
                                                                                                              child: Column(
                                                                                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                                                                                children: [
                                                                                                                  // title //
                                                                                                                  SizeConfig().p16medB('Card Payment', 18),
                                                                                                                  const SizedBox(
                                                                                                                    height: 8,
                                                                                                                  ),
                                                                                                                  // info //
                                                                                                                  SizeConfig().p12regB('Fill in the provided box below to fund your wallet', 12),
                                                                                                                ],
                                                                                                              ),
                                                                                                            ),
                                                                                                            const SizedBox(height: 24),

                                                                                                            // alert info //

                                                                                                            SizedBox(
                                                                                                              child: DecoratedBox(
                                                                                                                decoration: BoxDecoration(color: style.white, borderRadius: BorderRadius.circular(12)),
                                                                                                                child: Padding(
                                                                                                                  padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                                                                                                                  child: Row(
                                                                                                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                                                    children: [
                                                                                                                      Image.asset('assets/Mastercard.png', height: 24),
                                                                                                                      SizeConfig().p14regB('Mastercard -0954', 14),
                                                                                                                      const Spacer(),
                                                                                                                      InkWell(
                                                                                                                        onTap: () {
                                                                                                                          Navigator.pop(context);
                                                                                                                        },
                                                                                                                        child: SizeConfig().p12medC('Change', 12),
                                                                                                                      )
                                                                                                                    ],
                                                                                                                  ),
                                                                                                                ),
                                                                                                              ),
                                                                                                            ),

                                                                                                            const SizedBox(
                                                                                                              height: 24,
                                                                                                            ),

                                                                                                            // text input space //

                                                                                                            // Amount //
                                                                                                            Container(
                                                                                                              height: 56,
                                                                                                              width: 327,
                                                                                                              decoration: const BoxDecoration(
                                                                                                                  // color: style.divider,
                                                                                                                  border: Border(bottom: BorderSide(width: 1, color: style.divider))),
                                                                                                              margin: const EdgeInsets.all(0),
                                                                                                              child: Row(
                                                                                                                children: <Widget>[
                                                                                                                  Padding(
                                                                                                                    padding: const EdgeInsets.only(top: 16),
                                                                                                                    child: SizeConfig().p14regB('Amount', 14),
                                                                                                                  ),
                                                                                                                  Expanded(
                                                                                                                    child: TextField(
                                                                                                                      cursorColor: style.primary1,
                                                                                                                      keyboardType: TextInputType.emailAddress,
                                                                                                                      inputFormatters: [LengthLimitingTextInputFormatter(20)],
                                                                                                                      decoration: const InputDecoration(
                                                                                                                        border: InputBorder.none,
                                                                                                                        hintText: "Enter amount",
                                                                                                                        hintStyle: TextStyle(color: style.divider),
                                                                                                                        contentPadding: EdgeInsets.only(left: 16, top: 14),
                                                                                                                      ),
                                                                                                                      style: const TextStyle(
                                                                                                                        fontFamily: 'space Grotesk',
                                                                                                                        fontSize: 16.0,
                                                                                                                        color: style.text2,
                                                                                                                      ),
                                                                                                                    ),
                                                                                                                  )
                                                                                                                ],
                                                                                                              ),
                                                                                                            ),
                                                                                                            const SizedBox(
                                                                                                              height: 24,
                                                                                                            ),

                                                                                                            Column(
                                                                                                              crossAxisAlignment: CrossAxisAlignment.start,
                                                                                                              children: [
                                                                                                                SizeConfig().p12regB('Summary', 12),
                                                                                                                const SizedBox(
                                                                                                                  height: 6,
                                                                                                                ),
                                                                                                                SizedBox(
                                                                                                                  child: DecoratedBox(
                                                                                                                    decoration: BoxDecoration(color: style.white, borderRadius: BorderRadius.circular(12)),
                                                                                                                    child: Padding(
                                                                                                                      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 16),
                                                                                                                      child: Column(
                                                                                                                        crossAxisAlignment: CrossAxisAlignment.start,
                                                                                                                        children: [
                                                                                                                          // row 1 //
                                                                                                                          Row(
                                                                                                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                                                            children: [
                                                                                                                              SizeConfig().p14regB('Amount', 14),
                                                                                                                              SizeConfig().p14medB('N200,000', 14),
                                                                                                                            ],
                                                                                                                          ),

                                                                                                                          const SizedBox(
                                                                                                                            height: 8,
                                                                                                                          ),

                                                                                                                          // row 2 //
                                                                                                                          Row(
                                                                                                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                                                            children: [
                                                                                                                              SizeConfig().p14regB('Service Charge', 14),
                                                                                                                              SizeConfig().p14regR('N250.50', 14),
                                                                                                                            ],
                                                                                                                          ),
                                                                                                                          const SizedBox(
                                                                                                                            height: 4,
                                                                                                                          ),

                                                                                                                          const Divider(
                                                                                                                            color: style.divider,
                                                                                                                          ),

                                                                                                                          const SizedBox(
                                                                                                                            height: 2,
                                                                                                                          ),

                                                                                                                          // row 4 //
                                                                                                                          Row(
                                                                                                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                                                            children: [
                                                                                                                              SizeConfig().p14medB('Amount to be credited', 14),
                                                                                                                              SizeConfig().p14medB('N199,749.50', 14),
                                                                                                                            ],
                                                                                                                          ),
                                                                                                                        ],
                                                                                                                      ),
                                                                                                                    ),
                                                                                                                  ),
                                                                                                                ),
                                                                                                              ],
                                                                                                            ),

                                                                                                            const SizedBox(
                                                                                                              height: 100,
                                                                                                            ),

                                                                                                            // btn 2//
                                                                                                            SizedBox(
                                                                                                              width: 375,
                                                                                                              height: 48,
                                                                                                              child: TextButton(
                                                                                                                  style: ButtonStyle(
                                                                                                                    backgroundColor: MaterialStateProperty.all(style.primary1),
                                                                                                                    shape: MaterialStateProperty.all(
                                                                                                                      RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
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
                                                                                                                              decoration: const BoxDecoration(),
                                                                                                                              child: Padding(
                                                                                                                                padding: const EdgeInsets.only(left: 24, right: 24, top: 8, bottom: 60),
                                                                                                                                child: Column(
                                                                                                                                  mainAxisSize: MainAxisSize.min,
                                                                                                                                  children: [
                                                                                                                                    Row(
                                                                                                                                      mainAxisAlignment: MainAxisAlignment.end,
                                                                                                                                      children: [
                                                                                                                                        IconButton(
                                                                                                                                            onPressed: () {
                                                                                                                                              Navigator.of(context).pushReplacement(
                                                                                                                                                MaterialPageRoute(builder: (context) => const home2()),
                                                                                                                                              );
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
                                                                                                                                      "assets/email_verified.png",
                                                                                                                                      width: 300,
                                                                                                                                      height: 300,
                                                                                                                                    ),

                                                                                                                                    SizeConfig().p18medB('Yay!', 16),
                                                                                                                                    const SizedBox(
                                                                                                                                      height: 12,
                                                                                                                                    ),

                                                                                                                                    const Flexible(
                                                                                                                                      child: Text(
                                                                                                                                        'Congratulations! you have successfully funded your wallet with a sum of ₦199,749.50',
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
                                                                                                                                      height: 36,
                                                                                                                                    ),

                                                                                                                                    // transaction ID //
                                                                                                                                    SizeConfig().p14regB('Transaction ID: KP234567890', 14),

                                                                                                                                    const SizedBox(
                                                                                                                                      height: 60,
                                                                                                                                    ),
                                                                                                                                  ],
                                                                                                                                ),
                                                                                                                              ),
                                                                                                                            ),
                                                                                                                          );
                                                                                                                        });
                                                                                                                  },
                                                                                                                  child: SizeConfig().p16medW('Next', 16)),
                                                                                                            ),
                                                                                                            const SizedBox(
                                                                                                              height: 30,
                                                                                                            ),
                                                                                                          ],
                                                                                                        ),
                                                                                                      ),
                                                                                                    ),
                                                                                                  );
                                                                                                });
                                                                                          },
                                                                                          child: SizeConfig().p16medW('Next', 16)),
                                                                                    ),
                                                                                    const SizedBox(
                                                                                      height: 30,
                                                                                    ),
                                                                                  ],
                                                                                ),
                                                                              ),
                                                                            ),
                                                                          );
                                                                        });
                                                                  },
                                                                  child:
                                                                      DecoratedBox(
                                                                    decoration: BoxDecoration(
                                                                        color: style
                                                                            .white,
                                                                        borderRadius:
                                                                            BorderRadius.circular(12)),
                                                                    child:
                                                                        Padding(
                                                                      padding: const EdgeInsets
                                                                              .symmetric(
                                                                          horizontal:
                                                                              12,
                                                                          vertical:
                                                                              16),
                                                                      child:
                                                                          Row(
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.spaceBetween,
                                                                        children: [
                                                                          Row(
                                                                            children: [
                                                                              Image.asset('assets/Pocket.png', height: 40),
                                                                              const SizedBox(
                                                                                width: 14,
                                                                              ),
                                                                              Column(
                                                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                                                children: [
                                                                                  SizeConfig().p16medB('Card Payment', 16),
                                                                                  const SizedBox(
                                                                                    height: 6,
                                                                                  ),
                                                                                  SizeConfig().p12regB('via a debt/credit card', 12),
                                                                                ],
                                                                              ),
                                                                            ],
                                                                          ),
                                                                          const Icon(
                                                                            Icons.arrow_forward_ios_outlined,
                                                                            color:
                                                                                style.divider,
                                                                            size:
                                                                                16,
                                                                          )
                                                                        ],
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),

                                                              const SizedBox(
                                                                height: 24,
                                                              ),

                                                              // USSD //
                                                              SizedBox(
                                                                child: InkWell(
                                                                  onTap: () {
                                                                    showModalBottomSheet(
                                                                        shape:
                                                                            const RoundedRectangleBorder(
                                                                          borderRadius:
                                                                              BorderRadius.vertical(
                                                                            top:
                                                                                Radius.circular(20),
                                                                          ),
                                                                        ),
                                                                        backgroundColor:
                                                                            style
                                                                                .gray03,
                                                                        enableDrag:
                                                                            false,
                                                                        isScrollControlled:
                                                                            false,
                                                                        isDismissible:
                                                                            false,
                                                                        clipBehavior:
                                                                            Clip
                                                                                .antiAliasWithSaveLayer,
                                                                        context:
                                                                            context,
                                                                        builder:
                                                                            (BuildContext
                                                                                context) {
                                                                          return SizedBox(
                                                                            child:
                                                                                DecoratedBox(
                                                                              decoration: const BoxDecoration(),
                                                                              child: Padding(
                                                                                padding: const EdgeInsets.only(left: 24, right: 24, top: 24, bottom: 24),
                                                                                child: Column(
                                                                                  mainAxisSize: MainAxisSize.min,
                                                                                  children: [
                                                                                    Row(
                                                                                      mainAxisAlignment: MainAxisAlignment.end,
                                                                                      children: [
                                                                                        IconButton(
                                                                                            onPressed: () {
                                                                                              Navigator.of(context).pushReplacement(
                                                                                                MaterialPageRoute(builder: (context) => const home2()),
                                                                                              );
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

                                                                                    // header //

                                                                                    Column(
                                                                                      crossAxisAlignment: CrossAxisAlignment.start,
                                                                                      children: [
                                                                                        SizeConfig().p16medB('USSD Code', 16),
                                                                                        const SizedBox(
                                                                                          height: 8,
                                                                                        ),
                                                                                        SizeConfig().p12regB('Use the provided information below to fund your wallet', 12),
                                                                                        const SizedBox(
                                                                                          height: 36,
                                                                                        ),

                                                                                        // input field area //

                                                                                        // Amount //
                                                                                        Container(
                                                                                          height: 56,
                                                                                          width: 327,
                                                                                          decoration: const BoxDecoration(
                                                                                              // color: style.divider,
                                                                                              border: Border(bottom: BorderSide(width: 1, color: style.divider))),
                                                                                          margin: const EdgeInsets.all(0),
                                                                                          child: Row(
                                                                                            children: <Widget>[
                                                                                              Padding(
                                                                                                padding: const EdgeInsets.only(top: 16),
                                                                                                child: SizeConfig().p14regB('Amount', 14),
                                                                                              ),
                                                                                              Expanded(
                                                                                                child: TextField(
                                                                                                  cursorColor: style.primary1,
                                                                                                  keyboardType: TextInputType.emailAddress,
                                                                                                  inputFormatters: [
                                                                                                    LengthLimitingTextInputFormatter(16)
                                                                                                  ],
                                                                                                  decoration: const InputDecoration(
                                                                                                    border: InputBorder.none,
                                                                                                    hintText: "Enter amount",
                                                                                                    hintStyle: TextStyle(color: style.divider),
                                                                                                    contentPadding: EdgeInsets.only(left: 34, top: 14),
                                                                                                  ),
                                                                                                  style: const TextStyle(
                                                                                                    fontFamily: 'space Grotesk',
                                                                                                    fontSize: 16.0,
                                                                                                    color: style.text2,
                                                                                                  ),
                                                                                                ),
                                                                                              )
                                                                                            ],
                                                                                          ),
                                                                                        ),

                                                                                        const SizedBox(height: 16),

                                                                                        // select bank //

                                                                                        Container(
                                                                                          height: 56,
                                                                                          width: 327,
                                                                                          decoration: const BoxDecoration(
                                                                                              // color: style.divider,
                                                                                              border: Border(bottom: BorderSide(width: 1, color: style.divider))),
                                                                                          margin: const EdgeInsets.all(0),
                                                                                          child: Row(
                                                                                            children: <Widget>[
                                                                                              Padding(
                                                                                                padding: const EdgeInsets.only(top: 16),
                                                                                                child: SizeConfig().p14regB('Bank', 14),
                                                                                              ),
                                                                                              Expanded(
                                                                                                child: TextField(
                                                                                                  onTap: () {
                                                                                                    // Select bank modal sheet //
                                                                                                    showModalBottomSheet(
                                                                                                        isDismissible: false,
                                                                                                        enableDrag: false,
                                                                                                        isScrollControlled: true,
                                                                                                        useSafeArea: false,
                                                                                                        backgroundColor: style.gray03,
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
                                                                                                              decoration: const BoxDecoration(),
                                                                                                              child: Padding(
                                                                                                                padding: const EdgeInsets.only(left: 24, right: 24, top: 8, bottom: 60),
                                                                                                                child: Column(
                                                                                                                  mainAxisSize: MainAxisSize.min,
                                                                                                                  children: [
                                                                                                                    // header //
                                                                                                                    Row(
                                                                                                                      mainAxisAlignment: MainAxisAlignment.end,
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
                                                                                                                      height: 40,
                                                                                                                    ),

                                                                                                                    // search bank //

                                                                                                                    Container(
                                                                                                                      height: 44,
                                                                                                                      width: 327,
                                                                                                                      decoration: BoxDecoration(color: style.white, borderRadius: BorderRadius.circular(8), border: Border.all(color: style.divider.withOpacity(0.5))),
                                                                                                                      child: Padding(
                                                                                                                        padding: const EdgeInsets.only(left: 16, bottom: 12, top: 12),
                                                                                                                        child: Row(
                                                                                                                          children: <Widget>[
                                                                                                                            Padding(
                                                                                                                                padding: const EdgeInsets.only(top: 0),
                                                                                                                                child: Image.asset(
                                                                                                                                  'assets/search.png',
                                                                                                                                  height: 20,
                                                                                                                                )),
                                                                                                                            Expanded(
                                                                                                                              child: TextField(
                                                                                                                                cursorColor: style.primary1,
                                                                                                                                keyboardType: TextInputType.emailAddress,
                                                                                                                                inputFormatters: [LengthLimitingTextInputFormatter(16)],
                                                                                                                                decoration: const InputDecoration(
                                                                                                                                  border: InputBorder.none,
                                                                                                                                  hintText: "Search for bank",
                                                                                                                                  hintStyle: TextStyle(color: style.divider),
                                                                                                                                  contentPadding: EdgeInsets.only(left: 16, bottom: 10),
                                                                                                                                ),
                                                                                                                                style: const TextStyle(
                                                                                                                                  fontFamily: 'space Grotesk',
                                                                                                                                  fontSize: 16.0,
                                                                                                                                  color: style.text2,
                                                                                                                                ),
                                                                                                                              ),
                                                                                                                            )
                                                                                                                          ],
                                                                                                                        ),
                                                                                                                      ),
                                                                                                                    ),

                                                                                                                    const SizedBox(
                                                                                                                      height: 36,
                                                                                                                    ),

                                                                                                                    // list of banks //

                                                                                                                    Column(
                                                                                                                      crossAxisAlignment: CrossAxisAlignment.start,
                                                                                                                      children: [
                                                                                                                        // access bank //
                                                                                                                        InkWell(
                                                                                                                          onTap: () {
                                                                                                                            // preview selectedbank //

                                                                                                                            showModalBottomSheet(
                                                                                                                                isDismissible: false,
                                                                                                                                enableDrag: false,
                                                                                                                                isScrollControlled: true,
                                                                                                                                useSafeArea: false,
                                                                                                                                backgroundColor: style.gray03,
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
                                                                                                                                      decoration: const BoxDecoration(),
                                                                                                                                      child: Padding(
                                                                                                                                        padding: const EdgeInsets.only(left: 24, right: 24, top: 8, bottom: 60),
                                                                                                                                        child: Column(
                                                                                                                                          mainAxisSize: MainAxisSize.min,
                                                                                                                                          children: [
                                                                                                                                            // header //
                                                                                                                                            Row(
                                                                                                                                              mainAxisAlignment: MainAxisAlignment.end,
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
                                                                                                                                              height: 40,
                                                                                                                                            ),

                                                                                                                                            // Amount //
                                                                                                                                            Container(
                                                                                                                                              height: 56,
                                                                                                                                              width: 327,
                                                                                                                                              decoration: const BoxDecoration(
                                                                                                                                                  // color: style.divider,
                                                                                                                                                  border: Border(bottom: BorderSide(width: 1, color: style.divider))),
                                                                                                                                              margin: const EdgeInsets.all(0),
                                                                                                                                              child: Row(
                                                                                                                                                children: <Widget>[
                                                                                                                                                  Padding(
                                                                                                                                                    padding: const EdgeInsets.only(top: 16),
                                                                                                                                                    child: SizeConfig().p14regB('Amount', 14),
                                                                                                                                                  ),
                                                                                                                                                  Expanded(
                                                                                                                                                    child: TextField(
                                                                                                                                                      cursorColor: style.primary1,
                                                                                                                                                      keyboardType: TextInputType.emailAddress,
                                                                                                                                                      inputFormatters: [LengthLimitingTextInputFormatter(16)],
                                                                                                                                                      decoration: const InputDecoration(
                                                                                                                                                        border: InputBorder.none,
                                                                                                                                                        hintText: "₦200,000",
                                                                                                                                                        hintStyle: TextStyle(color: style.text2),
                                                                                                                                                        contentPadding: EdgeInsets.only(left: 34, top: 14),
                                                                                                                                                      ),
                                                                                                                                                      style: const TextStyle(
                                                                                                                                                        fontFamily: 'space Grotesk',
                                                                                                                                                        fontSize: 16.0,
                                                                                                                                                        color: style.text2,
                                                                                                                                                      ),
                                                                                                                                                    ),
                                                                                                                                                  )
                                                                                                                                                ],
                                                                                                                                              ),
                                                                                                                                            ),

                                                                                                                                            const SizedBox(
                                                                                                                                              height: 24,
                                                                                                                                            ),

                                                                                                                                            // Bank //
                                                                                                                                            Container(
                                                                                                                                              height: 56,
                                                                                                                                              width: 327,
                                                                                                                                              decoration: const BoxDecoration(
                                                                                                                                                  // color: style.divider,
                                                                                                                                                  border: Border(bottom: BorderSide(width: 1, color: style.divider))),
                                                                                                                                              child: Row(
                                                                                                                                                children: <Widget>[
                                                                                                                                                  Padding(
                                                                                                                                                    padding: const EdgeInsets.only(
                                                                                                                                                      top: 16,
                                                                                                                                                    ),
                                                                                                                                                    child: SizeConfig().p14regB('Bank', 14),
                                                                                                                                                  ),
                                                                                                                                                  Expanded(
                                                                                                                                                      child: Padding(
                                                                                                                                                    padding: const EdgeInsets.only(left: 48),
                                                                                                                                                    child: InkWell(
                                                                                                                                                      onTap: () {},
                                                                                                                                                      child: Row(
                                                                                                                                                        mainAxisAlignment: MainAxisAlignment.start,
                                                                                                                                                        children: [
                                                                                                                                                          Image.asset(
                                                                                                                                                            'assets/Gtb.png',
                                                                                                                                                            height: 32,
                                                                                                                                                          ),
                                                                                                                                                          const SizedBox(
                                                                                                                                                            width: 8,
                                                                                                                                                          ),
                                                                                                                                                          SizeConfig().p16regB('Gtb Bank', 14),
                                                                                                                                                        ],
                                                                                                                                                      ),
                                                                                                                                                    ),
                                                                                                                                                  )),
                                                                                                                                                  SizedBox(
                                                                                                                                                    child: Padding(
                                                                                                                                                      padding: const EdgeInsets.only(top: 16),
                                                                                                                                                      child: Image.asset(
                                                                                                                                                        'assets/icon (down).png',
                                                                                                                                                        height: 32,
                                                                                                                                                        color: style.text2,
                                                                                                                                                      ),
                                                                                                                                                    ),
                                                                                                                                                  )
                                                                                                                                                ],
                                                                                                                                              ),
                                                                                                                                            ),
                                                                                                                                            const SizedBox(
                                                                                                                                              height: 80,
                                                                                                                                            ),

                                                                                                                                            // note //

                                                                                                                                            Align(
                                                                                                                                                alignment: Alignment.center,
                                                                                                                                                child: Column(
                                                                                                                                                  crossAxisAlignment: CrossAxisAlignment.center,
                                                                                                                                                  children: [
                                                                                                                                                    SizeConfig().p12regB('Dial the digit below on your mobile device', 12),
                                                                                                                                                    const SizedBox(
                                                                                                                                                      height: 8,
                                                                                                                                                    ),
                                                                                                                                                    SizeConfig().p24medB('*737*10*200,000*416#', 24),
                                                                                                                                                    const SizedBox(
                                                                                                                                                      height: 16,
                                                                                                                                                    ),
                                                                                                                                                    InkWell(
                                                                                                                                                      onTap: () {
                                                                                                                                                        // flutter toast //
                                                                                                                                                        Fluttertoast.showToast(msg: 'copied!', toastLength: Toast.LENGTH_SHORT, gravity: ToastGravity.TOP, timeInSecForIosWeb: 4, fontSize: 14, backgroundColor: style.success, textColor: style.white);
                                                                                                                                                      },
                                                                                                                                                      child: SizedBox(
                                                                                                                                                        width: 65,
                                                                                                                                                        child: DecoratedBox(
                                                                                                                                                          decoration: BoxDecoration(color: style.primary1.withOpacity(0.08), borderRadius: BorderRadius.circular(4)),
                                                                                                                                                          child: Padding(
                                                                                                                                                            padding: const EdgeInsets.only(left: 4, right: 4, top: 4, bottom: 4),
                                                                                                                                                            child: Row(
                                                                                                                                                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                                                                                                                                                              children: [
                                                                                                                                                                const Icon(
                                                                                                                                                                  Icons.copy_rounded,
                                                                                                                                                                  color: style.primary1,
                                                                                                                                                                  size: 16,
                                                                                                                                                                ),
                                                                                                                                                                SizeConfig().p12medC('Copy', 12),
                                                                                                                                                              ],
                                                                                                                                                            ),
                                                                                                                                                          ),
                                                                                                                                                        ),
                                                                                                                                                      ),
                                                                                                                                                    )
                                                                                                                                                  ],
                                                                                                                                                )),

                                                                                                                                            const SizedBox(height: 82),

                                                                                                                                            // btn //
                                                                                                                                            SizedBox(
                                                                                                                                              width: 325,
                                                                                                                                              height: 48,
                                                                                                                                              child: TextButton(
                                                                                                                                                  style: ButtonStyle(
                                                                                                                                                    backgroundColor: MaterialStateProperty.all(style.primary1),
                                                                                                                                                    shape: MaterialStateProperty.all(
                                                                                                                                                      RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                                                                                                                                                    ),
                                                                                                                                                  ),
                                                                                                                                                  onPressed: () {
                                                                                                                                                    // flutter toast //
                                                                                                                                                    Fluttertoast.showToast(msg: 'Coo! your wallet will be credited once this is confirmed!', toastLength: Toast.LENGTH_SHORT, gravity: ToastGravity.TOP, timeInSecForIosWeb: 4, fontSize: 14, backgroundColor: style.success, textColor: style.white);
                                                                                                                                                  },
                                                                                                                                                  child: SizeConfig().p16medW('Transfer Done', 16)),
                                                                                                                                            ),

                                                                                                                                            const SizedBox(
                                                                                                                                              height: 4,
                                                                                                                                            ),
                                                                                                                                          ],
                                                                                                                                        ),
                                                                                                                                      ),
                                                                                                                                    ),
                                                                                                                                  );
                                                                                                                                });
                                                                                                                          },
                                                                                                                          child: Row(
                                                                                                                            mainAxisAlignment: MainAxisAlignment.start,
                                                                                                                            children: [
                                                                                                                              Image.asset(
                                                                                                                                'assets/AccessBank.png',
                                                                                                                                height: 40,
                                                                                                                              ),
                                                                                                                              const SizedBox(
                                                                                                                                width: 16,
                                                                                                                              ),
                                                                                                                              SizeConfig().p16regB('Access Bank', 14),
                                                                                                                            ],
                                                                                                                          ),
                                                                                                                        ),

                                                                                                                        const Divider(
                                                                                                                          color: style.divider,
                                                                                                                        ),

                                                                                                                        const SizedBox(height: 8),

                                                                                                                        // FCMB bank //
                                                                                                                        InkWell(
                                                                                                                          onTap: () {},
                                                                                                                          child: Row(
                                                                                                                            mainAxisAlignment: MainAxisAlignment.start,
                                                                                                                            children: [
                                                                                                                              Image.asset(
                                                                                                                                'assets/FCMB.png',
                                                                                                                                height: 40,
                                                                                                                              ),
                                                                                                                              const SizedBox(
                                                                                                                                width: 16,
                                                                                                                              ),
                                                                                                                              SizeConfig().p16regB('FCMB Bank', 14),
                                                                                                                            ],
                                                                                                                          ),
                                                                                                                        ),

                                                                                                                        const Divider(
                                                                                                                          color: style.divider,
                                                                                                                        ),

                                                                                                                        const SizedBox(height: 8),

                                                                                                                        // First bank //
                                                                                                                        InkWell(
                                                                                                                          onTap: () {},
                                                                                                                          child: Row(
                                                                                                                            mainAxisAlignment: MainAxisAlignment.start,
                                                                                                                            children: [
                                                                                                                              Image.asset(
                                                                                                                                'assets/FirstBank.png',
                                                                                                                                height: 40,
                                                                                                                              ),
                                                                                                                              const SizedBox(
                                                                                                                                width: 16,
                                                                                                                              ),
                                                                                                                              SizeConfig().p16regB('First Bank', 14),
                                                                                                                            ],
                                                                                                                          ),
                                                                                                                        ),

                                                                                                                        const Divider(
                                                                                                                          color: style.divider,
                                                                                                                        ),

                                                                                                                        const SizedBox(height: 8),

                                                                                                                        // Gtb bank //
                                                                                                                        InkWell(
                                                                                                                          onTap: () {},
                                                                                                                          child: Row(
                                                                                                                            mainAxisAlignment: MainAxisAlignment.start,
                                                                                                                            children: [
                                                                                                                              Image.asset(
                                                                                                                                'assets/Gtb.png',
                                                                                                                                height: 40,
                                                                                                                              ),
                                                                                                                              const SizedBox(
                                                                                                                                width: 16,
                                                                                                                              ),
                                                                                                                              SizeConfig().p16regB('Gtb Bank', 14),
                                                                                                                            ],
                                                                                                                          ),
                                                                                                                        ),

                                                                                                                        const Divider(
                                                                                                                          color: style.divider,
                                                                                                                        ),

                                                                                                                        const SizedBox(height: 8),

                                                                                                                        // Polaris bank //
                                                                                                                        InkWell(
                                                                                                                          onTap: () {},
                                                                                                                          child: Row(
                                                                                                                            mainAxisAlignment: MainAxisAlignment.start,
                                                                                                                            children: [
                                                                                                                              Image.asset(
                                                                                                                                'assets/Polaris.png',
                                                                                                                                height: 40,
                                                                                                                              ),
                                                                                                                              const SizedBox(
                                                                                                                                width: 16,
                                                                                                                              ),
                                                                                                                              SizeConfig().p16regB('Polaris Bank', 14),
                                                                                                                            ],
                                                                                                                          ),
                                                                                                                        ),

                                                                                                                        const Divider(
                                                                                                                          color: style.divider,
                                                                                                                        ),

                                                                                                                        const SizedBox(height: 8),

                                                                                                                        // Zenith bank //
                                                                                                                        InkWell(
                                                                                                                          onTap: () {},
                                                                                                                          child: Row(
                                                                                                                            mainAxisAlignment: MainAxisAlignment.start,
                                                                                                                            children: [
                                                                                                                              Image.asset(
                                                                                                                                'assets/Zenith.png',
                                                                                                                                height: 40,
                                                                                                                              ),
                                                                                                                              const SizedBox(
                                                                                                                                width: 16,
                                                                                                                              ),
                                                                                                                              SizeConfig().p16regB('Zenith Bank', 14),
                                                                                                                            ],
                                                                                                                          ),
                                                                                                                        ),

                                                                                                                        const Divider(
                                                                                                                          color: style.divider,
                                                                                                                        ),
                                                                                                                      ],
                                                                                                                    ),

                                                                                                                    const SizedBox(
                                                                                                                      height: 24,
                                                                                                                    ),
                                                                                                                  ],
                                                                                                                ),
                                                                                                              ),
                                                                                                            ),
                                                                                                          );
                                                                                                        });
                                                                                                  },
                                                                                                  cursorColor: style.primary1,
                                                                                                  keyboardType: TextInputType.visiblePassword,
                                                                                                  inputFormatters: [
                                                                                                    LengthLimitingTextInputFormatter(8)
                                                                                                  ],
                                                                                                  decoration: const InputDecoration(
                                                                                                    border: InputBorder.none,
                                                                                                    hintText: "Select bank type",
                                                                                                    hintStyle: TextStyle(color: style.divider),
                                                                                                    contentPadding: EdgeInsets.only(left: 50, top: 14),
                                                                                                  ),
                                                                                                  style: const TextStyle(
                                                                                                    fontFamily: 'space Grotesk',
                                                                                                    fontSize: 16.0,
                                                                                                    color: style.text2,
                                                                                                  ),
                                                                                                ),
                                                                                              ),
                                                                                              SizedBox(
                                                                                                child: Padding(
                                                                                                  padding: const EdgeInsets.only(top: 16),
                                                                                                  child: Image.asset(
                                                                                                    'assets/icon (down).png',
                                                                                                    height: 32,
                                                                                                    color: style.text2,
                                                                                                  ),
                                                                                                ),
                                                                                              )
                                                                                            ],
                                                                                          ),
                                                                                        ),

                                                                                        // new space //
                                                                                        const SizedBox(
                                                                                          height: 80,
                                                                                        ),
                                                                                      ],
                                                                                    )
                                                                                  ],
                                                                                ),
                                                                              ),
                                                                            ),
                                                                          );
                                                                        });
                                                                  },
                                                                  child:
                                                                      DecoratedBox(
                                                                    decoration: BoxDecoration(
                                                                        color: style
                                                                            .white,
                                                                        borderRadius:
                                                                            BorderRadius.circular(12)),
                                                                    child:
                                                                        Padding(
                                                                      padding: const EdgeInsets
                                                                              .symmetric(
                                                                          horizontal:
                                                                              12,
                                                                          vertical:
                                                                              16),
                                                                      child:
                                                                          Row(
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.spaceBetween,
                                                                        children: [
                                                                          Row(
                                                                            children: [
                                                                              Image.asset('assets/USSD.png', height: 40),
                                                                              const SizedBox(
                                                                                width: 14,
                                                                              ),
                                                                              Column(
                                                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                                                children: [
                                                                                  SizeConfig().p16medB('USSD', 16),
                                                                                  const SizedBox(
                                                                                    height: 6,
                                                                                  ),
                                                                                  SizeConfig().p12regB('via a bank code', 12),
                                                                                ],
                                                                              ),
                                                                            ],
                                                                          ),
                                                                          const Icon(
                                                                            Icons.arrow_forward_ios_outlined,
                                                                            color:
                                                                                style.divider,
                                                                            size:
                                                                                16,
                                                                          )
                                                                        ],
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                          )
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                );
                                              });
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
                          Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                SizeConfig().p16medB('Recent Transaction', 16),
                                InkWell(
                                  onTap: () {},
                                  child: SizeConfig().p14medC('See All', 14),
                                )
                              ]),
                          const SizedBox(
                            height: 16,
                          ),

                          // card info  01 //

                          SizedBox(
                            // // width: 375,
                            // height: 80,
                            child: InkWell(
                              onTap: () {
                                showModalBottomSheet(
                                    enableDrag: false,
                                    isDismissible: false,
                                    isScrollControlled: true,
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
                                        // height: 1200,
                                        child: DecoratedBox(
                                          decoration: const BoxDecoration(),
                                          child: Padding(
                                            padding: const EdgeInsets.only(
                                                left: 24,
                                                right: 24,
                                                top: 16,
                                                bottom: 8),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.min,
                                              // crossAxisAlignment:
                                              //     CrossAxisAlignment.center,
                                              children: [
                                                Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    SizeConfig().p16medB(
                                                        'Transaction Receipt',
                                                        14),
                                                    IconButton(
                                                        onPressed: () {
                                                          Navigator.pop(
                                                              context);
                                                        },
                                                        icon: const Icon(
                                                          Icons.close,
                                                          color: style.divider,
                                                        ))
                                                  ],
                                                ),
                                                const SizedBox(
                                                  height: 24,
                                                ),
                                                Image.asset(
                                                  'assets/top-Up.png',
                                                  height: 70,
                                                ),
                                                const SizedBox(
                                                  height: 16,
                                                ),
                                                SizeConfig()
                                                    .p18medB('N199,749.50', 18),
                                                const SizedBox(
                                                  height: 8,
                                                ),
                                                SizeConfig().p12regB(
                                                    'Feb 19,2023 at 02:30pm',
                                                    12),
                                                const SizedBox(
                                                  height: 60,
                                                ),
                                                Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  children: [
                                                    Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        SizeConfig().p14regB(
                                                            'Bank', 14),
                                                        SizeConfig().p14regB(
                                                            'Serenity Bank',
                                                            14),
                                                      ],
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
                                                    Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        SizeConfig().p14regB(
                                                            'Recipient', 14),
                                                        SizeConfig().p14regB(
                                                            'Phos Chronos', 14),
                                                      ],
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
                                                    Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        SizeConfig().p14regB(
                                                            'Status', 14),
                                                        SizedBox(
                                                          width: 90,
                                                          height: 28,
                                                          child: DecoratedBox(
                                                              decoration: BoxDecoration(
                                                                  color: style
                                                                      .success,
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              6)),
                                                              child: Padding(
                                                                padding:
                                                                    const EdgeInsets
                                                                            .only(
                                                                        left: 8,
                                                                        right:
                                                                            8,
                                                                        top: 6),
                                                                child: SizeConfig()
                                                                    .p14medW(
                                                                        'Processed',
                                                                        14),
                                                              )),
                                                        ),
                                                      ],
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
                                                    Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        SizeConfig().p14regB(
                                                            'Transaction ID',
                                                            14),
                                                        SizeConfig().p14regB(
                                                            'KP234567890', 14),
                                                      ],
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
                                                    Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        SizeConfig().p14regB(
                                                            'Charges', 14),
                                                        SizeConfig().p14regB(
                                                            'N250.50', 14),
                                                      ],
                                                    ),
                                                  ],
                                                ),
                                                const SizedBox(
                                                  height: 40,
                                                ),
                                                TextButton(
                                                    onPressed: () {},
                                                    child: SizeConfig().p16medC(
                                                        'Download Receipt',
                                                        16)),
                                                const SizedBox(
                                                  height: 30,
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      );
                                    });
                              },
                              child: DecoratedBox(
                                decoration: BoxDecoration(
                                    color: style.white,
                                    borderRadius: BorderRadius.circular(12)),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 12, vertical: 16),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: [
                                          Image.asset('assets/TopUp_Wallet.png',
                                              height: 28),
                                          const SizedBox(
                                            width: 14,
                                          ),
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              SizeConfig()
                                                  .p16medB('Wallet Top Up', 16),
                                              const SizedBox(
                                                height: 8,
                                              ),
                                              SizeConfig().p12regB(
                                                  'Feb 17, 2023 at 02:30pm',
                                                  12),
                                            ],
                                          ),
                                        ],
                                      ),
                                      SizeConfig().p16medB('N199,749.50', 14),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),

                          const SizedBox(
                            height: 16,
                          ),

                          // card info  02 //

                          SizedBox(
                            // // width: 375,
                            // height: 80,
                            child: InkWell(
                              onTap: () {
                                showModalBottomSheet(
                                    enableDrag: false,
                                    isDismissible: false,
                                    isScrollControlled: true,
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
                                        // height: 1200,
                                        child: DecoratedBox(
                                          decoration: const BoxDecoration(),
                                          child: Padding(
                                            padding: const EdgeInsets.only(
                                                left: 24,
                                                right: 24,
                                                top: 16,
                                                bottom: 8),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.min,
                                              // crossAxisAlignment:
                                              //     CrossAxisAlignment.center,
                                              children: [
                                                Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    SizeConfig().p16medB(
                                                        'Transaction Receipt',
                                                        14),
                                                    IconButton(
                                                        onPressed: () {
                                                          Navigator.pop(
                                                              context);
                                                        },
                                                        icon: const Icon(
                                                          Icons.close,
                                                          color: style.divider,
                                                        ))
                                                  ],
                                                ),
                                                const SizedBox(
                                                  height: 24,
                                                ),
                                                Image.asset(
                                                  'assets/top-Up.png',
                                                  height: 70,
                                                ),
                                                const SizedBox(
                                                  height: 16,
                                                ),
                                                SizeConfig()
                                                    .p18medB('N20,000.00', 18),
                                                const SizedBox(
                                                  height: 8,
                                                ),
                                                SizeConfig().p12regB(
                                                    'Feb 17,2023 at 02:30pm',
                                                    12),
                                                const SizedBox(
                                                  height: 60,
                                                ),
                                                Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  children: [
                                                    Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        SizeConfig().p14regB(
                                                            'Bank', 14),
                                                        SizeConfig().p14regB(
                                                            'Serenity Bank',
                                                            14),
                                                      ],
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
                                                    Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        SizeConfig().p14regB(
                                                            'Recipient', 14),
                                                        SizeConfig().p14regB(
                                                            'Phos Chronos', 14),
                                                      ],
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
                                                    Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        SizeConfig().p14regB(
                                                            'Status', 14),
                                                        SizedBox(
                                                          width: 90,
                                                          height: 28,
                                                          child: DecoratedBox(
                                                              decoration: BoxDecoration(
                                                                  color: style
                                                                      .success,
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              6)),
                                                              child: Padding(
                                                                padding:
                                                                    const EdgeInsets
                                                                            .only(
                                                                        left: 8,
                                                                        right:
                                                                            8,
                                                                        top: 6),
                                                                child: SizeConfig()
                                                                    .p14medW(
                                                                        'Processed',
                                                                        14),
                                                              )),
                                                        ),
                                                      ],
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
                                                    Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        SizeConfig().p14regB(
                                                            'Transaction ID',
                                                            14),
                                                        SizeConfig().p14regB(
                                                            'KP234567890', 14),
                                                      ],
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
                                                    Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        SizeConfig().p14regB(
                                                            'Charges', 14),
                                                        SizeConfig().p14regB(
                                                            'N250.50', 14),
                                                      ],
                                                    ),
                                                  ],
                                                ),
                                                const SizedBox(
                                                  height: 40,
                                                ),
                                                TextButton(
                                                    onPressed: () {},
                                                    child: SizeConfig().p16medC(
                                                        'Download Receipt',
                                                        16)),
                                                const SizedBox(
                                                  height: 30,
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      );
                                    });
                              },
                              child: DecoratedBox(
                                decoration: BoxDecoration(
                                    color: style.white,
                                    borderRadius: BorderRadius.circular(12)),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 12, vertical: 16),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: [
                                          Image.asset('assets/TopUp_Wallet.png',
                                              height: 28),
                                          const SizedBox(
                                            width: 14,
                                          ),
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              SizeConfig()
                                                  .p16medB('Wallet Top Up', 16),
                                              const SizedBox(
                                                height: 8,
                                              ),
                                              SizeConfig().p12regB(
                                                  'Feb 17, 2023 at 02:30pm',
                                                  12),
                                            ],
                                          ),
                                        ],
                                      ),
                                      SizeConfig().p16medB('N20,0000.00', 14),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
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
