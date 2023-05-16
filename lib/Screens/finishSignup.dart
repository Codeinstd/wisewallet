import 'package:flutter/material.dart';
import 'package:wisewallet/Screens/confirmEmail.dart';
import 'package:wisewallet/Screens/home.dart';
import '../classes/media_style.dart';
import '../classes/style.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/painting/box_border.dart';

class FinishSignup extends StatefulWidget {
  const FinishSignup({super.key});

  @override
  State<FinishSignup> createState() => _FinishSignupState();
}

class _FinishSignupState extends State<FinishSignup> {
  FocusNode inputNode = FocusNode();
// to open keyboard call this function;
  void openKeyboard() {
    FocusScope.of(context).requestFocus(inputNode);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appbar section //

      appBar: AppBar(
        elevation: 0,
        toolbarHeight: 50,
        backgroundColor: style.white,
        actions: [
          Expanded(
              child: Padding(
            padding: const EdgeInsets.only(
              left: 16,
              right: 16,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                IconButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const ConfirmEmail()));
                    },
                    icon: const Icon(
                      Icons.arrow_back,
                      color: style.black,
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
                padding: const EdgeInsets.only(left: 24, right: 24, top: 16),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // header section //

                      SizeConfig().p30medB('Finish Sign Up', 30),
                      const SizedBox(
                        height: 8,
                      ),

                      // text field section //

                      // first name //
                      Container(
                        height: 56,
                        width: 327,
                        decoration: const BoxDecoration(
                            // color: style.divider,
                            border: Border(
                                bottom: BorderSide(
                                    width: 1, color: style.divider))),
                        margin: const EdgeInsets.all(0),
                        child: Row(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(top: 16),
                              child: SizeConfig().p14regB('First Name', 14),
                            ),
                            Expanded(
                              child: TextField(
                                cursorColor: style.primary1,
                                keyboardType: TextInputType.name,
                                inputFormatters: [
                                  LengthLimitingTextInputFormatter(15)
                                ],
                                decoration: const InputDecoration(
                                  border: InputBorder.none,
                                  hintText: "Enter first name",
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
                            )
                          ],
                        ),
                      ),

                      const SizedBox(
                        height: 4,
                      ),

                      // last name //
                      Container(
                        height: 56,
                        width: 327,
                        decoration: const BoxDecoration(
                            // color: style.divider,
                            border: Border(
                                bottom: BorderSide(
                                    width: 1, color: style.divider))),
                        margin: const EdgeInsets.all(0),
                        child: Row(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(top: 16),
                              child: SizeConfig().p14regB('Last Name', 14),
                            ),
                            Expanded(
                              child: TextField(
                                cursorColor: style.primary1,
                                keyboardType: TextInputType.name,
                                inputFormatters: [
                                  LengthLimitingTextInputFormatter(15)
                                ],
                                decoration: const InputDecoration(
                                  border: InputBorder.none,
                                  hintText: "Enter last name",
                                  hintStyle: TextStyle(color: style.divider),
                                  contentPadding:
                                      EdgeInsets.only(left: 36, top: 14),
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

                      // Password //
                      Container(
                        height: 56,
                        width: 327,
                        decoration: const BoxDecoration(
                            // color: style.divider,
                            border: Border(
                                bottom: BorderSide(
                                    width: 1, color: style.divider))),
                        margin: const EdgeInsets.all(0),
                        child: Row(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(top: 16),
                              child: SizeConfig().p14regB('Password', 14),
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
                                  hintText: "Set a password",
                                  hintStyle: TextStyle(color: style.divider),
                                  contentPadding:
                                      EdgeInsets.only(left: 42, top: 14),
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

                      // Referral //
                      Container(
                        height: 56,
                        width: 327,
                        decoration: const BoxDecoration(
                            // color: style.divider,
                            border: Border(
                                bottom: BorderSide(
                                    width: 1, color: style.divider))),
                        margin: const EdgeInsets.all(0),
                        child: Row(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(top: 16),
                              child: SizeConfig().p14regB('Referral Code', 14),
                            ),
                            Expanded(
                              child: TextField(
                                cursorColor: style.primary1,
                                keyboardType: TextInputType.text,
                                inputFormatters: [
                                  LengthLimitingTextInputFormatter(15)
                                ],
                                decoration: const InputDecoration(
                                  border: InputBorder.none,
                                  hintText: "Enter your referral code",
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

                      const SizedBox(
                        height: 18,
                      ),

                      // i agree section //

                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Image.asset(
                            'assets/Checkbox.png',
                            height: 24,
                          ),
                          SizeConfig().spaceW(1),
                          SizeConfig().p14regB(
                              'I agree to the terms and conditions', 14),
                        ],
                      ),

                      const SizedBox(
                        height: 280,
                      ),

                      // button section //
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
                              showModalBottomSheet(
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
                                      height: 350,
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
                                              top: 28,
                                              bottom: 2),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Image.asset(
                                                'assets/signup_Completed.png',
                                                height: 100,
                                              ),
                                              const SizedBox(
                                                height: 16,
                                              ),

                                              SizeConfig().p18medB(
                                                  'SignUp Completed', 16),
                                              const SizedBox(
                                                height: 12,
                                              ),

                                              const Flexible(
                                                child: Text(
                                                  'Congratulations 🎊, you have successfully completed your account setup',
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

                                              // btn //
                                              SizedBox(
                                                width: 325,
                                                height: 48,
                                                child: TextButton(
                                                    style: ButtonStyle(
                                                      backgroundColor:
                                                          MaterialStateProperty
                                                              .all(style
                                                                  .primary1),
                                                      shape:
                                                          MaterialStateProperty
                                                              .all(
                                                        RoundedRectangleBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        10)),
                                                      ),
                                                    ),
                                                    onPressed: () {
                                                      Navigator.pushReplacement(
                                                        context,
                                                        MaterialPageRoute(
                                                            builder: (context) =>
                                                                const home()),
                                                      );
                                                    },
                                                    child: SizeConfig().p16medW(
                                                        'Complete Sign Up',
                                                        16)),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    );
                                  });
                            },
                            child:
                                SizeConfig().p16medW('Complete Sign Up', 16)),
                      ),
                    ],
                  ),
                )),
          )
        ],
      ),
    );
  }
}
