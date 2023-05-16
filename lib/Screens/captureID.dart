import 'package:flutter/material.dart';
import 'package:wisewallet/Screens/captureSelfie.dart';
import 'package:wisewallet/Screens/idCaptured.dart';
import 'package:wisewallet/Screens/validIDCard.dart';
import '../classes/media_style.dart';
import '../classes/style.dart';

class CaptureID extends StatefulWidget {
  const CaptureID({super.key});

  @override
  State<CaptureID> createState() => _CaptureIDState();
}

class _CaptureIDState extends State<CaptureID> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appbar section //
      appBar: AppBar(
        elevation: 0,
        backgroundColor: style.white,
        toolbarHeight: 50,
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
                              builder: (context) => const ValidIDCard()));
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
                    height: 580,
                    child: DecoratedBox(
                      decoration: BoxDecoration(color: style.black),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            width: 375,
                            height: 500,
                            child: DecoratedBox(
                              decoration: BoxDecoration(
                                color: style.text1.withOpacity(0.3),
                              ),
                              child: Column(
                                children: [
                                  Padding(
                                      padding: const EdgeInsets.only(top: 100),
                                      child: Image.asset(
                                        'assets/cameraArea.png',
                                        height: 300,
                                      ))
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 12,
                          ),
                          Align(
                            alignment: Alignment.center,
                            child: SizedBox(
                              height: 50,
                              width: 50,
                              child: InkWell(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const IDCaptured()));
                                },
                                child: DecoratedBox(
                                  decoration: BoxDecoration(
                                    color: style.white,
                                    border: Border.all(
                                      color: style.black,
                                      width: 4,
                                    ),
                                    borderRadius: BorderRadius.circular(40),
                                  ),
                                  child: DecoratedBox(
                                      decoration: BoxDecoration(
                                          border: Border.all(
                                              color: style.white,
                                              width: 4,
                                              strokeAlign: BorderSide
                                                  .strokeAlignOutside),
                                          borderRadius:
                                              BorderRadiusDirectional.circular(
                                                  100))),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 40,
                  ),

                  // btn//

                  Align(
                    alignment: Alignment.center,
                    child: SizedBox(
                        width: 325,
                        height: 50,
                        child: TextButton(
                          style: ButtonStyle(
                            // backgroundColor:
                            //     MaterialStateProperty.all(style.primary1),
                            shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  side:
                                      const BorderSide(color: style.primary1)),
                            ),
                          ),
                          onPressed: () async {
                            Navigator.of(context).pushReplacement(
                              MaterialPageRoute(
                                  builder: (context) => const IDCaptured()),
                            );
                          },
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Icon(
                                  Icons.add,
                                  color: style.primary1,
                                ),
                                SizeConfig()
                                    .p16medC('Tap to upload from device', 14),
                              ]),
                        )),
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
