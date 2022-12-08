import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../MenuPageG/MenuPage.dart';

class DrawerPaginas extends StatefulWidget {
  const DrawerPaginas({Key? key}) : super(key: key);

  @override
  State<DrawerPaginas> createState() => _DrawerPaginasState();
}

class _DrawerPaginasState extends State<DrawerPaginas> {
  @override
  Widget build(BuildContext context) {
    return ListView(
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
            'Graziella',
            style: TextStyle(color: Colors.black),
            textAlign: TextAlign.center,
          ),
          accountEmail: Text(
            'grazielladev@gmail.com',
            style: TextStyle(color: Colors.black),
          ),
        ),
        ListTile(
          leading: const Icon(
            Icons.home,
          ),
          title: Text('Perfil', style: GoogleFonts.montserrat()),
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(builder: (_) => MenuPage()),
            );
          },
        ),
        ListTile(
          leading: const Icon(
            Icons.app_registration_outlined,
          ),
          title: Text('Seu registro', style: GoogleFonts.montserrat()),
          onTap: () {},
        ),
        ListTile(
          leading: const Icon(
            Icons.calendar_month_outlined,
          ),
          title: Text('Inscreveu-se', style: GoogleFonts.montserrat()),
          onTap: () {
            Navigator.pop(context);
          },
        ),
        ListTile(
          leading: const Icon(
            Icons.radar_outlined,
          ),
          title: Text('Perto de você', style: GoogleFonts.montserrat()),
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
          title: Text('Configurações', style: GoogleFonts.montserrat()),
          onTap: () {
            Navigator.pop(context);
          },
        ),
        ListTile(
          leading: const Icon(
            Icons.message_outlined,
          ),
          title: Text('Nossa central', style: GoogleFonts.montserrat()),
          onTap: () {
            Navigator.pop(context);
          },
        ),
      ],
    );
  }
}
