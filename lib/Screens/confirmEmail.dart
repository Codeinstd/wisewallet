import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:wisewallet/Screens/finishSignup.dart';
import 'package:wisewallet/Screens/home.dart';
import 'package:wisewallet/Screens/signUp.dart';
import 'package:wisewallet/Screens/support.dart';
import '../classes/media_style.dart';
import '../classes/style.dart';

class ConfirmEmail extends StatefulWidget {
  const ConfirmEmail({super.key});

  @override
  State<ConfirmEmail> createState() => _ConfirmEmailState();
}

class _ConfirmEmailState extends State<ConfirmEmail> {
  FocusNode inputNode = FocusNode();
// to open keyboard call this function;
  void openKeyboard() {
    FocusScope.of(context).requestFocus(inputNode);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appbar //
      appBar: AppBar(
          toolbarHeight: 50,
          elevation: 0,
          backgroundColor: style.white,
          actions: <Widget>[
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(left: 16, top: 2, right: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const SignUp()));
                            },
                            icon: const Icon(
                              Icons.arrow_back,
                              color: style.black,
                              size: 28,
                            )),
                        InkWell(
                          onTap: () {
                            Navigator.of(context).pushReplacement(
                              MaterialPageRoute(
                                  builder: (context) => const Support()),
                            );
                          },
                          child: SizeConfig().p12medC('Having Issue?', 12),
                        )
                      ],
                    )
                  ],
                ),
              ),
            )
          ]),

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
                    SizeConfig().p30medB('Confirm Email', 30),
                    const SizedBox(
                      height: 8,
                    ),
                    SizeConfig().p16regB(
                        'Enter the 4 digit verification email sent to phos@gmail.com',
                        16),
                    const SizedBox(
                      height: 4,
                    ),
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
                            child: SizeConfig().p14regB('Code', 14),
                          ),
                          Expanded(
                            child: TextField(
                              cursorColor: style.primary1,
                              keyboardType: TextInputType.number,
                              inputFormatters: [
                                LengthLimitingTextInputFormatter(4)
                              ],
                              decoration: const InputDecoration(
                                border: InputBorder.none,
                                hintText: "Enter confirmation code",
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
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizeConfig().p14regB('Didnt get email?  ', 14),
                        InkWell(
                          onTap: () {
                            // flutter toast //
                            Fluttertoast.showToast(
                                msg: 'Verification Email Sent Successfully!',
                                toastLength: Toast.LENGTH_SHORT,
                                gravity: ToastGravity.TOP,
                                timeInSecForIosWeb: 4,
                                fontSize: 14,
                                backgroundColor: style.success,
                                textColor: style.white);
                          },
                          child: SizeConfig().p14medC('Send again', 14),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 420,
                    ),

                    // btn//

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
                                            top: 8,
                                            bottom: 8),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Image.asset(
                                              'assets/email_verified.png',
                                              height: 160,
                                            ),

                                            SizeConfig()
                                                .p18medB('Email Verified', 16),
                                            const SizedBox(
                                              height: 8,
                                            ),

                                            const Flexible(
                                              child: Text(
                                                'Congratulations 🤩,you have successfully  verified your email address',
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
                                                            .all(
                                                                style.primary1),
                                                    shape: MaterialStateProperty
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
                                                      'Complete Sign Up', 16)),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  );
                                });
                          },
                          child: SizeConfig().p16medW('Verify email', 16)),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
