import 'package:flutter/material.dart';
import 'package:wisewallet/Screens/captureID.dart';
import 'package:wisewallet/Screens/verifyID2.dart';
import '../classes/style.dart';
import '../classes/media_style.dart';

class IDCaptured extends StatefulWidget {
  const IDCaptured({super.key});

  @override
  State<IDCaptured> createState() => _IDCapturedState();
}

class _IDCapturedState extends State<IDCaptured> {
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
                              builder: (context) => const CaptureID()));
                    },
                    icon: const Icon(
                      Icons.arrow_back,
                      color: style.black,
                      size: 28,
                    )),
                const SizedBox(width: 60),
                SizeConfig().p18medB('Capture ID', 18),
              ],
            ),
          ))
        ],
      ),

      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Expanded(
              child: Padding(
            padding: const EdgeInsets.only(left: 0, right: 0),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // capture section //
                  SizedBox(
                      width: 375,
                      height: 550,
                      child: DecoratedBox(
                        decoration: const BoxDecoration(color: style.black),
                        child: Align(
                          alignment: Alignment.center,
                          child: Image.asset(
                            'assets/capture.png',
                            height: 380,
                          ),
                        ),
                      )),

                  Align(
                    alignment: Alignment.center,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        // replace shot //
                        TextButton(
                          onPressed: () {
                            Navigator.of(context).pushReplacement(
                              MaterialPageRoute(
                                  builder: (context) => const CaptureID()),
                            );
                          },
                          child: SizeConfig().p14medC('Replace Shot', 14),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 24, right: 24),
                    child:

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
                                builder: (context) => const VerifyID2()),
                          );
                        },
                        child: SizeConfig().p16medW('Continue', 14),
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
