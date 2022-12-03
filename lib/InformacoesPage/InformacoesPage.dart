import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:inside_events/MenuPageG/MenuPage.dart';

class InformationPge extends StatefulWidget {
  const InformationPge({super.key});

  @override
  State<InformationPge> createState() => _InformationPgeState();
}

class _InformationPgeState extends State<InformationPge> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(top: 0, left: 0, right: 0),
          child: ListView(
            scrollDirection: Axis.vertical,
            children: [
              Stack(
                children: [
                  CarouselSlider(
                    options: CarouselOptions(
                        aspectRatio: 2.0,
                        height: 250.0,
                        autoPlay: true,
                        viewportFraction: 1.0),
                    items: [1, 2, 3, 4, 5].map(
                      (i) {
                        return Builder(
                          builder: (BuildContext context) {
                            return Container(
                                width: MediaQuery.of(context).size.width,
                                margin:
                                    const EdgeInsets.symmetric(horizontal: 0),
                                decoration:
                                    const BoxDecoration(color: Colors.amber),
                                child: Text(
                                  'text $i',
                                  style: TextStyle(fontSize: 16.0),
                                  textAlign: TextAlign.center,
                                ));
                          },
                        );
                      },
                    ).toList(),
                  ),
                  IconButton(
                    onPressed: () {
                      Navigator.of(context).pop(
                        MaterialPageRoute(
                          builder: (_) => const MenuPage(
                            title: '',
                          ),
                        ),
                      );
                    },
                    icon: const Icon(Icons.arrow_back_ios_new_outlined),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15),
                child: Text(
                  'Hackaton Univem',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.montserrat(
                      fontSize: 25,
                      color: const Color(0xff2B4F71),
                      fontWeight: FontWeight.w600),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15, left: 20, right: 20),
                child: Text(
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent quis luctus purus. Pellentesque pretium quis enim ut porttitor. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos',
                  textAlign: TextAlign.justify,
                  style: GoogleFonts.montserrat(
                      fontSize: 14,
                      color: Colors.black,
                      fontWeight: FontWeight.w500),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15, left: 20),
                child: Text(
                  "R\$00,01",
                  textAlign: TextAlign.left,
                  style: GoogleFonts.montserrat(
                      fontSize: 20,
                      color: const Color(0xff2B4F71),
                      fontWeight: FontWeight.w600),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15, left: 20, right: 20),
                child: Row(
                  children: <Widget>[
                    const Icon(
                      Icons.chair_alt_outlined,
                    ),
                    Text(
                      '89 Ingressos restantes',
                      style: GoogleFonts.montserrat(
                          fontSize: 14, fontWeight: FontWeight.w500),
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 40, right: 40, top: 30),
                child: SizedBox(
                  width: 60,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(28),
                        ),
                      ),
                      elevation: 0,
                      backgroundColor: const Color(0xffACD7FF),
                    ),
                    child: Text(
                      'INSCREVA-SE',
                      style: GoogleFonts.montserrat(
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                          fontSize: 20),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Divider(
                color: Colors.grey,
              ),
              const SizedBox(
                height: 15,
              ),
              Text(
                'Você também gostaria!',
                style: GoogleFonts.montserrat(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                  color: const Color(0xff2B4F71),
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    color: Colors.transparent,
                    child: Padding(
                      padding:
                          const EdgeInsets.only(top: 10, left: 20, bottom: 10),
                      child: Column(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                width: 5,
                                color: const Color(0xffCFE2FF),
                              ),
                              borderRadius: BorderRadius.circular(6),
                            ),
                            child: Image.asset(
                              "assets/imagemenu/grazi.jpg",
                              height: MediaQuery.of(context).size.height / 5,
                            ),
                          ),
                          Text(
                            "Evento Nome",
                            style: GoogleFonts.montserrat(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "Local",
                            style: GoogleFonts.montserrat(fontSize: 17),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    color: Colors.transparent,
                    child: Padding(
                      padding:
                          const EdgeInsets.only(top: 10, right: 20, bottom: 10),
                      child: Column(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                width: 5,
                                color: const Color(0xffCFE2FF),
                              ),
                              borderRadius: BorderRadius.circular(6),
                            ),
                            child: Image.asset(
                              "assets/imagemenu/grazi.jpg",
                              height: MediaQuery.of(context).size.height / 5,
                            ),
                          ),
                          Text(
                            "Evento Nome",
                            style: GoogleFonts.montserrat(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "Local",
                            style: GoogleFonts.montserrat(fontSize: 17),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
