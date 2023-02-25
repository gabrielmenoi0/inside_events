import 'package:flutter/material.dart';
import 'package:inside_events/utils/appColors.dart';
import 'package:permission_handler/permission_handler.dart';

import '../QrPage/QrPage.dart';

class appbar extends StatefulWidget {
  const appbar({Key? key}) : super(key: key);

  @override
  State<appbar> createState() => _appbarState();
}

class _appbarState extends State<appbar> {
  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: Cor.corEscuroAzul,
      expandedHeight: 65,
      // flexibleSpace: FlexibleSpaceBar(
      //   title: Text("testee"),
      // ),
      title: Padding(
        padding: const EdgeInsets.only(top: 5),
        child: Container(
          alignment: Alignment.centerLeft,
          height: MediaQuery.of(context).size.height / 20,
          width: MediaQuery.of(context).size.height / 2,
          child: TextField(
            decoration: InputDecoration(
              isDense: true,
              prefixIcon: const Icon(
                Icons.search,
                color: Cor.corEscuroAzul,
              ),
              contentPadding: const EdgeInsets.symmetric(vertical: 5.0),
              filled: true,
              fillColor: Cor.corBranco,
              focusedBorder: OutlineInputBorder(
                borderSide:
                    const BorderSide(color: Cor.corBrancoFumaca, width: 1.0),
                borderRadius: BorderRadius.circular(30),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide:
                    const BorderSide(color: Cor.corBrancoFumaca, width: 1.0),
                borderRadius: BorderRadius.circular(30.0),
              ),
              hintText: 'Pesquise eventos ou locais',
              hintStyle: const TextStyle(fontSize: 12),
            ),
          ),
        ),
      ),
      actions: [
        IconButton(
          icon: const Icon(
            Icons.qr_code_scanner,
            color: Cor.corBrancoFumaca,
          ),
          // tooltip: 'Verificar QR CODE',
          onPressed: () async {
            var status = await Permission.camera.status;
            if (status.isDenied) {
              openAppSettings();
            }
            if (status.isGranted) {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (_) => QrPage()),
              );
            }
          },
        ),
      ],
      floating: true,
      snap: true,
      // pinned: true,
    );
  }
}
