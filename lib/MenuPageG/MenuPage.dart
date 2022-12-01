import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:carousel_slider/carousel_controller.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:carousel_slider/carousel_options.dart';
import 'package:inside_events/MenuPageG/cards/card1.dart';
import 'package:inside_events/MenuPageG/cards/card2.dart';

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

  @override
  Widget build(BuildContext context) {
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
                Icons.train,
              ),
              title: const Text('Seu registro'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(
                Icons.train,
              ),
              title: const Text('Inscreveu-se'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(
                Icons.train,
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
                Icons.train,
              ),
              title: const Text('Configurações'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(
                Icons.chat_rounded,
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
        preferredSize: Size.fromHeight(80),
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
                    borderSide:
                        const BorderSide(color: Color(0xffe9edf8), width: 1.0),
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide:
                        const BorderSide(color: Color(0xffe9edf8), width: 1.0),
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
                tooltip: 'Verificar QR CODE',
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text('QR CODE'),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          const SizedBox(
            height: 50,
          ),
          const Text(
            'EVENTOS EM ALTA!!',
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 20,
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
            child: Card2(imagensCard: imagens),
          ),
          const SizedBox(
            height: 6,
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
            child: Card2(imagensCard: imagens),
          ),
          const SizedBox(
            height: 6,
          ),
          Container(
            alignment: Alignment.center,
            child: Card1(imagensCard: imagens),
          ),
        ],
      ),
    );
  }
}
