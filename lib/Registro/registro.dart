import 'package:flutter/material.dart';
import 'package:inside_events/Drawer_and_AppBar/appbar.dart';
import 'package:inside_events/Drawer_and_AppBar/drawer.dart';
import 'package:inside_events/QrPage/QrPage.dart';
import 'package:inside_events/Registro/cardRegistro.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:inside_events/utils/appColors.dart';

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

    late List<Widget> imagens1 = [
      ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Image.asset(
          "assets/criatividade.png",
          fit: BoxFit.contain,
        ),
      ),
      ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Image.asset(
          "assets/criatividade.png",
          fit: BoxFit.contain,
        ),
      ),
    ];

    late List<Widget> imagens2 = [
      ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Image.asset(
          "assets/Expo.png",
          fit: BoxFit.contain,
        ),
      ),
      ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Image.asset(
          "assets/Expo.png",
          fit: BoxFit.contain,
        ),
      ),
    ];

    late List<Widget> imagens3 = [
      ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Image.asset(
          "assets/semanaXV.png",
          fit: BoxFit.contain,
        ),
      ),
      ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Image.asset(
          "assets/semanaXV.png",
          fit: BoxFit.contain,
        ),
      ),
    ];

    return Scaffold(
      drawer: const Drawer(
        width: 250,
        elevation: 0,
        backgroundColor: Cor.corBrancoFumaca,
        child: DrawerPaginas(),
      ),
      body: NestedScrollView(
        floatHeaderSlivers: true,
        headerSliverBuilder: (context, innerBoxIsScrolled) => [
          appbar(),
        ],
        body: ListView(scrollDirection: Axis.vertical, children: [
          Container(
            alignment: Alignment.center,
            child: cardRegistro(
                imagensCard: imagens1,
                titulo: "Semana da Criatividade Univem",
                horario: "12/12/2023",
                cor: Cor.corAmarelo,
                situacao: "Inscrito"),
          ),
          const SizedBox(
            height: 30,
          ),
          Container(
            alignment: Alignment.center,
            child: cardRegistro(
                imagensCard: imagens2,
                titulo: "Expo Negócios",
                horario: "12/12/2023",
                cor: Cor.corVermelho,
                situacao: "Não foi"),
          ),
          const SizedBox(
            height: 30,
          ),
          Container(
            alignment: Alignment.center,
            child: cardRegistro(
                imagensCard: imagens3,
                titulo: "XV Semana de Tecnologia",
                horario: "12/12/2023",
                cor: Cor.corVerde,
                situacao: "Participou"),
          ),
        ]),
      ),
    );
  }
}
