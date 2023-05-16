import 'package:flutter/material.dart';
import 'package:wisewallet/Screens/home.dart';
import 'package:wisewallet/Screens/validIDCard.dart';
import '../classes/media_style.dart';
import '../classes/style.dart';

class VerifyID extends StatefulWidget {
  const VerifyID({super.key});

  @override
  State<VerifyID> createState() => _VerifyIDState();
}

class _VerifyIDState extends State<VerifyID> {
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
            padding: EdgeInsets.only(left: 16, right: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                IconButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const home()));
                    },
                    icon: const Icon(
                      Icons.arrow_back,
                      color: style.black,
                      size: 28,
                    )),
                const SizedBox(width: 60),
                SizeConfig().p18medB('Verify Identity', 18),
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
            padding: EdgeInsets.only(left: 24, right: 24, top: 16),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // timer //
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                          height: 40,
                          width: 40,
                          child: DecoratedBox(
                            decoration: BoxDecoration(
                              // color: style.primary1,
                              border: Border.all(
                                color: style.primary1,
                                width: 1,
                              ),
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(
                                left: 8,
                                top: 12,
                              ),
                              child: SizeConfig().p14medC('0/2', 14),
                            ),
                          )),
                      const SizedBox(
                        width: 10,
                      ),
                      const Flexible(
                        child: Text(
                          'Confirm the requirement below to gain full access to Wisewallet features.',
                          style: TextStyle(
                              color: style.text2,
                              fontFamily: 'space Grotesk',
                              fontSize: 14,
                              letterSpacing: 0.15,
                              height: 1.4),
                        ),
                      )
                    ],
                  ),

                  const SizedBox(
                    height: 30,
                  ),

                  // cardbox info //

                  // card 001 //

                  SizedBox(
                    width: 375,
                    height: 90,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        color: style.gray,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 28, vertical: 16),
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const ValidIDCard()));
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Image.asset(
                                'assets/Issued ID.png',
                                height: 32,
                              ),

                              // column info //
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizeConfig().p14medB('Valid Issued ID', 14),
                                  const SizedBox(
                                    height: 8,
                                  ),
                                  SizeConfig().p12regB(
                                      'This could either be NIMC, Voters Card  ',
                                      12),
                                  const SizedBox(
                                    height: 4,
                                  ),
                                  SizeConfig().p12regB('or Passport Photo', 12),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),

                  const SizedBox(
                    height: 24,
                  ),

                  // card 002 //

                  SizedBox(
                    width: 375,
                    height: 90,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        color: style.gray,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 28, vertical: 16),
                        child: InkWell(
                          onTap: () {},
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Image.asset(
                                'assets/Issued ID.png',
                                height: 32,
                              ),

                              // column info //
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizeConfig().p14medB('Selfie', 14),
                                  const SizedBox(
                                    height: 8,
                                  ),
                                  SizeConfig().p12regB(
                                      'Take a picture of yourself in a clean and',
                                      12),
                                  const SizedBox(
                                    height: 4,
                                  ),
                                  SizeConfig().p12regB('environment', 12),
                                ],
                              ),
                            ],
                          ),
                        ),
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
