// ignore_for_file: file_names
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:inside_events/login/tela_login/login_page.dart';

// ignore: camel_case_types
class Redefinir_page extends StatefulWidget {
  const Redefinir_page({super.key});

  @override
  State<Redefinir_page> createState() => _Redefinir_pageState();
}

// ignore: camel_case_types
class _Redefinir_pageState extends State<Redefinir_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: InkWell(
          onTap: () {
            Navigator.of(context).pop();
          },
          child: Icon(
            Icons.adaptive.arrow_back,
            color: const Color(0xff2B4F71),
          ),
        ),
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        reverse: true,
        child: Padding(
          padding: const EdgeInsets.only(left: 25, right: 43),
          child: Column(children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Redefinir Senha !',
                  style: GoogleFonts.montserrat(
                      fontSize: 24,
                      fontWeight: FontWeight.w500,
                      color: const Color.fromRGBO(43, 79, 113, 1)),
                ),
                const SizedBox(
                  height: 2,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      // os textos tem esse espaçamento mesmo que é para alinhar
                      '   Eita! Esqueceu sua senha ? \n      insira seu endereço de \n          email ou número e \n           enviaremos uma \n      mensagem para você \n                altera-lá !',
                      style: GoogleFonts.inter(
                        fontSize: 18,
                        color: const Color.fromARGB(255, 0, 0, 0),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Column(
              children: <Widget>[
                Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Endereço de e-mail ou número',
                      style: GoogleFonts.inter(fontSize: 20),
                    ))
              ],
            ),
            TextFormField(
                autofocus: false,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                    enabledBorder: const UnderlineInputBorder(
                      borderSide:
                          BorderSide(color: Color.fromRGBO(126, 161, 255, 1)),
                    ),
                    focusedBorder: const UnderlineInputBorder(
                      borderSide:
                          BorderSide(color: Color.fromRGBO(126, 161, 255, 1)),
                    ),
                    hintText: ('Digite seu e-mail ou telefone'),
                    labelStyle:
                        GoogleFonts.inter(color: Colors.black, fontSize: 23),
                    hintStyle: GoogleFonts.inter(fontSize: 18))),
            const SizedBox(
              height: 25,
            ),
            Column(
              children: <Widget>[
                Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Confirme',
                      style: GoogleFonts.inter(fontSize: 20),
                    ))
              ],
            ),
            TextFormField(
              autofocus: false,
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                enabledBorder: const UnderlineInputBorder(
                  borderSide:
                      BorderSide(color: Color.fromRGBO(126, 161, 255, 1)),
                ),
                focusedBorder: const UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Color.fromRGBO(126, 161, 255, 1),
                  ),
                ),
                hintText: ('Confirme seu e-mail ou telefone'),
                hintStyle: GoogleFonts.inter(fontSize: 18),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Column(
              children: <Widget>[
                Align(
                  alignment: Alignment.center,
                  child: TextButton(
                    onPressed: () {},
                    child: (Text(
                      'Não recebi, reenviar !',
                      style: GoogleFonts.inter(
                        decoration: TextDecoration.underline,
                        fontSize: 20,
                        color: const Color.fromARGB(255, 13, 67, 110),
                      ),
                    )),
                  ),
                ),
                Container(
                    child: Image.asset(
                  'assets/Logoin.png',
                  width: 200,
                ))
              ],
            ),
          ]),
        ),
      ),
    );
  }
}
