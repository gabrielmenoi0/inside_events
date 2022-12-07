import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:like_button/like_button.dart';

class cardRegistro extends StatefulWidget {
  cardRegistro({Key? key, required this.imagensCard}) : super(key: key);

  late List<Widget> imagensCard = imagensCard;

  @override
  State<cardRegistro> createState() => _cardRegistroState();
}

class _cardRegistroState extends State<cardRegistro> {
  bool curtir = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(0),
      child: Stack(children: [
        Positioned(
          child: Material(
            child: Container(
              height: MediaQuery.of(context).size.height / 4,
              width: MediaQuery.of(context).size.width / 1.05,
              decoration: BoxDecoration(
                color: const Color(0xFFCFE2FF),
                borderRadius: BorderRadius.circular(10.0),
              ),
            ),
          ),
        ),
        Positioned(
          top: -10,
          left: 5,
          child: Card(
            color: const Color(0xFFCFE2FF),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
            elevation: 0,
            child: Column(
              children: [
                Container(
                  color: Colors.transparent,
                  height: MediaQuery.of(context).size.height / 6,
                  width: 160,
                  child: CarouselSlider(
                    options: CarouselOptions(
                      autoPlayCurve: Curves.easeInOutSine,
                      viewportFraction: 1,
                      aspectRatio: 1,
                      autoPlay: true,
                      autoPlayInterval: const Duration(seconds: 3),
                    ),
                    items: widget.imagensCard.map((Image) => Image).toList(),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(0),
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(28)),
                        ),
                        elevation: 0,
                        backgroundColor: const Color(0xffACD7FF)),
                    child: Text(
                      'Sobre o evento!',
                      style: GoogleFonts.montserrat(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        Positioned(
          top: 13,
          left: 180,
          child: Container(
            color: Colors.transparent,
            height: 150,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Hackathon Univem",
                  style: GoogleFonts.montserrat(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF363f93),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  "R\$ 00,01",
                  style: GoogleFonts.montserrat(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey),
                ),
                const SizedBox(
                  height: 5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      "12/12/2023",
                      style: GoogleFonts.montserrat(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF363f93),
                      ),
                    ),
                    Padding(
                        padding: EdgeInsets.only(left: 50),
                        child: const LikeButton()),
                  ],
                ),
              ],
            ),
          ),
        ),
        Positioned(
          top: 160,
          left: 280,
          child: Container(
            color: Color(0xffFF9839),
            height: MediaQuery.of(context).size.height / 30,
            width: MediaQuery.of(context).size.height / 10,
            child: Center(
              child: Text(
                "Inscrito",
                style: GoogleFonts.montserrat(
                    fontWeight: FontWeight.bold, color: Colors.white),
              ),
            ),
          ),
        ),
      ]),
    );
  }
}
