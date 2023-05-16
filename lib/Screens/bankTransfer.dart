import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:wisewallet/Screens/home2.dart';
import '../classes/media_style.dart';
import '../classes/style.dart';

class BankTransfer extends StatefulWidget {
  const BankTransfer({super.key});

  @override
  State<BankTransfer> createState() => _BankTransferState();
}

class _BankTransferState extends State<BankTransfer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appbar//

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
                              builder: (context) => const home2()));
                    },
                    icon: const Icon(
                      Icons.arrow_back,
                      color: style.black,
                      size: 28,
                    )),
                const SizedBox(width: 60),
                SizeConfig().p18medB('Bank Account', 18),
              ],
            ),
          )),
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
                  // local bank tag //
                  SizedBox(
                    width: 100,
                    height: 32,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                          color: style.primary1.withOpacity(0.08),
                          borderRadius: BorderRadius.circular(4)),
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 4, right: 4, top: 4, bottom: 4),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            SizeConfig().p14medC('Local Bank', 12),
                          ],
                        ),
                      ),
                    ),
                  ),

                  const SizedBox(
                    height: 24,
                  ),

                  // note //
                  SizeConfig().p14regB(
                      'Complete the steps belwo to transfer from your wallet',
                      14),

                  // action //

                  // Amount //
                  Container(
                    height: 56,
                    width: 327,
                    decoration: const BoxDecoration(
                        // color: style.divider,
                        border: Border(
                            bottom:
                                BorderSide(width: 1, color: style.divider))),
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
                              LengthLimitingTextInputFormatter(20)
                            ],
                            decoration: const InputDecoration(
                              border: InputBorder.none,
                              hintText: "Enter amount",
                              hintStyle: TextStyle(color: style.divider),
                              contentPadding:
                                  EdgeInsets.only(left: 16, top: 14),
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

                  // const SizedBox(
                  //   height: 24,
                  // ),

                  // banks //

                  Container(
                    height: 56,
                    width: 327,
                    decoration: const BoxDecoration(
                        // color: style.divider,
                        border: Border(
                            bottom:
                                BorderSide(width: 1, color: style.divider))),
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
                                          padding: const EdgeInsets.only(
                                              left: 24,
                                              right: 24,
                                              top: 8,
                                              bottom: 60),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              // header //
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
                                                height: 40,
                                              ),

                                              // search bank //

                                              Container(
                                                height: 44,
                                                width: 327,
                                                decoration: BoxDecoration(
                                                    color: style.white,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8),
                                                    border: Border.all(
                                                        color: style.divider
                                                            .withOpacity(0.5))),
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 16,
                                                          bottom: 12,
                                                          top: 12),
                                                  child: Row(
                                                    children: <Widget>[
                                                      Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                  .only(top: 0),
                                                          child: Image.asset(
                                                            'assets/search.png',
                                                            height: 20,
                                                          )),
                                                      Expanded(
                                                        child: TextField(
                                                          cursorColor:
                                                              style.primary1,
                                                          keyboardType:
                                                              TextInputType
                                                                  .emailAddress,
                                                          inputFormatters: [
                                                            LengthLimitingTextInputFormatter(
                                                                16)
                                                          ],
                                                          decoration:
                                                              const InputDecoration(
                                                            border: InputBorder
                                                                .none,
                                                            hintText:
                                                                "Search for bank",
                                                            hintStyle: TextStyle(
                                                                color: style
                                                                    .divider),
                                                            contentPadding:
                                                                EdgeInsets.only(
                                                                    left: 16,
                                                                    bottom: 10),
                                                          ),
                                                          style:
                                                              const TextStyle(
                                                            fontFamily:
                                                                'space Grotesk',
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
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  // access bank //
                                                  InkWell(
                                                    onTap: () {
                                                      // preview selectedbank //

                                                      showModalBottomSheet(
                                                          isDismissible: false,
                                                          enableDrag: false,
                                                          isScrollControlled:
                                                              true,
                                                          useSafeArea: false,
                                                          backgroundColor:
                                                              style.gray03,
                                                          shape:
                                                              const RoundedRectangleBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .vertical(
                                                              top: Radius
                                                                  .circular(20),
                                                            ),
                                                          ),
                                                          clipBehavior: Clip
                                                              .antiAliasWithSaveLayer,
                                                          context: context,
                                                          builder: (BuildContext
                                                              context) {
                                                            return SizedBox(
                                                              // height: 1000,
                                                              child:
                                                                  DecoratedBox(
                                                                decoration:
                                                                    const BoxDecoration(),
                                                                child: Padding(
                                                                  padding: const EdgeInsets
                                                                          .only(
                                                                      left: 24,
                                                                      right: 24,
                                                                      top: 8,
                                                                      bottom:
                                                                          60),
                                                                  child: Column(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .min,
                                                                    children: [
                                                                      // header //
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
                                                                        height:
                                                                            40,
                                                                      ),

                                                                      // Amount //
                                                                      Container(
                                                                        height:
                                                                            56,
                                                                        width:
                                                                            327,
                                                                        decoration: const BoxDecoration(
                                                                            // color: style.divider,
                                                                            border: Border(bottom: BorderSide(width: 1, color: style.divider))),
                                                                        margin:
                                                                            const EdgeInsets.all(0),
                                                                        child:
                                                                            Row(
                                                                          children: <
                                                                              Widget>[
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

                                                                      // Bank //
                                                                      Container(
                                                                        height:
                                                                            56,
                                                                        width:
                                                                            327,
                                                                        decoration: const BoxDecoration(
                                                                            // color: style.divider,
                                                                            border: Border(bottom: BorderSide(width: 1, color: style.divider))),
                                                                        child:
                                                                            Row(
                                                                          children: <
                                                                              Widget>[
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
                                                                        height:
                                                                            80,
                                                                      ),

                                                                      // note //

                                                                      Align(
                                                                          alignment: Alignment
                                                                              .center,
                                                                          child:
                                                                              Column(
                                                                            crossAxisAlignment:
                                                                                CrossAxisAlignment.center,
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

                                                                      const SizedBox(
                                                                          height:
                                                                              82),

                                                                      // btn //
                                                                      SizedBox(
                                                                        width:
                                                                            325,
                                                                        height:
                                                                            48,
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
                                                                        height:
                                                                            4,
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ),
                                                              ),
                                                            );
                                                          });
                                                    },
                                                    child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      children: [
                                                        Image.asset(
                                                          'assets/AccessBank.png',
                                                          height: 40,
                                                        ),
                                                        const SizedBox(
                                                          width: 16,
                                                        ),
                                                        SizeConfig().p16regB(
                                                            'Access Bank', 14),
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
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      children: [
                                                        Image.asset(
                                                          'assets/FCMB.png',
                                                          height: 40,
                                                        ),
                                                        const SizedBox(
                                                          width: 16,
                                                        ),
                                                        SizeConfig().p16regB(
                                                            'FCMB Bank', 14),
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
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      children: [
                                                        Image.asset(
                                                          'assets/FirstBank.png',
                                                          height: 40,
                                                        ),
                                                        const SizedBox(
                                                          width: 16,
                                                        ),
                                                        SizeConfig().p16regB(
                                                            'First Bank', 14),
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
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      children: [
                                                        Image.asset(
                                                          'assets/Gtb.png',
                                                          height: 40,
                                                        ),
                                                        const SizedBox(
                                                          width: 16,
                                                        ),
                                                        SizeConfig().p16regB(
                                                            'Gtb Bank', 14),
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
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      children: [
                                                        Image.asset(
                                                          'assets/Polaris.png',
                                                          height: 40,
                                                        ),
                                                        const SizedBox(
                                                          width: 16,
                                                        ),
                                                        SizeConfig().p16regB(
                                                            'Polaris Bank', 14),
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
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      children: [
                                                        Image.asset(
                                                          'assets/Zenith.png',
                                                          height: 40,
                                                        ),
                                                        const SizedBox(
                                                          width: 16,
                                                        ),
                                                        SizeConfig().p16regB(
                                                            'Zenith Bank', 14),
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
                              contentPadding:
                                  EdgeInsets.only(left: 34, top: 14),
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

                  // Bank //
                  // Container(
                  //   height: 56,
                  //   width: 327,
                  //   decoration: const BoxDecoration(
                  //       // color: style.divider,
                  //       border: Border(
                  //           bottom:
                  //               BorderSide(width: 1, color: style.divider))),
                  //   child: Row(
                  //     children: <Widget>[
                  //       Padding(
                  //         padding: const EdgeInsets.only(
                  //           top: 16,
                  //         ),
                  //         child: SizeConfig().p14regB('Bank', 14),
                  //       ),
                  //       Expanded(
                  //           child: Padding(
                  //         padding: const EdgeInsets.only(left: 48),
                  //         child: InkWell(
                  //           onTap: () {},
                  //           child: Row(
                  //             mainAxisAlignment: MainAxisAlignment.start,
                  //             children: [
                  //               Image.asset(
                  //                 'assets/Gtb.png',
                  //                 height: 32,
                  //               ),
                  //               const SizedBox(
                  //                 width: 8,
                  //               ),
                  //               SizeConfig().p16regB('Gtb Bank', 14),
                  //             ],
                  //           ),
                  //         ),
                  //       )),
                  //       SizedBox(
                  //         child: Padding(
                  //           padding: const EdgeInsets.only(top: 16),
                  //           child: Image.asset(
                  //             'assets/icon (down).png',
                  //             height: 32,
                  //             color: style.text2,
                  //           ),
                  //         ),
                  //       )
                  //     ],
                  //   ),
                  // ),
                ],
              ),
            ),
          ))
        ],
      ),
    );
  }
}
