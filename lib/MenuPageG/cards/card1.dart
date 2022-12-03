import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:carousel_slider/carousel_controller.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:carousel_slider/carousel_options.dart';

class Card1 extends StatefulWidget {
  Card1({Key? key, required this.imagensCard}) : super(key: key);

  late List<Image> imagensCard = imagensCard;

  @override
  _Card1State createState() => _Card1State();
}

class _Card1State extends State<Card1> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(0),
      child: Stack(
        children: [
          Positioned(
            child: Material(
              child: Container(
                height: 180,
                width: 340,
                decoration: BoxDecoration(
                  color: const Color(0xFFCFE2FF),
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
            ),
          ),
          Positioned(
            top: 0,
            left: 2,
            child: Card(
              color: Color(0xFFCFE2FF),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
              elevation: 10,
              child: Container(
                color: Colors.transparent,
                height: 170,
                width: 160,
                child: CarouselSlider(
                  options: CarouselOptions(
                    viewportFraction: 3,
                    autoPlay: true,
                    autoPlayInterval: const Duration(seconds: 2),
                  ),
                  items: widget.imagensCard.map((Image) => Image).toList(),
                ),
              ),
            ),
          ),
          Positioned(
            top: 40,
            left: 180,
            child: Container(
              height: 150,
              width: 130,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "EVENTO",
                    style: TextStyle(
                        fontSize: 15,
                        color: Color(0xFF363f93),
                        fontWeight: FontWeight.bold),
                  ),
                  const Text(
                    "Descrição",
                    style: TextStyle(
                        fontSize: 10,
                        color: Colors.grey,
                        fontWeight: FontWeight.bold),
                  ),
                  const Divider(
                    color: Color.fromARGB(255, 175, 171, 171),
                  ),
                  const Text(
                    "Horário",
                    style: TextStyle(
                        fontSize: 10,
                        color: Color(0xFF363f93),
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Center(
                    child: TextButton(
                      onPressed: () {},
                      child: Text("SAIBA MAIS"),
                      style: ButtonStyle(
                        foregroundColor:
                            MaterialStateProperty.all(const Color(0xFFA1C7FF)),
                        backgroundColor:
                            MaterialStateProperty.all(Colors.white),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                            side: const BorderSide(color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
