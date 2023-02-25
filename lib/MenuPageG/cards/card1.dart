import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:inside_events/utils/appColors.dart';

class Card1 extends StatefulWidget {
  Card1(
      {Key? key,
      required this.imagensCard,
      required this.titulo,
      required this.descricao,
      required this.horario})
      : super(key: key);
  late String titulo;
  late String descricao;
  late String horario;
  late List<Widget> imagensCard = imagensCard;

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
                height: MediaQuery.of(context).size.height / 4.5,
                width: MediaQuery.of(context).size.width / 1.15,
                decoration: BoxDecoration(
                  color: Cor.corBranco,
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
            ),
          ),
          Positioned(
            top: 0,
            left: 2,
            bottom: 4,
            child: Card(
              color: Cor.corBranco,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
              elevation: 0,
              child: Container(
                color: Colors.transparent,
                height: 174,
                width: 160,
                child: CarouselSlider(
                  options: CarouselOptions(
                    autoPlayCurve: Curves.easeInOutSine,
                    viewportFraction: 1,
                    aspectRatio: 2.4,
                    autoPlay: true,
                    autoPlayInterval: const Duration(seconds: 3),
                  ),
                  items: widget.imagensCard.map((Image) => Image).toList(),
                ),
              ),
            ),
          ),
          Positioned(
            top: 10,
            left: 175,
            child: Container(
              color: Colors.transparent,
              height: 190,
              width: 150,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.titulo,
                    style: GoogleFonts.montserrat(
                      fontSize: 13,
                      fontWeight: FontWeight.bold,
                      color: Cor.corRoxo,
                    ),
                  ),
                  Text(
                    widget.descricao,
                    textAlign: TextAlign.start,
                    style: GoogleFonts.montserrat(
                        fontSize: 10, fontWeight: FontWeight.w500),
                  ),
                  Divider(
                    color: Cor.corCinza,
                  ),
                  Text(
                    widget.horario,
                    style: GoogleFonts.montserrat(
                      fontSize: 10,
                      fontWeight: FontWeight.bold,
                      color: Cor.corRoxo,
                    ),
                  ),
                  const SizedBox(
                    height: 0.5,
                  ),
                  Center(
                    child: TextButton(
                      onPressed: () {},
                      style: ButtonStyle(
                        foregroundColor:
                            MaterialStateProperty.all(Cor.corAzulClaro),
                        backgroundColor:
                            MaterialStateProperty.all(Cor.corBranco),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                            side: const BorderSide(color: Cor.corBranco),
                          ),
                        ),
                      ),
                      child: Text(
                        "SAIBA MAIS",
                        style: GoogleFonts.montserrat(
                          fontSize: 10,
                          fontWeight: FontWeight.bold,
                          color: Cor.corRoxo,
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
