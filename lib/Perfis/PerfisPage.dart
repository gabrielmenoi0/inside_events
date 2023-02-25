import 'package:awesome_card/awesome_card.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:inside_events/utils/appColors.dart';
import 'package:like_button/like_button.dart';

import '../EventoEspecifico/eventoEspecifico.dart';

class Perfilpage extends StatefulWidget {
  const Perfilpage({super.key});

  @override
  State<Perfilpage> createState() => _PerfilpageState();
}

class _PerfilpageState extends State<Perfilpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Cor.corRosa,
            expandedHeight: 20,
          ),
          SliverToBoxAdapter(
              child: Padding(
            padding: const EdgeInsets.all(0),
            child: Padding(
              padding: const EdgeInsets.all(0),
              child: Column(
                children: [
                  Stack(
                    children: [
                      Container(
                        height: MediaQuery.of(context).size.height / 6,
                        decoration: BoxDecoration(
                          borderRadius:
                              BorderRadius.vertical(bottom: Radius.circular(0)),
                          gradient: LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.center,
                              colors: [
                                Cor.corRosa,
                                Cor.corBranco,
                              ]),
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              children: [
                                CircleAvatar(
                                  radius: 60,
                                  backgroundImage: AssetImage(
                                    'assets/imagemenu/grazi.jpg',
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 10.0),
                                  child: SizedBox(
                                    height: 40,
                                    child: ElevatedButton(
                                      onPressed: () {
                                        Navigator.of(context).push(
                                          MaterialPageRoute(
                                              builder: (_) => Eventos()),
                                        );
                                      },
                                      style: ElevatedButton.styleFrom(
                                          shape: const RoundedRectangleBorder(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(28)),
                                          ),
                                          elevation: 0,
                                          backgroundColor: Cor.corAzulClaro),
                                      child: Text(
                                        'Editar Perfil',
                                        style: GoogleFonts.montserrat(
                                            color: Cor.corBranco,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width / 2,
                              margin: EdgeInsets.only(top: 40),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Text(
                                    'Graziella',
                                    style: GoogleFonts.montserrat(
                                      fontSize: 14,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 6,
                                  ),
                                  Text(
                                    'Universitária',
                                    style: GoogleFonts.montserrat(
                                      fontSize: 14,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 6,
                                  ),
                                  Text(
                                    'Participou de 2 eventos',
                                    style: GoogleFonts.montserrat(
                                      fontSize: 14,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 6,
                                  ),
                                  Text(
                                    '2 seguidores  - 2 seguindo',
                                    style: GoogleFonts.montserrat(
                                      fontSize: 14,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 15,
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 30.0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text("Eventos que participou:",
                                style: GoogleFonts.montserrat(fontSize: 17)),
                          ],
                        ),
                      ),
                      Divider(
                        color: Cor.corEscuroAzul,
                        height: 25,
                        thickness: 2,
                        indent: MediaQuery.of(context).size.width / 13,
                        endIndent: MediaQuery.of(context).size.width / 3,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Row(
                          children: [
                            ContainersEventos("Hackathon Univem",
                                "assets/paracarrossel2.png", context),
                            ContainersEventos("Bootcamp Univem",
                                "assets/paracarrossel.png", context),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 50,
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 30.0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              "Locais que mais vai:",
                              style: GoogleFonts.montserrat(fontSize: 17),
                            ),
                          ],
                        ),
                      ),
                      Divider(
                        color: Cor.corEscuroAzul,
                        height: 25,
                        thickness: 2,
                        indent: MediaQuery.of(context).size.width / 13,
                        endIndent: MediaQuery.of(context).size.width / 3,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Row(
                          children: [
                            ContainersEventos("Hackathon Univem",
                                "assets/imagemenu/hackaUnimar.jpg", context),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          )),
        ],
      ),
    );
  }
}

ContainersEventos(String nome, String imagem, context) {
  return Center(
    child: Container(
      width: MediaQuery.of(context).size.width / 2.5,
      child: Card(
        color: Cor.corBranco,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        elevation: 0,
        child: Padding(
          padding: const EdgeInsets.all(5.0),
          child: Column(
            children: [
              Container(
                color: Colors.transparent,
                child: CircleAvatar(
                  radius: 35,
                  backgroundImage: AssetImage(
                    imagem,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(3),
                child: Text(
                  nome,
                  textAlign: TextAlign.center,
                  style: GoogleFonts.montserrat(
                    color: Cor.corPreto,
                    fontSize: 15,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    ),
  );
}
