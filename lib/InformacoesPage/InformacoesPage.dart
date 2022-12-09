import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:inside_events/Pagamento/PagamentoPage.dart';
import 'package:like_button/like_button.dart';

class InformationPge extends StatefulWidget {
  const InformationPge({super.key});

  @override
  State<InformationPge> createState() => _InformationPgeState();
}

class _InformationPgeState extends State<InformationPge> {
  bool curtir = false;
  List<Widget> imagens = [
    Image.network(
      'https://www.giromarilia.com.br/img/news/techsummit_1662672142.jpeg',
      fit: BoxFit.cover,
    ),
    Image.network(
      'https://jdm-files.s3.amazonaws.com/jornaldamanha/images/16640303757mbTbctv8f.jpeg',
      fit: BoxFit.cover,
    ),
  ];
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
                    Image.network(
                      'https://jdm-files.s3.amazonaws.com/jornaldamanha/images/16640303757mbTbctv8f.jpeg',
                      fit: BoxFit.cover,
                      width: double.infinity,
                    ),
                    Image.network(
                      'https://www.giromarilia.com.br/img/news/techsummit_1662672142.jpeg',
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
                radius: 5,
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
                  'Hackaton Unimar',
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
                          const EdgeInsets.only(top: 10, left: 30, bottom: 10),
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
                            child: Image.network(
                              'https://www.univem.edu.br/storage/eventos/June2020/WhatsApp%20Image%202020-05-27%20at%2011.23.16.jpeg',
                              height: MediaQuery.of(context).size.height / 5.5,
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
                          const EdgeInsets.only(top: 10, right: 30, bottom: 10),
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
                            child: Image.network(
                              'https://www.univem.edu.br/storage/eventos/June2020/WhatsApp%20Image%202020-05-27%20at%2011.23.16.jpeg',
                              height: MediaQuery.of(context).size.height / 5.5,
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
