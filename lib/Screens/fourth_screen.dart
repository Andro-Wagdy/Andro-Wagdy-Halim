import 'package:flutter/material.dart';

class FourthScreen extends StatelessWidget {
  const FourthScreen({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: const Icon(Icons.arrow_back_ios),
        iconTheme: const IconThemeData(color: Colors.black),
        title: const Text(
          "Hot Updates",
          style: TextStyle(
              color: Colors.red,
              fontSize: 17,
              fontFamily: "SF Pr Text",
              fontWeight: FontWeight.w600),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(right: 15, left: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 16,
              ),
              Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height * 128 / 812,
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(8)),
                child: const Image(
                  image: AssetImage(
                    "assets/images/Man3.png",
                  ),
                  fit: BoxFit.fill,
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              const Text(
                "Monday, 10 May 2021",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 12,
                    fontFamily: "Nunito",
                    fontWeight: FontWeight.w300),
              ),
              const SizedBox(
                height: 4,
              ),
              const Text(
                "WHO classifies triple-mutant Covid variant from\nIndia as global health risk",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                    fontFamily: "New York Small",
                    fontWeight: FontWeight.w600),
              ),
              const SizedBox(
                height: 8,
              ),
              RichText(
                text: const TextSpan(
                  text:
                      'A World Health Organization official said Monday it is\nreclassifying the highly contagious triple-mutant Covid\nvariant spreading in India as a “variant of concern,”\nindicating that it’s become a...',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontFamily: "Nunito",
                      fontWeight: FontWeight.w400),
                  children: <TextSpan>[
                    TextSpan(
                      text: 'Read More',
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        color: Colors.blue,
                        fontFamily: "Nunito",
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              const Text(
                "Published by Berkeley Lovelace Jr.",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 12,
                    fontFamily: "Nunito",
                    fontWeight: FontWeight.w700),
              ),
              const SizedBox(
                height: 24,
              ),
              Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height * 128 / 812,
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(8)),
                child: const Image(
                  image: AssetImage(
                    "assets/images/wedding.png",
                  ),
                  fit: BoxFit.fill,
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              const Text(
                "Sunday, 9 May 2021",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 12,
                    fontFamily: "Nunito",
                    fontWeight: FontWeight.w300),
              ),
              const SizedBox(
                height: 4,
              ),
              const Text(
                "What to do if you're planning or attending a\nwedding during the pandemic",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                    fontFamily: "New York Small",
                    fontWeight: FontWeight.w600),
              ),
              const SizedBox(
                height: 8,
              ),
              RichText(
                text: const TextSpan(
                  text:
                      'They had the artsy, rustic venue, the tailored dress and\na guest list including about 150 of their closest friends\nand family. But the pandemic had other plans, forcing\nCarly Chalmers and Mitchell Gauvin to make a difficult\ndecision about their wedding... ',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontFamily: "Nunito",
                      fontWeight: FontWeight.w400),
                  children: <TextSpan>[
                    TextSpan(
                      text: 'Read More',
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        color: Colors.blue,
                        fontFamily: "Nunito",
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              const Text(
                "Published by Kristen Rogers",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 12,
                    fontFamily: "Nunito",
                    fontWeight: FontWeight.w700),
              )
            ],
          ),
        ),
      ),
    );
  }
}
