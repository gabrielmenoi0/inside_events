import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:inside_events/MenuPageG/MenuPage.dart';
import 'package:inside_events/login/tela_cadastro/Cadastro_page.dart';
import 'package:inside_events/login/tela_redefinir/Redefinir_page.dart';

class Login_page extends StatefulWidget {
  const Login_page({super.key});

  @override
  State<Login_page> createState() => _Login_pageState();
}

class _Login_pageState extends State<Login_page> {
  String email = ''; //Variaveis para o cadastro do login
  String senha = ''; //Variaveis para o cadastro do login
  //senha para entrar no App = 123
  //email para entrar no app = dev@etec.com

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        reverse: true,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            children: <Widget>[
              SizedBox(
                height: MediaQuery.of(context).size.height / 24,
              ),
              Image.asset('assets/Logoin.png', width: 200),
              const SizedBox(
                height: 10,
              ),
              Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Endereço de E-mail',
                    style: GoogleFonts.inter(fontSize: 20),
                  )),
              TextFormField(
                onChanged: (text) {
                  email = text;
                },
                autofocus: false,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  enabledBorder: const UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Color.fromRGBO(126, 161, 255, 1),
                    ),
                  ),
                  focusedBorder: const UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Color.fromRGBO(126, 161, 255, 1),
                    ),
                  ),
                  hintText: ('Digite seu E-mail'),
                  labelStyle:
                      GoogleFonts.inter(color: Colors.black, fontSize: 23),
                  hintStyle: GoogleFonts.inter(fontSize: 18),
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              Column(
                children: <Widget>[
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Senha',
                        style: GoogleFonts.inter(fontSize: 20),
                      ))
                ],
              ),
              TextFormField(
                  onChanged: (text) {
                    senha = text;
                  },
                  autofocus: false,
                  obscureText: true,
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                      enabledBorder: const UnderlineInputBorder(
                        borderSide:
                            BorderSide(color: Color.fromRGBO(126, 161, 255, 1)),
                      ),
                      focusedBorder: const UnderlineInputBorder(
                        borderSide:
                            BorderSide(color: Color.fromRGBO(126, 161, 255, 1)),
                      ),
                      hintText: ('Digite sua senha'),
                      hintStyle: GoogleFonts.inter(fontSize: 18))),
              Column(
                children: <Widget>[
                  Align(
                    alignment: Alignment.centerRight,
                    child: TextButton(
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => const Redefinir_page(),
                          ),
                        );
                      },
                      child: (Text(
                        'esqueceu sua senha ?',
                        style: GoogleFonts.inter(
                          decoration: TextDecoration.underline,
                          fontSize: 18,
                          color: const Color.fromARGB(255, 13, 67, 110),
                        ),
                      )),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: SizedBox(
                  height: 40,
                  width: 300,
                  child: ElevatedButton(
                    onPressed: () {
                      if (email == 'grazielladev@gmail.com' &&
                          senha == '123456') {
                        Navigator.of(context).push(
                          MaterialPageRoute(builder: (_) => MenuPage()),
                        );
                        //Aqui é o login para entrar no app
                        //Caminho para a troca de tela abaixo
                        //Navigator.of(context).push(MaterialPageRoute(e
                        //builder: (context) => "Pagina para prossegir"()));
                      } else {
                        ('erro');
                      }
                    },
                    style: ElevatedButton.styleFrom(
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(28)),
                        ),
                        elevation: 0,
                        shadowColor: Colors.transparent,
                        backgroundColor: const Color(0xffACD7FF)),
                    child: Text(
                      'ENTRE',
                      style: GoogleFonts.montserrat(
                          fontSize: 25,
                          color: Colors.white,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Não tem uma conta?',
                    style: GoogleFonts.inter(fontSize: 18, color: Colors.black),
                  ),
                  Row(
                    children: [
                      TextButton(
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => const Cadastro_page()));
                        },
                        child: Text(
                          'Cadastre-se',
                          style: GoogleFonts.inter(
                            decoration: TextDecoration.underline,
                            fontSize: 18,
                            color: const Color(0xff2B4F71),
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Ou ',
                    style: GoogleFonts.inter(
                      fontSize: 18,
                    ),
                  ),
                  Text(
                    'conecte-se em outras contas',
                    style: GoogleFonts.inter(
                        decoration: TextDecoration.underline,
                        fontSize: 18,
                        color: const Color(0xff2B4F71)),
                  ),
                ],
              ),
              SizedBox(
                height: 25,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CircleAvatar(
                    radius: 25,
                    backgroundColor: Colors.transparent,
                    child: Image.asset('assets/google.png'),
                  ),
                  CircleAvatar(
                    radius: 25,
                    child: Image.asset('assets/facebook.png'),
                  ),
                  CircleAvatar(
                    radius: 25,
                    child: Image.asset('assets/twitter.png'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
