import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:inside_events/InformacoesPage/InformacoesPage.dart';
import 'package:inside_events/MenuPageG/cards/card1.dart';
import 'package:inside_events/MenuPageG/cards/card2.dart';
import 'package:inside_events/QrPage/QrPage.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({Key? key, required this.title}) : super(key: key);

  final String title;

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

  bool medicina = false;

  @override
  Widget build(BuildContext context) {
    void _QrPagina(context) {
      Navigator.of(context).push(
        MaterialPageRoute(builder: (_) => QrPage()),
      );
      const Icon(Icons.arrow_back_ios_new_outlined);
    }

    late List<Image> imagens = [
      Image.network(
          'https://www.keeperformaturas.com.br/blog/wp-content/uploads/2019/07/O-que-observar-ao-visitar-uma-festa-de-formatura.jpg'),
      Image.network(
          'https://alphaconvites.com.br/wp-content/uploads/2020/12/festa-antes-formatura-scaled.jpg'),
      Image.network(
          'https://wegoout.com.br/wp-content/uploads/2022/06/295699262_763192505101723_309887737909331421_n.jpg'),
    ];

    return Scaffold(
      drawer: Drawer(
        width: 250,
        elevation: 0,
        backgroundColor: const Color(0xffE9EDF8),
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            const UserAccountsDrawerHeader(
              decoration: BoxDecoration(color: Color(0xffe9edf8)),
              currentAccountPictureSize: Size(80, 80),
              currentAccountPicture: CircleAvatar(
                radius: 50.0,
                backgroundImage: AssetImage(
                  'assets/imagemenu/grazi.jpg',
                ),
              ),
              accountName: Text(
                'Grazziela',
                style: TextStyle(color: Colors.black),
                textAlign: TextAlign.center,
              ),
              accountEmail: Text(
                'grazzieladev@gmail.com',
                style: TextStyle(color: Colors.black),
              ),
            ),
            ListTile(
              leading: const Icon(
                Icons.home,
              ),
              title: const Text('Perfil'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(
                Icons.app_registration_outlined,
              ),
              title: const Text('Seu registro'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(
                Icons.calendar_month_outlined,
              ),
              title: const Text('Inscreveu-se'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(
                Icons.radar_outlined,
              ),
              title: const Text('Perto de você'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            const Divider(
              color: Colors.white,
              height: 10,
            ),
            ListTile(
              leading: const Icon(
                Icons.settings,
              ),
              title: const Text('Configurações'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(
                Icons.message_outlined,
              ),
              title: const Text('Nossa central'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      appBar: PreferredSize(
          preferredSize: const Size.fromHeight(80),
          child: AppBar(
            elevation: 0,
            backgroundColor: const Color(0xff2b4f71),
            actions: <Widget>[
              Container(
                width: 250,
                padding: const EdgeInsets.only(
                  top: 11,
                  bottom: 11,
                ),
                child: TextField(
                  decoration: InputDecoration(
                    isDense: true,
                    prefixIcon: const Icon(Icons.search),
                    contentPadding: const EdgeInsets.symmetric(vertical: 5.0),
                    filled: true,
                    fillColor: Colors.white,
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                          color: Color(0xffe9edf8), width: 1.0),
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                          color: Color(0xffe9edf8), width: 1.0),
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                    hintText: 'Pesquise eventos ou locais',
                    hintStyle: const TextStyle(fontSize: 14.3),
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(5),
              ),
              Container(
                child: IconButton(
                  icon: const Icon(
                    Icons.qr_code_scanner,
                    color: Color(0xffe9edf8),
                  ),
                  // tooltip: 'Verificar QR CODE',
                  onPressed: () => _QrPagina(context),
                ),
              ),
            ],
          )),
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          const SizedBox(
            height: 40,
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
            child: Card1(imagensCard: imagens),
          ),
          const SizedBox(
            height: 6,
          ),
          Container(
            alignment: Alignment.center,
            child: GestureDetector(
                onTap: () {}, child: Card2(imagensCard: imagens)),
          ),
          const SizedBox(
            height: 6,
          ),
          Container(
            alignment: Alignment.center,
            child: Card1(imagensCard: imagens),
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
                    border:
                        Border.all(color: const Color(0xffCFE2FF), width: 4.0)),
                alignment: Alignment.center,
                child: ListView(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    GestureDetector(
                      onTap: () {
                        medicina = true;
                        setState(() {});
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(
                            top: 9, bottom: 5, right: 10, left: 5),
                        child: Text(
                          "Medicina",
                          style: GoogleFonts.montserrat(fontSize: 20),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          top: 9, bottom: 5, right: 10, left: 5),
                      child: Text(
                        "Tecnologia",
                        style: GoogleFonts.montserrat(fontSize: 20),
                      ),
                    ),
                    itemPadding("Direito", () {}),
                    Padding(
                      padding: const EdgeInsets.only(
                          top: 9, bottom: 5, right: 10, left: 10),
                      child: Text(
                        "Outros",
                        style: GoogleFonts.montserrat(fontSize: 20),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              medicina == true
                  ? Container(
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
                    )
                  : Container(
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
                        child: InkWell(
                          onTap: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                  builder: (_) => InformationPge()),
                            );
                          },
                          child: Image.asset(
                            "assets/imagemenu/grazi.jpg",
                            height: MediaQuery.of(context).size.height / 5,
                          ),
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
            padding: const EdgeInsets.all(15),
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
            padding: const EdgeInsets.all(15),
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
        ],
      ),
    );
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
}
