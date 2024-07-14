import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    List names = ["Recommende", "Lates", "Most Viewed"];
    List names2 = ["Channel", "Following"];

    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.only(left: 15, right: 15),
      child: Column(children: [
        const SizedBox(
          height: 16,
        ),
        TextField(
          decoration: InputDecoration(
            filled: true,
            fillColor: const Color(0x000c7c05),
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(16)),
            hintText: "Covid New Variant",
            hintStyle: const TextStyle(
              color: Colors.black,
              fontSize: 12,
              fontFamily: 'Nunito',
              fontWeight: FontWeight.w600,
            ),
            suffixIcon: const Padding(
              padding: EdgeInsets.only(right: 16),
              child: Icon(Icons.close),
            ),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(children: [
            Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: ElevatedButton(
                  onPressed: () {
                    showModalBottomSheet(
                        context: context,
                        builder: (context) => Container(
                              width: MediaQuery.of(context).size.width,
                              height: MediaQuery.of(context).size.height *
                                  315 /
                                  812,
                              decoration: const BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(14),
                                      topRight: Radius.circular(14))),
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(left: 25, top: 33),
                                child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          const Text(
                                            "Filter",
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 22,
                                                fontFamily: "Nunito",
                                                fontWeight: FontWeight.w700),
                                          ),
                                          const Spacer(),
                                          Padding(
                                              padding: const EdgeInsets.only(
                                                  right: 15),
                                              child: ElevatedButton(
                                                style: ElevatedButton.styleFrom(
                                                  backgroundColor: Colors.white,
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            16),
                                                  ),
                                                ),
                                                onPressed: () {},
                                                child: Row(
                                                  children: [
                                                    SvgPicture.asset(
                                                        "assets/images/trash.svg"),
                                                    const SizedBox(
                                                      width: 8,
                                                    ),
                                                    const Text(
                                                      "Reset",
                                                      style: TextStyle(
                                                          color: Colors.black,
                                                          fontSize: 12,
                                                          fontFamily: "Nunito",
                                                          fontWeight:
                                                              FontWeight.w600),
                                                    ),
                                                  ],
                                                ),
                                              ))
                                        ],
                                      ),
                                      const SizedBox(
                                        height: 25,
                                      ),
                                      const Text(
                                        "Sort By",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 14,
                                            fontFamily: "Nunito",
                                            fontWeight: FontWeight.w600),
                                      ),
                                      const SizedBox(
                                        height: 8,
                                      ),
                                      Row(
                                        children: [
                                          for (int i = 0; i < 3; i++)
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  right: 8),
                                              child: (ElevatedButton(
                                                  style: ElevatedButton.styleFrom(
                                                      shape:
                                                          RoundedRectangleBorder(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          16)),
                                                      backgroundColor:
                                                          Colors.white),
                                                  onPressed: () {},
                                                  child: Text(
                                                    names[i],
                                                    style: const TextStyle(
                                                        color: Colors.black,
                                                        fontSize: 12,
                                                        fontFamily: "Nunito",
                                                        fontWeight:
                                                            FontWeight.w600),
                                                  ))),
                                            ),
                                        ],
                                      ),
                                      Row(children: [
                                        for (int i = 0; i < 2; i++)
                                          Padding(
                                            padding:
                                                const EdgeInsets.only(right: 8),
                                            child: (ElevatedButton(
                                                style: ElevatedButton.styleFrom(
                                                    shape:
                                                        RoundedRectangleBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        16)),
                                                    backgroundColor:
                                                        Colors.white),
                                                onPressed: () {},
                                                child: Text(
                                                  names2[i],
                                                  style: const TextStyle(
                                                      color: Colors.black,
                                                      fontSize: 12,
                                                      fontFamily: "Nunito",
                                                      fontWeight:
                                                          FontWeight.w600),
                                                ))),
                                          ),
                                      ]),
                                      const SizedBox(
                                        height: 32,
                                      ),
                                      Row(
                                        children: [
                                          Expanded(
                                            child: Padding(
                                              padding: const EdgeInsets.only(
                                                  right: 15),
                                              child: ElevatedButton(
                                                  style: ElevatedButton.styleFrom(
                                                      shape:
                                                          RoundedRectangleBorder(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          24)),
                                                      backgroundColor:
                                                          Colors.red),
                                                  onPressed: () {},
                                                  child: const Text(
                                                    "Save",
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 16,
                                                        fontFamily: "Nunito",
                                                        fontWeight:
                                                            FontWeight.w800),
                                                  )),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ]),
                              ),
                            ));
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16))),
                  child: const Padding(
                    padding:
                        EdgeInsets.only(right: 16, left: 16, top: 8, bottom: 8),
                    child: Text(
                      "Filter",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                          fontFamily: "Nunito",
                          fontWeight: FontWeight.w600),
                    ),
                  )),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16))),
                  child: const Padding(
                    padding:
                        EdgeInsets.only(right: 16, left: 16, top: 8, bottom: 8),
                    child: Text(
                      "Healthy",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 12,
                          fontFamily: "Nunito",
                          fontWeight: FontWeight.w600),
                    ),
                  )),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16))),
                  child: const Padding(
                    padding:
                        EdgeInsets.only(right: 16, left: 16, top: 8, bottom: 8),
                    child: Text(
                      "Technology",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 12,
                        fontFamily: "Nunito",
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  )),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16))),
                  child: const Padding(
                    padding:
                        EdgeInsets.only(right: 16, left: 16, top: 8, bottom: 8),
                    child: Text(
                      "Finance",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 12,
                          fontFamily: "Nunito",
                          fontWeight: FontWeight.w600),
                    ),
                  )),
            ),
          ]),
        ),
        const SizedBox(
          height: 24,
        ),
        RichText(
          text: const TextSpan(
            text: 'About 11,130,000 results for',
            style: TextStyle(
                color: Colors.black,
                fontSize: 14,
                fontFamily: "Nunito",
                fontWeight: FontWeight.w400),
            children: <TextSpan>[
              TextSpan(
                text: ' COVID New Variant',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontFamily: "Nunito",
                  fontSize: 17,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Container(
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(8)),
          height: MediaQuery.of(context).size.height * 128 / 812,
          width: MediaQuery.of(context).size.width,
          child: Image.asset(
            "assets/images/wedding.png",
            fit: BoxFit.fill,
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        Container(
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(8)),
          height: MediaQuery.of(context).size.height * 128 / 812,
          width: MediaQuery.of(context).size.width,
          child: Image.asset(
            "assets/images/doc_speaker.jpg",
            fit: BoxFit.fill,
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        Container(
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(8)),
          height: MediaQuery.of(context).size.height * 128 / 812,
          width: MediaQuery.of(context).size.width,
          child: Image.asset(
            "assets/images/doc_speaker.jpg",
            fit: BoxFit.fill,
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        Container(
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(8)),
          height: MediaQuery.of(context).size.height * 128 / 812,
          width: MediaQuery.of(context).size.width,
          child: Image.asset(
            "assets/images/doc_speaker.jpg",
            fit: BoxFit.fill,
          ),
        ),
      ]),
    ));
  }
}
