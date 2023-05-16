import 'package:flutter/material.dart';
import 'package:wisewallet/Screens/forgotPassword.dart';
import 'package:wisewallet/Screens/setNewPassword.dart';
import '../classes/style.dart';
import '../classes/media_style.dart';
import 'package:flutter/services.dart';

class RecoveryCode extends StatefulWidget {
  const RecoveryCode({super.key});

  @override
  State<RecoveryCode> createState() => _RecoveryCodeState();
}

class _RecoveryCodeState extends State<RecoveryCode> {
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
                                      builder: (context) =>
                                          const ForgotPassword()));
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
                    SizeConfig().p30medB('Recovery Code', 30),
                    const SizedBox(
                      height: 8,
                    ),
                    SizeConfig().p16regB(
                        'Enter the 4 digit recovery code sent to the phos@gmail.com',
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
                          onTap: () {},
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
                          onPressed: () async {
                            Navigator.of(context).pushReplacement(
                              MaterialPageRoute(
                                  builder: (context) => const SetNewPassword()),
                            );
                          },
                          child: SizeConfig().p16medW('Verify Code', 16)),
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
