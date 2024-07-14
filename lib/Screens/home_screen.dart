import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  final List filterCategory = const [
    'Healthy',
    'Technology',
    'Finance',
    'Arts',
    'Sports'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Container(
          height: 60,
          decoration: const BoxDecoration(
            color: Colors.white,
          ),
          child: Expanded(
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                FloatingActionButton(
                  backgroundColor: Colors.transparent,
                  elevation: 0,
                  onPressed: () {},
                  child: Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Column(
                      children: [
                        SvgPicture.asset('assets/images/House.svg'),
                        const Text(
                          'Home',
                          style: TextStyle(color: Colors.black, fontSize: 10),
                        )
                      ],
                    ),
                  ),
                ),
                FloatingActionButton(
                  backgroundColor: Colors.transparent,
                  elevation: 0,
                  onPressed: () {},
                  child: Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Column(
                      children: [
                        SvgPicture.asset('assets/images/heart.svg'),
                        const Text(
                          'Favourite',
                          style: TextStyle(color: Colors.black, fontSize: 10),
                        )
                      ],
                    ),
                  ),
                ),
                FloatingActionButton(
                  backgroundColor: Colors.transparent,
                  elevation: 0,
                  onPressed: () {},
                  child: Column(
                    children: [
                      SvgPicture.asset('assets/images/Face.svg'),
                      const Text(
                        'Profile',
                        style: TextStyle(color: Colors.black, fontSize: 10),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 40,
              ),
              Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(right: 8.0),
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Dogecoin to the Moon...',
                          hintStyle: GoogleFonts.nunito(
                            fontWeight: FontWeight.w600,
                            fontSize: 12,
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(16),
                            borderSide: const BorderSide(
                              width: 1,
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(16),
                            borderSide: const BorderSide(
                              width: 1,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: 33,
                    height: 32,
                    padding: const EdgeInsets.all(6),
                    decoration: const BoxDecoration(
                        color: Color(0xffFF3A44), shape: BoxShape.circle),
                    child: SvgPicture.asset('assets/images/bell.svg'),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Text(
                    'Latest News',
                    style: GoogleFonts.openSans(
                        fontWeight: FontWeight.w700, fontSize: 18),
                  ),
                  const Spacer(),
                  Padding(
                    padding: const EdgeInsets.only(right: 8.0),
                    child: Text(
                      'See All',
                      style: GoogleFonts.nunito(
                          fontWeight: FontWeight.w600,
                          fontSize: 12,
                          color: const Color(0xff0080FF)),
                    ),
                  ),
                  const Icon(
                    Icons.arrow_forward,
                    color: Color(0xff0080FF),
                  )
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 240 / 812,
                child: Expanded(
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 3,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.only(right: 8.0),
                        child: Container(
                          height:
                              MediaQuery.of(context).size.height * 240 / 812,
                          width: MediaQuery.of(context).size.width * 345 / 375,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            image: const DecorationImage(
                                image: AssetImage(
                                  'assets/images/Man 2.png',
                                ),
                                fit: BoxFit.fill),
                          ),
                          child: Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 16.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'by Ryan Browne',
                                  style: GoogleFonts.nunito(
                                      fontWeight: FontWeight.w800,
                                      fontSize: 10,
                                      color: Colors.white),
                                ),
                                Text(
                                  'Crypto investors should be prepared to lose all their money, BOE governor says',
                                  style: GoogleFonts.nunito(
                                      fontWeight: FontWeight.w800,
                                      fontSize: 16,
                                      color: Colors.white),
                                ),
                                const SizedBox(
                                  height: 50,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 8.0),
                                  child: Text(
                                    '“I’m going to say this very bluntly again,” he added. “Buy them only if you’re prepared to lose all your money.”',
                                    style: GoogleFonts.nunito(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 10,
                                        color: Colors.white),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              SizedBox(
                height: 40,
                child: Expanded(
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: filterCategory.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.only(right: 8.0),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              elevation: 0, backgroundColor: Colors.white),
                          onPressed: () {},
                          child: Text(
                            filterCategory[index],
                            style: GoogleFonts.nunito(
                                fontWeight: FontWeight.w600,
                                fontSize: 12,
                                color: Colors.black),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 8.0),
                child: Container(
                  height: MediaQuery.of(context).size.height * 128 / 812,
                  width: MediaQuery.of(context).size.width * 345 / 375,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    image: const DecorationImage(
                        image: AssetImage(
                          'assets/images/doc_speaker.jpg',
                        ),
                        fit: BoxFit.fill),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 8, horizontal: 16.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '5 things to know about the \'conundrum\' of lupus',
                          style: GoogleFonts.nunito(
                              fontWeight: FontWeight.w600,
                              fontSize: 14,
                              color: Colors.white),
                        ),
                        const Spacer(),
                        Row(
                          children: [
                            Text(
                              'Matt Villano',
                              style: GoogleFonts.nunito(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 12,
                                  color: Colors.white),
                            ),
                            const Spacer(),
                            Text(
                              'Sunday, 9 May 2021',
                              style: GoogleFonts.nunito(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 12,
                                  color: Colors.white),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 8.0),
                child: Container(
                  height: MediaQuery.of(context).size.height * 128 / 812,
                  width: MediaQuery.of(context).size.width * 345 / 375,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    image: const DecorationImage(
                        image: AssetImage(
                          'assets/images/youga.jpg',
                        ),
                        fit: BoxFit.fill),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 8, horizontal: 16.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '4 ways families can ease anxiety together',
                          style: GoogleFonts.nunito(
                              fontWeight: FontWeight.w600,
                              fontSize: 14,
                              color: Colors.white),
                        ),
                        const Spacer(),
                        Row(
                          children: [
                            Text(
                              'Zain Korsgaard',
                              style: GoogleFonts.nunito(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 12,
                                  color: Colors.white),
                            ),
                            const Spacer(),
                            Text(
                              'Sunday, 9 May 2021',
                              style: GoogleFonts.nunito(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 12,
                                  color: Colors.white),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 8.0),
                child: Container(
                  height: MediaQuery.of(context).size.height * 128 / 812,
                  width: MediaQuery.of(context).size.width * 345 / 375,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    image: const DecorationImage(
                        image: AssetImage(
                          'assets/images/wedding.png',
                        ),
                        fit: BoxFit.fill),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 8, horizontal: 16.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'What to do if you\'re planning or attending a wedding during the pandemic',
                          style: GoogleFonts.nunito(
                              fontWeight: FontWeight.w600,
                              fontSize: 14,
                              color: Colors.white),
                        ),
                        const Spacer(),
                        Row(
                          children: [
                            Text(
                              'Kristen Rogers',
                              style: GoogleFonts.nunito(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 12,
                                  color: Colors.white),
                            ),
                            const Spacer(),
                            Text(
                              'Sunday, 9 May 2021',
                              style: GoogleFonts.nunito(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 12,
                                  color: Colors.white),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
