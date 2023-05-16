import 'package:flutter/material.dart';
import 'package:wisewallet/Screens/confirmEmail.dart';
import '../classes/media_style.dart';
import '../classes/style.dart';

class Support extends StatefulWidget {
  const Support({super.key});

  @override
  State<Support> createState() => _SupportState();
}

class _SupportState extends State<Support> {
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
            padding: EdgeInsets.only(left: 16, right: 16, top: 2),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Row(
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
                  const SizedBox(width: 60),
                  SizeConfig().p18medB('Support Channel', 18),
                ],
              )
            ]),
          ))
        ],
      ),

      // body section //

      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Expanded(
              child: Padding(
            padding: const EdgeInsets.only(left: 24, right: 24, top: 40),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // header section //
                  Align(
                    alignment: Alignment.center,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset('assets/empty_state.png'),
                        const SizedBox(
                          height: 36,
                        ),
                        const Text(
                          'Unavailable at the moment, coming soon!',
                          textAlign: TextAlign.center,
                          style: TextStyle(color: style.gray01, fontSize: 20),
                        )
                      ],
                    ),
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
