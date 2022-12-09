import 'package:awesome_card/awesome_card.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:like_button/like_button.dart';

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
          backgroundColor: Colors.pink,
           expandedHeight: 20,
          ),
          SliverToBoxAdapter(
            child: Padding(
                padding: const EdgeInsets.all(0),
                child: Padding(
                  padding: const EdgeInsets.all(0),
                  child:
                      Column(
                        children: [
                          Stack(
                            children: [
                              Container(
                                height: 60,
                                decoration: const BoxDecoration(
                                  borderRadius: BorderRadius.vertical(
                                      bottom: Radius.circular(0)),
                                  gradient: LinearGradient(
                                      transform: GradientRotation(10),
                                      begin: Alignment.topCenter,
                                      end: Alignment.center,
                                      colors: [
                                        Colors.pink,
                                        Colors.white,
                                      ]),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 20),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    CircleAvatar(
                                      radius: 60,
                                      backgroundImage: AssetImage(
                                        'assets/imagemenu/grazi.jpg',
                                      ),
                                    ),
                                    Padding(
                                      padding:
                                          EdgeInsets.symmetric(vertical: 60.0),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          Text(
                                            'Graziella',
                                            style: GoogleFonts.montserrat(
                                              fontSize: 14,
                                            ),
                                          ),
                                          Text(
                                            'grazielladev@gmail.com',
                                            style: GoogleFonts.montserrat(
                                              fontSize: 14,
                                            ),
                                          ),
                                          Text(
                                            'Participou de 2 eventos',
                                            style: GoogleFonts.montserrat(
                                              fontSize: 14,
                                            ),
                                          ),
                                          Text(
                                            '2 seguidores  - 2 seguindo',
                                            style: GoogleFonts.montserrat(
                                              fontSize: 14,
                                            ),
                                          ),
                                        ],
                                      ),
                                    )
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
                                    Text("Eventos que particou:"),
                                  ],
                                ),
                              ),
                              Divider(
                                color: Color(0xff2B4F71),
                                height: 25,
                                thickness: 2,
                                indent: MediaQuery.of(context).size.width / 13,
                                endIndent:
                                    MediaQuery.of(context).size.width / 3,
                              ),
                                Padding(
                                  padding: const EdgeInsets.all(20.0),
                                  child: Row(
                                  children: [
                                    ContainersEventos("Hackathon Univem", "assets/paracarrossel2.png"),
                                    ContainersEventos("Bootcamp Univem", "assets/paracarrossel.png"),
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
                                    Text("Locais que mais vai:"),
                                  ],
                                ),
                              ),
                              Divider(
                                color: Color(0xff2B4F71),
                                height: 25,
                                thickness: 2,
                                indent: MediaQuery.of(context).size.width / 13,
                                endIndent:
                                MediaQuery.of(context).size.width / 3,
                              ),
                              Padding(
                                padding: const EdgeInsets.all(20.0),
                                child: Row(
                                  children: [
                                    ContainersEventos("Hackathon Univem", "assets/imagemenu/hackaUnimar.jpg"),
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

ContainersEventos(String nome, String imagem) {
  return Center(
    child: Container(
    child: Card(
      color: const Color(0xFFCFE2FF),
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
                radius: 40,
                backgroundImage: AssetImage(
                  imagem,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(5),
              child: Text(
                nome,
                style: GoogleFonts.montserrat(
                  color: Colors.black,
                  fontSize: 12,
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
