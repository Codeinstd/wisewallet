import 'package:flutter/material.dart';
import 'package:wisewallet/Screens/recoveryCode.dart';
import 'package:wisewallet/Screens/signIn.dart';
import '../classes/style.dart';
import '../classes/media_style.dart';
import 'package:flutter/services.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({super.key});

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
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
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        IconButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const SignIn()));
                            },
                            icon: const Icon(
                              Icons.cancel_rounded,
                              color: style.divider,
                              size: 28,
                            )),
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
                    SizeConfig().p30medB('Forgot Password', 30),
                    const SizedBox(
                      height: 8,
                    ),
                    SizeConfig().p16regB(
                        'Enter your email address. We will send you a recovery link to reset password',
                        16),
                    const SizedBox(
                      height: 4,
                    ),

                    // email //
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
                                    EdgeInsets.only(left: 24, top: 14),
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
                      height: 450,
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
                          onPressed: () async {
                            Navigator.of(context).pushReplacement(
                              MaterialPageRoute(
                                  builder: (context) => const RecoveryCode()),
                            );
                          },
                          child:
                              SizeConfig().p16medW('Send Recovery Code', 16)),
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
