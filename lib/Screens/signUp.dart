import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:wisewallet/Screens/confirmEmail.dart';
import 'package:wisewallet/Screens/onboard1.dart';
import 'package:wisewallet/Screens/splash.dart';
import '../classes/style.dart';
import '../classes/media_style.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
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
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      IconButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const Onboard1()));
                          },
                          icon: const Icon(
                            Icons.arrow_back,
                            color: style.black,
                            size: 28,
                          )),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),

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
                    SizeConfig().p30medB('Lets begin!', 30),
                    const SizedBox(
                      height: 8,
                    ),
                    SizeConfig().p16regB(
                        'Enter your email address. We will send you a verification code to confirm the email',
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
                            child: SizeConfig().p14regB('Email', 14),
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
                                hintText: "Enter email",
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
                      height: 455,
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
                                    height: 380,
                                    child: DecoratedBox(
                                      decoration: const BoxDecoration(),
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
                                            Image.asset(
                                              'assets/email-sent.png',
                                              height: 150,
                                            ),
                                            const SizedBox(
                                              height: 16,
                                            ),

                                            const Flexible(
                                              child: Text(
                                                'A confirmation link has been sent to phos@gmail.com',
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
                                                              const ConfirmEmail()),
                                                    );
                                                  },
                                                  child: SizeConfig().p16medW(
                                                      'Verify Email', 16)),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  );
                                });
                          },
                          child: SizeConfig().p16medW('Get Started', 16)),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
