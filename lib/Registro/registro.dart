import 'package:flutter/material.dart';
import 'package:inside_events/Drawer_and_AppBar/appbar.dart';
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
          height: MediaQuery
              .of(context)
              .size
              .height / 1,
        ),
      ),
      ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Image.asset(
          "assets/imagemenu/hackaUnimar.jpg",
          height: MediaQuery
              .of(context)
              .size
              .height / 1,
        ),
      ),
      ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Image.asset(
          "assets/imagemenu/hackaUnimar.jpg",
          height: MediaQuery
              .of(context)
              .size
              .height / 1,
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
    ),
    );
  }
}
