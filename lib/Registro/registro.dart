import 'package:flutter/material.dart';
import 'package:inside_events/Drawer_and_AppBar/drawer.dart';
import 'package:inside_events/QrPage/QrPage.dart';
import 'package:inside_events/Registro/cardRegistro.dart';
import 'package:google_fonts/google_fonts.dart';


class registro extends StatelessWidget {
  const registro({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    void _QrPagina(context) {
      Navigator.of(context).push(
        MaterialPageRoute(builder: (_) => QrPage()),
      );
      const Icon(Icons.arrow_back_ios_new_outlined);
    }

    late List<Widget> imagens = [
      ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Image.asset(
          "assets/imagemenu/hackaUnimar.jpg",
          height: MediaQuery.of(context).size.height / 1,
        ),
      ),
      ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Image.asset(
          "assets/imagemenu/hackaUnimar.jpg",
          height: MediaQuery.of(context).size.height / 1,
        ),
      ),
      ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Image.asset(
          "assets/imagemenu/hackaUnimar.jpg",
          height: MediaQuery.of(context).size.height / 1,
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
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(80),
        child: Padding(
          padding: EdgeInsets.only(top: 10),
          child: AppBar(
            elevation: 0,
            backgroundColor: const Color(0xff2b4f71),
            actions: <Widget>[
              Container(
                width: 270,
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
                    hintStyle: GoogleFonts.montserrat(fontSize: 14),
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
          ),
        ),
      ),
      body: ListView(
          scrollDirection: Axis.vertical,
          children: [
            Container(
              alignment: Alignment.center,
              child: cardRegistro(imagensCard: imagens),
            ),
            const SizedBox(
              height: 6,
            ),
            Container(
              alignment: Alignment.center,
              child: cardRegistro(imagensCard: imagens)),
            const SizedBox(
              height: 6,
            ),
            Container(
              alignment: Alignment.center,
              child: cardRegistro(imagensCard: imagens),
            ),



          ]
      ),
    );
  }
}
