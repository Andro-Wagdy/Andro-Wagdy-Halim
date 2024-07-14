import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ThirdScreen extends StatelessWidget {
  const ThirdScreen({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        shape: const CircleBorder(),
        backgroundColor: const Color(0xffFF3A44),
        onPressed: () {},
        child: SvgPicture.asset('assets/images/doubleHeart.svg'),
      ),
      body: SingleChildScrollView(
        child: Stack(children: [
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 400 / 812,
            child: Image.asset(
              "assets/images/Man 2.png",
              fit: BoxFit.fill,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 374),
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 438 / 812,
              decoration: const BoxDecoration(
                  color: Color.fromARGB(0, 173, 171, 171),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(24),
                      topRight: Radius.circular(24))),
              child: const Padding(
                padding:
                    EdgeInsets.only(top: 88, right: 15, left: 15, bottom: 16),
                child: Text(
                  "LONDON — Cryptocurrencies \"have no intrinsic Governor\nvalue\" and people who invest in them should be\nprepared to lose all their money, Bank of England\nAndrew Bailey said.\n\nDigital currencies like bitcoin, ether and even dogecoin\nhave been on a tear this year, reminding some\ninvestors of the 2017 crypto bubble in which bitcoin\nblasted toward \$20,000, only to sink as low as \$3,122\na year later.\n\nAsked at a press conference Thursday about the\nrising value of cryptocurrencies, Bailey said: They\nhave no intrinsic value. That doesn’t mean to say\npeople don’t put value on them, because they can\nhave extrinsic value. But they have no intrinsic value.",
                  style: TextStyle(
                    color: Colors.black,
                    fontFamily: "Nunito",
                    fontWeight: FontWeight.w900,
                    fontSize: 14,
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
                right: 32, left: 32, top: 295, bottom: 376),
            child: Container(
              margin: const EdgeInsets.only(
                  left: 24, right: 24, top: 16, bottom: 16),
              height: MediaQuery.of(context).size.height * 141 / 812,
              width: MediaQuery.of(context).size.width * 311 / 375,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: Colors.grey.withOpacity(1),
              ),
              child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 16,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 24),
                      child: Text(
                        "Sunday, 9 May 2021",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                            fontFamily: "Nunito",
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 24),
                      child: Text(
                        "Crypto investors should be\nprepared to lose all their\nmoney, BOE governor says",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 10,
                            fontFamily: "New York Small",
                            fontWeight: FontWeight.w700),
                      ),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 24),
                      child: Text(
                        "Published by Ryan Browne",
                        style: TextStyle(
                            fontSize: 10,
                            fontFamily: "Nunito",
                            fontWeight: FontWeight.w800,
                            color: Colors.black),
                      ),
                    )
                  ]),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
                right: 328, left: 15, top: 52, bottom: 728),
            child: CircleAvatar(
              backgroundColor: Colors.grey.withOpacity(0.5),
              radius: 20,
              child: SvgPicture.asset("assets/images/back.svg"),
            ),
          ),
        ]),
      ),
    );
  }
}
