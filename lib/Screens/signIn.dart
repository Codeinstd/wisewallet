import 'package:flutter/material.dart';
import 'package:wisewallet/Screens/home.dart';
import 'package:wisewallet/Screens/onboard1.dart';
import 'package:wisewallet/Screens/setNewPassword.dart';
import '../classes/media_style.dart';
import 'package:flutter/services.dart';
import '../classes/style.dart';
import 'package:fluttertoast/fluttertoast.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
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
                                      builder: (context) => const Onboard1()));
                            },
                            icon: const Icon(
                              Icons.arrow_back,
                              color: style.black,
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
                    SizeConfig().p30medB('Welcome Back', 30),
                    const SizedBox(
                      height: 8,
                    ),
                    SizeConfig()
                        .p16regB('Sign in with your valid credentials.', 16),
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
                                    EdgeInsets.only(left: 48, top: 14),
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
                              bottom:
                                  BorderSide(width: 1, color: style.divider))),
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
                                    EdgeInsets.only(left: 20, top: 14),
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
                      height: 18,
                    ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizeConfig().p14regB('Forgot Password?  ', 14),
                        InkWell(
                          onTap: () {
                            showModalBottomSheet(
                                isScrollControlled: true,
                                enableDrag: false,
                                isDismissible: false,
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
                                    // height: 350,
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
                                            top: 24,
                                            bottom: 40),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            // beginining //
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.end,
                                              children: [
                                                // SizeConfig().p16medB(
                                                //     'Transaction Receipt', 14),
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
                                              height: 16,
                                            ),
                                            // header section //
                                            SizedBox(
                                              width: 375,
                                              child: SizeConfig().p30medB(
                                                  'Forgot Password', 30),
                                            ),

                                            const SizedBox(
                                              height: 12,
                                            ),
                                            SizeConfig().p16regB(
                                                'Enter your email address. We will send you a recovery link to reset password',
                                                16),
                                            const SizedBox(
                                              height: 8,
                                            ),

                                            // email //
                                            Container(
                                              height: 56,
                                              width: 327,
                                              decoration: const BoxDecoration(
                                                  // color: style.divider,
                                                  border: Border(
                                                      bottom: BorderSide(
                                                          width: 1,
                                                          color:
                                                              style.divider))),
                                              margin: const EdgeInsets.all(0),
                                              child: Row(
                                                children: <Widget>[
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            top: 16),
                                                    child: SizeConfig()
                                                        .p14regB('Email', 14),
                                                  ),
                                                  Expanded(
                                                    child: TextField(
                                                      cursorColor:
                                                          style.primary1,
                                                      keyboardType:
                                                          TextInputType
                                                              .emailAddress,
                                                      inputFormatters: [
                                                        LengthLimitingTextInputFormatter(
                                                            20)
                                                      ],
                                                      decoration:
                                                          const InputDecoration(
                                                        border:
                                                            InputBorder.none,
                                                        hintText: "Enter email",
                                                        hintStyle: TextStyle(
                                                            color:
                                                                style.divider),
                                                        contentPadding:
                                                            EdgeInsets.only(
                                                                left: 24,
                                                                top: 14),
                                                      ),
                                                      style: const TextStyle(
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

                                            const SizedBox(
                                              height: 350,
                                            ),

                                            // btn//

                                            SizedBox(
                                              width: 325,
                                              height: 50,
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
                                                  onPressed: () async {
                                                    // bottomsheet //

                                                    showModalBottomSheet(
                                                        isScrollControlled:
                                                            true,
                                                        enableDrag: false,
                                                        isDismissible: false,
                                                        backgroundColor:
                                                            style.white,
                                                        shape:
                                                            const RoundedRectangleBorder(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .vertical(
                                                            top:
                                                                Radius.circular(
                                                                    20),
                                                          ),
                                                        ),
                                                        clipBehavior: Clip
                                                            .antiAliasWithSaveLayer,
                                                        context: context,
                                                        builder: (BuildContext
                                                            context) {
                                                          return SizedBox(
                                                            // height: 350,
                                                            child: DecoratedBox(
                                                              decoration: const BoxDecoration(
                                                                  // color: style.white,
                                                                  // borderRadius: BorderRadius.only(
                                                                  //     topLeft: Radius.circular(20),
                                                                  //     topRight: Radius.circular(20))
                                                                  ),
                                                              child: Padding(
                                                                padding:
                                                                    const EdgeInsets
                                                                            .only(
                                                                        left:
                                                                            24,
                                                                        right:
                                                                            24,
                                                                        top: 24,
                                                                        bottom:
                                                                            40),
                                                                child: Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .min,
                                                                  children: [
                                                                    // beginining //
                                                                    Row(
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .end,
                                                                      children: [
                                                                        // SizeConfig().p16medB(
                                                                        //     'Transaction Receipt', 14),
                                                                        IconButton(
                                                                            onPressed:
                                                                                () {
                                                                              Navigator.pop(context);
                                                                            },
                                                                            icon:
                                                                                const Icon(
                                                                              Icons.close,
                                                                              color: style.divider,
                                                                            ))
                                                                      ],
                                                                    ),
                                                                    const SizedBox(
                                                                      height:
                                                                          16,
                                                                    ),
                                                                    // header section //
                                                                    SizedBox(
                                                                      width:
                                                                          375,
                                                                      child: SizeConfig().p30medB(
                                                                          'Recovery Code',
                                                                          30),
                                                                    ),

                                                                    const SizedBox(
                                                                      height: 8,
                                                                    ),
                                                                    SizeConfig()
                                                                        .p16regB(
                                                                            'Enter the 4 digit recovery code sent to the phos@gmail.com',
                                                                            16),
                                                                    const SizedBox(
                                                                      height: 4,
                                                                    ),
                                                                    Container(
                                                                      height:
                                                                          56,
                                                                      width:
                                                                          327,
                                                                      decoration: const BoxDecoration(
                                                                          // color: style.divider,
                                                                          border: Border(bottom: BorderSide(width: 1, color: style.divider))),
                                                                      margin:
                                                                          const EdgeInsets.all(
                                                                              0),
                                                                      child:
                                                                          Row(
                                                                        children: <
                                                                            Widget>[
                                                                          Padding(
                                                                            padding:
                                                                                const EdgeInsets.only(top: 16),
                                                                            child:
                                                                                SizeConfig().p14regB('Code', 14),
                                                                          ),
                                                                          Expanded(
                                                                            child:
                                                                                TextField(
                                                                              cursorColor: style.primary1,
                                                                              keyboardType: TextInputType.number,
                                                                              inputFormatters: [
                                                                                LengthLimitingTextInputFormatter(4)
                                                                              ],
                                                                              decoration: const InputDecoration(
                                                                                border: InputBorder.none,
                                                                                hintText: "Enter confirmation code",
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
                                                                      height:
                                                                          18,
                                                                    ),
                                                                    Row(
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .start,
                                                                      children: [
                                                                        SizeConfig().p14regB(
                                                                            'Didnt get email?  ',
                                                                            14),
                                                                        InkWell(
                                                                          onTap:
                                                                              () {
                                                                            // flutter toast //
                                                                            Fluttertoast.showToast(
                                                                                msg: 'Recovery Code Sent Successfully!',
                                                                                toastLength: Toast.LENGTH_SHORT,
                                                                                gravity: ToastGravity.TOP,
                                                                                timeInSecForIosWeb: 4,
                                                                                fontSize: 14,
                                                                                backgroundColor: style.success,
                                                                                textColor: style.white);
                                                                          },
                                                                          child: SizeConfig().p14medC(
                                                                              'Send again',
                                                                              14),
                                                                        )
                                                                      ],
                                                                    ),
                                                                    const SizedBox(
                                                                      height:
                                                                          350,
                                                                    ),

                                                                    // btn//

                                                                    SizedBox(
                                                                      width:
                                                                          325,
                                                                      height:
                                                                          50,
                                                                      child: TextButton(
                                                                          style: ButtonStyle(
                                                                            backgroundColor:
                                                                                MaterialStateProperty.all(style.primary1),
                                                                            shape:
                                                                                MaterialStateProperty.all(
                                                                              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                                                                            ),
                                                                          ),
                                                                          onPressed: () {
                                                                            Navigator.of(context).pushReplacement(
                                                                              MaterialPageRoute(builder: (context) => const SetNewPassword()),
                                                                            );
                                                                          },
                                                                          child: SizeConfig().p16medW('Verify Code', 16)),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                            ),
                                                          );
                                                        });

                                                    // text //
                                                  },
                                                  child: SizeConfig().p16medW(
                                                      'Send Recovery Code',
                                                      16)),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  );
                                });
                          },
                          child: SizeConfig().p14medC('Recover Now', 14),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 380,
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
                            Navigator.of(context).pushReplacement(
                              MaterialPageRoute(
                                  builder: (context) => const home()),
                            );
                          },
                          child: SizeConfig().p16medW('Continue', 16)),
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
