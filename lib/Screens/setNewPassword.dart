import 'package:flutter/material.dart';
import 'package:wisewallet/Screens/home.dart';
import 'package:wisewallet/Screens/recoveryCode.dart';
import '../classes/style.dart';
import '../classes/media_style.dart';
import 'package:flutter/services.dart';

import 'confirmEmail.dart';

class SetNewPassword extends StatefulWidget {
  const SetNewPassword({super.key});

  @override
  State<SetNewPassword> createState() => _SetNewPasswordState();
}

class _SetNewPasswordState extends State<SetNewPassword> {
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
                              builder: (context) => const RecoveryCode()));
                    },
                    icon: const Icon(
                      Icons.arrow_back,
                      color: style.black,
                    ))
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
            padding: const EdgeInsets.only(left: 24, right: 24, top: 16),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // header //

                  SizeConfig().p30medB('Set New Password', 30),
                  const SizedBox(
                    height: 16,
                  ),

                  // password section //

                  // Password 01 //
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
                          child: SizeConfig().p14regB('New Password', 14),
                        ),
                        Expanded(
                          child: TextField(
                            cursorColor: style.primary1,
                            keyboardType: TextInputType.visiblePassword,
                            inputFormatters: [
                              LengthLimitingTextInputFormatter(8)
                            ],
                            decoration: const InputDecoration(
                              border: InputBorder.none,
                              hintText: "Enter password",
                              hintStyle: TextStyle(color: style.divider),
                              contentPadding:
                                  EdgeInsets.only(left: 38, top: 14),
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
                              'assets/icon (right).png',
                              height: 32,
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

                  // Password 01 //
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
                          child: SizeConfig().p14regB('Confirm Password', 14),
                        ),
                        Expanded(
                          child: TextField(
                            cursorColor: style.primary1,
                            keyboardType: TextInputType.visiblePassword,
                            inputFormatters: [
                              LengthLimitingTextInputFormatter(8)
                            ],
                            decoration: const InputDecoration(
                              border: InputBorder.none,
                              hintText: "Enter password",
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
                        ),
                        SizedBox(
                          child: Padding(
                            padding: const EdgeInsets.only(top: 16),
                            child: Image.asset(
                              'assets/icon (right).png',
                              height: 32,
                              color: style.text2,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),

                  const SizedBox(
                    height: 28,
                  ),

                  // pssword info //
                  SizedBox(
                    child: Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: const [
                              Icon(
                                Icons.check_circle_sharp,
                                size: 22,
                                color: style.success,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Flexible(
                                child: Text(
                                  'Password must be more than 8 characters long',
                                  overflow: TextOverflow.clip,
                                  style: TextStyle(
                                      color: style.text2,
                                      fontSize: 13,
                                      fontFamily: 'space Grotesk',
                                      height: 1.4),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: const [
                              Icon(
                                Icons.check_circle_sharp,
                                size: 22,
                                color: style.success,
                              ),
                              SizedBox(
                                width: 8,
                              ),
                              Flexible(
                                child: Text(
                                  'Password must contain atleast 1 uppercase, lowercase and numbers',
                                  overflow: TextOverflow.clip,
                                  style: TextStyle(
                                      color: style.text2,
                                      fontSize: 13,
                                      fontFamily: 'space Grotesk',
                                      letterSpacing: 0.1,
                                      height: 1.4),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 320,
                  ),

                  // btn //
                  SizedBox(
                    width: 325,
                    height: 50,
                    child: TextButton(
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(style.primary1),
                          shape: MaterialStateProperty.all(
                            RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)),
                          ),
                        ),
                        onPressed: () {
                          // bottom-sheet //

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
                                        bottom: 50,
                                      ),
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
                                                    Navigator.of(context)
                                                        .pushReplacement(
                                                      MaterialPageRoute(
                                                          builder: (context) =>
                                                              const home()),
                                                    );
                                                  },
                                                  icon: const Icon(
                                                    Icons.close,
                                                    color: style.divider,
                                                  ))
                                            ],
                                          ),
                                          // const SizedBox(
                                          //   height: 24,
                                          // ),
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Image.asset(
                                                'assets/pwd_completed.png',
                                                height: 200,
                                              ),
                                            ],
                                          ),
                                          // const SizedBox(
                                          //   height: 16,
                                          // ),

                                          SizeConfig()
                                              .p18medB('Password Updated!', 16),

                                          const SizedBox(
                                            height: 8,
                                          ),

                                          const Flexible(
                                            child: Text(
                                              'Congratulations! your new password has been authorized successfully.',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                color: style.text2,
                                                fontFamily: 'space Grotesk',
                                                fontSize: 15,
                                                height: 1.4,
                                                letterSpacing: -0.5,
                                              ),
                                            ),
                                          ),

                                          const SizedBox(
                                            height: 24,
                                          ),

                                          // // btn //
                                          // SizedBox(
                                          //   width: 325,
                                          //   height: 48,
                                          //   child: TextButton(
                                          //       style: ButtonStyle(
                                          //         backgroundColor:
                                          //             MaterialStateProperty.all(
                                          //                 style.primary1),
                                          //         shape:
                                          //             MaterialStateProperty.all(
                                          //           RoundedRectangleBorder(
                                          //               borderRadius:
                                          //                   BorderRadius
                                          //                       .circular(10)),
                                          //         ),
                                          //       ),
                                          //       onPressed: () {
                                          //         Navigator.pushReplacement(
                                          //           context,
                                          //           MaterialPageRoute(
                                          //               builder: (context) =>
                                          //                   const ConfirmEmail()),
                                          //         );
                                          //       },
                                          //       child: SizeConfig().p16medW(
                                          //           'Verify Email', 16)),
                                          // ),
                                        ],
                                      ),
                                    ),
                                  ),
                                );
                              });
                          // Navigator.of(context).pushReplacement(
                          //   MaterialPageRoute(
                          //       builder: (context) => const SetNewPassword()),
                          // );
                        },
                        child: SizeConfig().p16medW('Set Password', 16)),
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
