import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:inside_events/Drawer_and_AppBar/drawer.dart';
import 'package:inside_events/QrPage/QrPage.dart';
import 'package:inside_events/utils/appColors.dart';
import 'package:like_button/like_button.dart';

class cardRegistro extends StatefulWidget {
  cardRegistro(
      {Key? key,
      required this.imagensCard,
      required this.titulo,
      required this.horario,
      required this.cor,
      required this.situacao})
      : super(key: key);

  late List<Widget> imagensCard = imagensCard;
  late String titulo;
  late String horario;
  late Color cor;

  late String situacao;

  @override
  State<cardRegistro> createState() => _cardRegistroState();
}

class _cardRegistroState extends State<cardRegistro> {
  bool curtir = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
              color: Cor.corCinza.withOpacity(0.5),
              blurRadius: 6,
              offset: Offset(3, 3))
        ],
      ),
      child: Stack(children: [
        Positioned(
          child: Material(
            child: Container(
              height: MediaQuery.of(context).size.height / 3.5,
              width: MediaQuery.of(context).size.width / 1.05,
              decoration: BoxDecoration(
                color: Cor.corBranco,
                borderRadius: BorderRadius.circular(10.0),
              ),
            ),
          ),
        ),
        Positioned(
          top: -10,
          left: 5,
          child: Card(
            color: Cor.corBranco,
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
                        backgroundColor: Cor.corAzulClaro),
                    child: Text(
                      'Sobre o evento!',
                      style: GoogleFonts.montserrat(
                          color: Cor.corBranco, fontWeight: FontWeight.bold),
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
            width: MediaQuery.of(context).size.width / 2,
            color: Colors.transparent,
            height: 150,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.titulo,
                  style: GoogleFonts.montserrat(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Cor.corRoxo,
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
                      color: Cor.corCinza),
                ),
                const SizedBox(
                  height: 5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      widget.horario,
                      style: GoogleFonts.montserrat(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Cor.corRoxo,
                      ),
                    ),
                    Padding(
                        padding: EdgeInsets.only(right: 20),
                        child: const LikeButton()),
                  ],
                ),
              ],
            ),
          ),
        ),
        Positioned(
          top: 160,
          left: 255,
          child: Container(
            color: widget.cor,
            height: MediaQuery.of(context).size.height / 30,
            width: MediaQuery.of(context).size.width / 4,
            child: Center(
              child: Text(
                widget.situacao,
                style: GoogleFonts.montserrat(
                    fontWeight: FontWeight.bold, color: Cor.corBranco),
              ),
            ),
          ),
        ),
      ]),
    );
  }
}
