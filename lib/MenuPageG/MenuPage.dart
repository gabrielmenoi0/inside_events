import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:inside_events/Drawer_and_AppBar/appbar.dart';
import 'package:inside_events/EventoEspecifico/eventoEspecifico.dart';
import 'package:inside_events/InformacoesPage/InformacoesPage.dart';
import 'package:inside_events/MenuPageG/cards/card1.dart';
import 'package:inside_events/MenuPageG/cards/card2.dart';
import 'package:inside_events/QrPage/QrPage.dart';
import '../Drawer_and_AppBar/drawer.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({super.key});

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  List<T> map<T>(List list, Function handler) {
    List<T> result = [];
    for (var i = 0; i < list.length; i++) {
      result.add(handler(i, list[i]));
    }
    return result;
  }

  bool medicina = true;
  bool tecnologia = false;
  bool direito = false;
  bool outros = false;

  @override
  Widget build(BuildContext context) {
    late List<Widget> imagens1 = [
      ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Image.asset(
          "assets/imagemenu/BusWeek.png",
          fit: BoxFit.cover,
        ),
      ),
      ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Image.asset(
          "assets/imagemenu/eventoUnivem.jpeg",
          fit: BoxFit.cover,
        ),
      ),
    ];

    late List<Widget> imagens2 = [
      ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Image.asset(
          "assets/imagemenu/Renata.png",
          fit: BoxFit.cover,
        ),
      ),
      ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Image.asset(
          "assets/imagemenu/eventoUnivem.jpeg",
          fit: BoxFit.cover,
        ),
      ),
    ];

    late List<Widget> imagens3 = [
      ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Image.asset(
          "assets/imagemenu/direito.png",
          fit: BoxFit.cover,
        ),
      ),
      ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Image.asset(
          "assets/imagemenu/eventoUnivem.jpeg",
          fit: BoxFit.cover,
        ),
      ),
    ];
    return Scaffold(
      drawer: const Drawer(
        width: 250,
        elevation: 0,
        backgroundColor: Color(0xffE9EDF8),
        child: DrawerPaginas(),
      ),
      body: NestedScrollView(
        floatHeaderSlivers: true,
        headerSliverBuilder: (context, innerBoxIsScrolled) => [
          appbar(),
        ],
        body: ListView(
          scrollDirection: Axis.vertical,
          children: [
            const SizedBox(
              height: 30,
            ),
            Text(
              'EVENTOS EM ALTA!!',
              textAlign: TextAlign.center,
              style: GoogleFonts.montserrat(fontSize: 25),
            ),
            const SizedBox(
              height: 40,
            ),
            Container(
              alignment: Alignment.center,
              child: Card1(
                imagensCard: imagens1,
                titulo: "Business Week",
                descricao:
                    "Metaverso e os desafios e oportunidades da nova Era no mundo dos negócios.",
                horario: "10/10/2023 - 19h",
              ),
            ),
            const SizedBox(
              height: 6,
            ),
            Container(
              alignment: Alignment.center,
              child: Card2(
                imagensCard: imagens2,
                titulo: "Design Thinking",
                descricao:
                    "Live: ''Ferramentas do Design Thinking aplicada em projetos'' ministrada pela palestrante Profa. Ma. Renata Pinheiro.",
                horario: "29/10/2023 - 15h",
              ),
            ),
            const SizedBox(
              height: 6,
            ),
            Container(
              alignment: Alignment.center,
              child: Card1(
                  imagensCard: imagens3,
                  titulo: "Curso de Capacitação",
                  descricao:
                      "Curso de Capacitação de Conciliadores e Mediadores Judiciais e Extrajudiciais 2022 aqui do Univem!",
                  horario: "15/10/2023 - 19h"),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Center(
                child: Container(
                  height: 50,
                  width: 550,
                  decoration: BoxDecoration(
                      border: Border.all(
                          color: const Color(0xffCFE2FF), width: 4.0)),
                  alignment: Alignment.center,
                  child: ListView(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            medicina = !medicina;
                            tecnologia = false;
                            direito = false;
                            outros = false;
                          });
                        },
                        child: Padding(
                          padding: const EdgeInsets.only(
                              top: 9, bottom: 5, right: 10, left: 5),
                          child: Text(
                            "Medicina",
                            style: GoogleFonts.montserrat(
                                fontSize: 20,
                                color: medicina ? Colors.blue : Colors.black),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            tecnologia = true;
                            medicina = false;
                            direito = false;
                            outros = false;
                          });
                        },
                        child: Padding(
                          padding: const EdgeInsets.only(
                              top: 9, bottom: 5, right: 10, left: 5),
                          child: Text(
                            "Tecnologia",
                            style: GoogleFonts.montserrat(
                                fontSize: 20,
                                color: tecnologia ? Colors.blue : Colors.black),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            direito = true;
                            medicina = false;
                            tecnologia = false;
                            outros = false;
                          });
                        },
                        child: Padding(
                          padding: const EdgeInsets.only(
                              top: 9, bottom: 5, right: 10, left: 5),
                          child: Text(
                            "Direito",
                            style: GoogleFonts.montserrat(
                                fontSize: 20,
                                color: direito ? Colors.blue : Colors.black),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            outros = true;
                            medicina = false;
                            direito = false;
                            tecnologia = false;
                          });
                        },
                        child: Padding(
                          padding: const EdgeInsets.only(
                              top: 9, bottom: 5, right: 10, left: 5),
                          child: Text(
                            "Outros",
                            style: GoogleFonts.montserrat(
                                fontSize: 20,
                                color: outros ? Colors.blue : Colors.black),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                medicina
                    ? EventoContainer("assets/imagemenu/medicina1.png",
                        "Ciclo Médicas", "Univem", context)
                    : direito
                        ? EventoContainer("assets/imagemenu/grupoEvento.png",
                            "Univem", "host", context)
                        : tecnologia
                            ? EventoContainer(
                                "assets/imagemenu/programacao.png",
                                "Univem",
                                "host",
                                context)
                            : outros
                                ? EventoContainer("assets/Logoin.png", "Univem",
                                    "host", context)
                                : EventoContainer("assets/imagemenu/medicina1.png",
                    "Ciclo Médicas", "Univem", context),
                medicina
                    ? EventoContainer("assets/imagemenu/medicina2.png",
                        "Patinhas Solidárias", "Univem", context)
                    : direito
                        ? EventoContainer("assets/imagemenu/grupoEvento.png",
                            "Univem", "host", context)
                        : tecnologia
                            ? EventoContainer(
                                "assets/imagemenu/pesquisacienti.png",
                                "Univem",
                                "host",
                                context)
                            : outros
                                ? EventoContainer("assets/Logoin.png", "Univem",
                                    "host", context)
                                : EventoContainer("assets/imagemenu/medicina2.png",
                    "Patinhas Solidárias", "Univem", context)
              ],
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                medicina
                    ? EventoContainer("assets/imagemenu/medicina1.png",
                        "Ciclo Médicas", "Univem", context)
                    : direito
                        ? EventoContainer("assets/imagemenu/grupoEvento.png",
                            "Univem", "host", context)
                        : tecnologia
                            ? EventoContainer(
                                "assets/imagemenu/olimpiadaInf.png",
                                "Univem",
                                "host",
                                context)
                            : outros
                                ? EventoContainer("assets/Logoin.png", "Univem",
                                    "host", context)
                                : EventoContainer("assets/imagemenu/medicina1.png",
                    "Evento Nome", "Local", context),
                medicina
                    ? EventoContainer("assets/imagemenu/medicina2.png",
                        "Patinhas Solidárias", "Univem", context)
                    : direito
                        ? EventoContainer("assets/imagemenu/grupoEvento.png",
                            "Univem", "host", context)
                        : tecnologia
                            ? EventoContainer(
                                "assets/imagemenu/semanatec.png",
                                "Univem",
                                "host",
                                context)
                            : outros
                                ? EventoContainer("assets/Logoin.png", "Univem",
                                    "host", context)
                                : EventoContainer("assets/imagemenu/medicina2.png",
                    "Patinhas Solidárias", "Univem", context)

              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 35, right: 35, top: 10),
              child: SizedBox(
                height: 40,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (_) => Eventos()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(28)),
                      ),
                      elevation: 0,
                      backgroundColor: const Color(0xffACD7FF)),
                  child: Text(
                    'VER TUDO!',
                    style: GoogleFonts.montserrat(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.all(20),
              alignment: Alignment.center,
              child: Text(
                'Locais',
                style: GoogleFonts.montserrat(fontSize: 30),
              ),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  color: Colors.transparent,
                  child: Padding(
                    padding: const EdgeInsets.all(10),
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
                            "https://www.univem.edu.br/storage/eventos/June2020/WhatsApp%20Image%202020-05-27%20at%2011.23.16.jpeg",
                            height: 150,
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
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                              width: 5,
                              color: Color(0xffCFE2FF),
                            ),
                            borderRadius: BorderRadius.circular(6),
                          ),
                          child: Image.network(
                            "https://www.univem.edu.br/storage/eventos/June2020/WhatsApp%20Image%202020-05-27%20at%2011.23.16.jpeg",
                            height: 150,
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
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                    child: Padding(
                        padding: EdgeInsets.all(10),
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
                                "https://www.univem.edu.br/storage/eventos/June2020/WhatsApp%20Image%202020-05-27%20at%2011.23.16.jpeg",
                                height: 150,
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
                        ))),
                Container(
                  child: Padding(
                    padding: const EdgeInsets.all(10),
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
                            "https://www.univem.edu.br/storage/eventos/June2020/WhatsApp%20Image%202020-05-27%20at%2011.23.16.jpeg",
                            height: 150,
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
            Padding(
              padding: const EdgeInsets.only(
                  left: 35, right: 35, top: 10, bottom: 20),
              child: SizedBox(
                height: 40,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(28)),
                      ),
                      elevation: 0,
                      backgroundColor: const Color(0xffACD7FF)),
                  child: Text(
                    'VER TUDO!',
                    style: GoogleFonts.montserrat(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

itemPadding(String info, Function tap) {
  return GestureDetector(
    onTap: tap(),
    child: Padding(
      padding: const EdgeInsets.only(top: 9, bottom: 5, right: 5, left: 4),
      child: Text(
        info,
        style: GoogleFonts.montserrat(fontSize: 20),
      ),
    ),
  );
}

EventoContainer(String image, String titulo, String local, context) {
  return Padding(
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
                height: MediaQuery.of(context).size.height / 5,
              ),
            ),

          Text(
            titulo,
            style:
                GoogleFonts.montserrat(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          Text(
            local,
            style: GoogleFonts.montserrat(fontSize: 15),
          ),
        ],

    ),
  );
}
