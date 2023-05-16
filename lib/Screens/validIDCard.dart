import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wisewallet/Screens/VerifyID.dart';
import 'package:wisewallet/Screens/captureID.dart';
import '../classes/media_style.dart';
import '../classes/style.dart';
import 'package:flutter/services.dart';
import 'package:dropdown_textfield/dropdown_textfield.dart';

class ValidIDCard extends StatefulWidget {
  const ValidIDCard({super.key});

  @override
  State<ValidIDCard> createState() => _ValidIDCardState();
}

class _ValidIDCardState extends State<ValidIDCard> {
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
                              builder: (context) => const VerifyID()));
                    },
                    icon: const Icon(
                      Icons.arrow_back,
                      color: style.black,
                      size: 28,
                    )),
                const SizedBox(width: 60),
                SizeConfig().p18medB('Valid ID Card', 18),
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
            padding: const EdgeInsets.only(
              left: 24,
              right: 24,
              top: 16,
            ),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // notice card //

                  SizedBox(
                    height: 50,
                    width: 375,
                    child: DecoratedBox(
                        decoration: BoxDecoration(
                          color: style.white,
                          border: Border.all(
                            color: style.info,
                            width: 1,
                          ),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(
                            left: 8,
                            top: 8,
                            bottom: 8,
                          ),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Image.asset(
                                  'assets/info.png',
                                  height: 24,
                                ),
                                const SizedBox(
                                  width: 8,
                                ),
                                const Flexible(
                                  child: Text(
                                    'File must be clear and legible. Should not be more than 25kb',
                                    style: TextStyle(
                                        color: style.text2,
                                        fontFamily: 'space Grotesk',
                                        fontSize: 12,
                                        letterSpacing: 0.15,
                                        height: 1.4),
                                  ),
                                )
                              ]),
                        )),
                  ),

                  const SizedBox(
                    height: 24,
                  ),

                  // info header //
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizeConfig().p12medC(
                          'Provide the required information below:', 12),
                      const SizedBox(
                        height: 8,
                      ),

                      // type //
                      Container(
                        height: 56,
                        width: 327,
                        decoration: const BoxDecoration(
                          // color: style.divider,
                          border: Border(
                              bottom:
                                  BorderSide(width: 1, color: style.divider)),
                        ),
                        child: Row(children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(top: 16),
                            child: SizeConfig().p14regB('Type', 14),
                          ),
                          const Expanded(
                            child: Padding(
                              padding: EdgeInsets.only(top: 10),
                              child: DropDownTextField(
                                dropDownItemCount: 4,
                                textFieldDecoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: "Select document type",
                                  hintStyle: TextStyle(color: style.divider),
                                  contentPadding:
                                      EdgeInsets.only(left: 24, top: 14),
                                ),
                                dropDownList: [
                                  DropDownValueModel(
                                      name: 'NIN', value: "value1"),
                                  DropDownValueModel(
                                      name: 'International Passport',
                                      value: "value2"),
                                  DropDownValueModel(
                                      name: 'Drivers License', value: "value3"),
                                  DropDownValueModel(
                                      name: 'Voters Card', value: "value4"),
                                ],
                                // onChanged: () {},
                              ),
                            ),
                          ),
                        ]),
                      ),

                      const SizedBox(
                        height: 2,
                      ),

                      // Doc No //

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
                              child: SizeConfig().p14regB('No.', 14),
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
                                  hintText: "Enter document number",
                                  hintStyle: TextStyle(color: style.divider),
                                  contentPadding:
                                      EdgeInsets.only(left: 30, top: 14),
                                ),
                                style: const TextStyle(
                                  fontFamily: 'space Grotesk',
                                  fontSize: 16.0,
                                  color: style.text2,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 6,
                      ),
                      SizeConfig()
                          .p12regB('10 digit on the bottom right corner', 12),

                      const SizedBox(
                        height: 375,
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
                                  borderRadius: BorderRadius.circular(10),
                                  side: BorderSide(
                                      color: style.divider.withOpacity(0.2))),
                            ),
                          ),
                          onPressed: () async {
                            Navigator.of(context).pushReplacement(
                              MaterialPageRoute(
                                  builder: (context) => const CaptureID()),
                            );
                          },
                          child: SizeConfig().p16medW('Continue to upload', 14),
                        ),
                      ),
                    ],
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
