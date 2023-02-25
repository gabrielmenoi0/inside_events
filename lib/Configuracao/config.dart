import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utils/appColors.dart';

class configuracoes extends StatefulWidget {
  const configuracoes({Key? key}) : super(key: key);

  @override
  State<configuracoes> createState() => _configuracoesState();
}

class _configuracoesState extends State<configuracoes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Cor.corBranco,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(
            Icons.arrow_back_ios_new_outlined,
            size: 20,
            color: Cor.corEscuroAzul,
          ),
        ),
        centerTitle: true,
        title: Text(
          "Configurações",
          style: GoogleFonts.montserrat(color: Cor.corPreto, fontSize: 20),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(20),
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
                    borderSide: const BorderSide(
                        color: Cor.corBrancoFumaca, width: 1.0),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                        color: Cor.corBrancoFumaca, width: 1.0),
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  hintText: 'Pesquise eventos ou locais',
                  hintStyle: const TextStyle(fontSize: 12),
                ),
              ),
            ),
          ),
          Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(children: [
                OpcoesConfig("Sua conta"),
                Divider(
                  color: Cor.corBranco,
                  height: 30,
                ),
                OpcoesConfig("Privacidade e Segurança"),
                const Divider(
                  color: Cor.corBranco,
                  height: 30,
                ),
                OpcoesConfig("Acessibilidade"),
                const Divider(
                  color: Cor.corBranco,
                  height: 30,
                ),
                OpcoesConfig("Exibição"),
                const Divider(
                  color: Cor.corBranco,
                  height: 30,
                ),
                OpcoesConfig("Aparência"),
                const Divider(
                  color: Cor.corBranco,
                  height: 30,
                ),
                OpcoesConfig("Recursos Adicionais"),
              ])),
        ],
      ),
    );
  }
}

OpcoesConfig(String text) {
  return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text,
          style: GoogleFonts.montserrat(fontSize: 15),
        ),
        Icon(
          Icons.arrow_forward_ios_outlined,
          size: 20,
        ),
      ]);
}
