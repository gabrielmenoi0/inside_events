import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:inside_events/Pagamento/PagamentoPage.dart';
import 'package:like_button/like_button.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class InformationPge extends StatefulWidget {
  const InformationPge({super.key});

  @override
  State<InformationPge> createState() => _InformationPgeState();
}

class _InformationPgeState extends State<InformationPge> {
  bool curtir = false;

  List<Widget> imagens = [
    Image.asset(
      'assets/imagemenu/Nasa.png',
      fit: BoxFit.cover,
    ),
    Image.asset(
      'assets/imagemenu/Nasa2.png',
      fit: BoxFit.cover,
    ),
  ];

  late TextEditingController _controller;
  late String feedback;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
        body: NestedScrollView(
          floatHeaderSlivers: true,
          headerSliverBuilder: (context, innerBoxIsScrolled) => [
            SliverAppBar(
              expandedHeight: 200,
              flexibleSpace: FlexibleSpaceBar(
                background: CarouselSlider(
                  options: CarouselOptions(
                      autoPlayCurve: Curves.easeInOut,
                      autoPlay: true,
                      viewportFraction: 1,
                      aspectRatio: 1),
                  // items: imagens.map((Image) => Image).toList(),
                  items: <Widget>[
                    Image.asset(
                      'assets/imagemenu/Nasa.png',
                      fit: BoxFit.cover,
                      width: double.infinity,
                    ),
                    Image.asset(
                      'assets/imagemenu/Nasa2.png',
                      fit: BoxFit.cover,
                      width: double.infinity,
                    ),
                  ],
                ),
              ),
              floating: true,
              snap: true,
              pinned: true,
              elevation: 0,
              backgroundColor: Colors.transparent,
              leading: CircleAvatar(
                radius: 10,
                backgroundColor: Colors.white54,
                child: IconButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  icon: Icon(
                    Icons.adaptive.arrow_back,
                    size: 30,
                    color: const Color(0xff2B4F71),
                  ),
                ),
              ),
            )
          ],
          body: ListView(
            scrollDirection: Axis.vertical,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 15),
                child: Text(
                  'Hackathon Unimar',
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
                  'O hackathon da nasa é um evento que a Univem junto da Administração Nacional da Aeronáutica e Espaço (nasa) tem como objetivo questões que irão envolver aeronáutica e o espaço para universitários e visitantes.',
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
                  "09/09/2022",
                  textAlign: TextAlign.left,
                  style: GoogleFonts.montserrat(
                      fontSize: 20,
                      color: const Color(0xff2B4F71),
                      fontWeight: FontWeight.w600),
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
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    const Icon(
                      Icons.chair_alt_outlined,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 80),
                      child: Text(
                        '89 Ingressos restantes',
                        style: GoogleFonts.montserrat(
                            fontSize: 14, fontWeight: FontWeight.w500),
                      ),
                    ),
                    const LikeButton(),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 40, right: 40, top: 30),
                child: SizedBox(
                  width: 60,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (_) => const PayPage()),
                      );
                    },
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
              const Divider(
                color: Color(0xffCFE2FF),
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 1,
                      color: const Color(0xffCFE2FF),
                    ),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Center(
                      child: Column(
                        children: [
                          Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text("Média Nota:",
                                    style: GoogleFonts.montserrat(
                                        fontSize: 16,
                                        color: Color(0xff2B4F71))),
                              ]),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Icon(
                                        Icons.star,
                                        color: Color(0xff7EA1FF),
                                      ),
                                      Icon(
                                        Icons.star,
                                        color: Color(0xff7EA1FF),
                                      ),
                                      Icon(
                                        Icons.star,
                                        color: Color(0xff7EA1FF),
                                      ),
                                      Icon(
                                        Icons.star,
                                        color: Color(0xff7EA1FF),
                                      ),
                                      Icon(
                                        Icons.star_half,
                                        color: Color(0xff7EA1FF),
                                      ),
                                    ]),
                                Text("4,5",
                                    style: GoogleFonts.montserrat(
                                        fontSize: 20,
                                        color: Color(0xff2B4F71))),
                                Text("300 avaliações",
                                    style: GoogleFonts.montserrat(
                                        fontSize: 14,
                                        color: Color(0xff2B4F71))),
                              ]),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text("Muito boas: ",
                                    style: GoogleFonts.montserrat(
                                        fontSize: 14,
                                        color: Color(0xff2B4F71))),
                              ]),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text("Boas: ",
                                    style: GoogleFonts.montserrat(
                                        fontSize: 14,
                                        color: Color(0xff2B4F71))),
                              ]),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text("Ruins ",
                                    style: GoogleFonts.montserrat(
                                        fontSize: 14,
                                        color: Color(0xff2B4F71))),
                              ]),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 40),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          CircleAvatar(
                            radius: 20,
                            backgroundImage: AssetImage(
                              'assets/imagemenu/grazi.jpg',
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 15),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Sua avaliação: ",
                                    style:
                                        GoogleFonts.montserrat(fontSize: 17)),
                                RatingBar.builder(
                                  initialRating: 3,
                                  minRating: 1,
                                  direction: Axis.horizontal,
                                  itemSize: 20,
                                  allowHalfRating: true,
                                  itemCount: 5,
                                  itemPadding:
                                      EdgeInsets.symmetric(horizontal: 0.5),
                                  itemBuilder: (context, _) => Icon(
                                    Icons.star,
                                    color: Color(0xff7EA1FF),
                                  ),
                                  onRatingUpdate: (rating) {
                                    print(rating);
                                  },
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      TextField(
                          decoration: InputDecoration(
                              hintText: "Deixe um comentário",
                              hintStyle: GoogleFonts.montserrat(
                                  fontSize: 14, color: Color(0xffE4E4E4)))),
                    ]),
              ),
              const SizedBox(
                height: 15,
              ),
              Comentario(
                  "assets/imagemenu/grazi.jpg",
                  "Graziella Bedani",
                  "Universitário",
                  Color(0xff7EA1FF),
                  "39/11/2022",
                  "Achei o evento muito bom e fui muito bem recebida por todos!",
                  "10",
                  "5"),
              Comentario(
                  "assets/felix.jpg",
                  "Gabriel Félix",
                  "Universitário",
                  Color(0xff7EA1FF),
                  "26/11/2022",
                  "Gostei muito da recepção e achei o evento incrível",
                  "20",
                  "2"),
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
                  EventoContainer("assets/imagemenu/pesquisacienti.png", "12° Congresso de Pesquisa Científica", "Univem", context),
                  EventoContainer("assets/imagemenu/pesquisacienti.png", "12° Congresso de Pesquisa Científica", "Univem", context),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Comentario(String image, String nome, String cargo, Color cor, String dia,
      String coment, String numberDeslike, String numberlike) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
      child: Container(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Center(
            child: Column(
              children: [
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CircleAvatar(
                        radius: 20,
                        backgroundImage: AssetImage(
                          image,
                        ),
                      ),
                      Text(nome),
                      Text(cargo),
                      Icon(Icons.more_vert),
                    ]),
                SizedBox(
                  height: 10,
                ),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Icon(
                              Icons.star,
                              color: cor,
                            ),
                            Icon(
                              Icons.star,
                              color: cor,
                            ),
                            Icon(
                              Icons.star,
                              color: cor,
                            ),
                            Icon(
                              Icons.star,
                              color: cor,
                            ),
                            Icon(
                              Icons.star_half,
                              color: cor,
                            ),
                            Text(dia,
                                style: GoogleFonts.montserrat(
                                    fontSize: 13, color: Color(0xff2B4F71))),
                          ]),
                    ]),
                SizedBox(
                  height: 10,
                ),
                Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                  Container(
                    width: MediaQuery.of(context).size.width / 1.4,
                    child: Text(coment,
                        style: GoogleFonts.montserrat(fontSize: 14)),
                  ),
                ]),
                SizedBox(
                  height: 10,
                ),
                Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                  LikeButton(size: 25),
                  Padding(
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    child: Text(numberlike,
                        style: GoogleFonts.montserrat(
                            fontSize: 14, color: Color(0xff2B4F71))),
                  ),
                  Icon(Icons.heart_broken),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Text(numberDeslike,
                        style: GoogleFonts.montserrat(
                            fontSize: 14, color: Color(0xff2B4F71))),
                  ),
                ]),
              ],
            ),
          ),
        ),
      ),
    );
  }
}


EventoContainer(String image, String titulo, String local, context) {
  return

    Container(
      width: MediaQuery.of(context).size.width / 2.05,
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            InkWell(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (_) => InformationPge()),
                );
              },
              child: Image.asset(
                fit: BoxFit.cover,
                image,
                width: MediaQuery.of(context).size.width / 2.5,
                height: MediaQuery.of(context).size.height / 6,
              ),
            ),

            SizedBox(
              height: 5,
            ),

            Text(
              titulo,
              textAlign: TextAlign.center,
              style:
              GoogleFonts.montserrat(fontSize: 16,  fontWeight: FontWeight.bold),
            ),


            SizedBox(
              height: 5,
            ),
            Text(
              local,
              style: GoogleFonts.montserrat(fontSize: 15),
            ),
          ],

        ),
      ),
    );
}




