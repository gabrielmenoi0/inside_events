// ignore_for_file: file_names
import 'package:cool_alert/cool_alert.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:inside_events/login/tela_login/login_page.dart';
import 'package:flutter/services.dart';
import 'package:inside_events/utils/appColors.dart';

import '../../MenuPageG/MenuPage.dart';

// ignore: camel_case_types
class Cadastro_page extends StatefulWidget {
  const Cadastro_page({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _Cadastro_pageState createState() => _Cadastro_pageState();
}

// ignore: camel_case_types
class _Cadastro_pageState extends State<Cadastro_page> {
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
            color: Cor.corEscuroAzul,
          ),
        ),
      ),
      body: SingleChildScrollView(
        reverse: false,
        child: Padding(
          padding: const EdgeInsets.only(
            left: 43,
            right: 53,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                radius: 90,
                backgroundColor: Colors.transparent,
                child: Image.asset(
                  'assets/logo11.png',
                  fit: BoxFit.cover,
                ),
              ),
              Column(
                children: <Widget>[
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Edereço de E-mail',
                        style: GoogleFonts.inter(fontSize: 20),
                      ))
                ],
              ),
              TextFormField(
                  autofocus: false,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    enabledBorder: const UnderlineInputBorder(
                      borderSide: BorderSide(color: Cor.corLilas),
                    ),
                    focusedBorder: const UnderlineInputBorder(
                      borderSide: BorderSide(color: Cor.corLilas),
                    ),
                    hintText: ('Digite seu E-mail'),
                    hintStyle: GoogleFonts.inter(fontSize: 18),
                  )),
              const SizedBox(
                height: 25,
              ),
              Column(
                children: <Widget>[
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Número de telefone',
                        style: GoogleFonts.inter(fontSize: 20),
                      ))
                ],
              ),
              TextFormField(
                autofocus: false,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  enabledBorder: const UnderlineInputBorder(
                    borderSide: BorderSide(color: Cor.corLilas),
                  ),
                  focusedBorder: const UnderlineInputBorder(
                    borderSide: BorderSide(color: Cor.corLilas),
                  ),
                  hintText: ('+55'),
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
                  autofocus: false,
                  obscureText: true,
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    enabledBorder: const UnderlineInputBorder(
                      borderSide: BorderSide(color: Cor.corLilas),
                    ),
                    focusedBorder: const UnderlineInputBorder(
                      borderSide: BorderSide(color: Cor.corLilas),
                    ),
                    hintText: ('Digite sua senha'),
                    hintStyle: GoogleFonts.inter(fontSize: 18),
                  )),
              const SizedBox(
                height: 25,
              ),
              Column(
                children: <Widget>[
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Repita sua senha',
                        style: GoogleFonts.inter(fontSize: 20),
                      ))
                ],
              ),
              TextFormField(
                  autofocus: false,
                  obscureText: true,
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    enabledBorder: const UnderlineInputBorder(
                      borderSide: BorderSide(color: Cor.corLilas),
                    ),
                    focusedBorder: const UnderlineInputBorder(
                      borderSide: BorderSide(color: Cor.corLilas),
                    ),
                    hintText: ('Digite sua senha'),
                    hintStyle: GoogleFonts.inter(fontSize: 18),
                  )),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: SizedBox(
                  height: 40,
                  width: 300,
                  child: ElevatedButton(
                    onPressed: () {
                      showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            title: Text(
                              'Enviamos um código de confirmação para o  número +55 (00)xxxx-xx00 para o término do cadastro',
                              textAlign: TextAlign.center,
                              style: GoogleFonts.montserrat(
                                fontSize: 16,
                              ),
                            ),
                            content: Form(
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  SizedBox(
                                    height: 30,
                                    width: 28,
                                    child: TextFormField(
                                      // controller: _controller,
                                      decoration: const InputDecoration(
                                        hintText: '0',
                                      ),
                                      onChanged: (value) {
                                        if (value.length == 1) {
                                          FocusScope.of(context).nextFocus();
                                        }
                                      },
                                      style:
                                          Theme.of(context).textTheme.headline6,
                                      keyboardType: TextInputType.number,
                                      textAlign: TextAlign.center,
                                      inputFormatters: [
                                        LengthLimitingTextInputFormatter(1),
                                        FilteringTextInputFormatter.digitsOnly,
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: 30,
                                    width: 28,
                                    child: TextFormField(
                                      decoration:
                                          const InputDecoration(hintText: '0'),
                                      onChanged: (value) {
                                        if (value.length == 1) {
                                          FocusScope.of(context).nextFocus();
                                        }
                                      },
                                      style:
                                          Theme.of(context).textTheme.headline6,
                                      keyboardType: TextInputType.number,
                                      textAlign: TextAlign.center,
                                      inputFormatters: [
                                        LengthLimitingTextInputFormatter(1),
                                        FilteringTextInputFormatter.digitsOnly,
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: 30,
                                    width: 28,
                                    child: TextFormField(
                                      decoration:
                                          InputDecoration(hintText: '0'),
                                      onChanged: (value) {
                                        if (value.length == 1) {
                                          FocusScope.of(context).nextFocus();
                                        }
                                      },
                                      style:
                                          Theme.of(context).textTheme.headline6,
                                      keyboardType: TextInputType.number,
                                      textAlign: TextAlign.center,
                                      inputFormatters: [
                                        LengthLimitingTextInputFormatter(1),
                                        FilteringTextInputFormatter.digitsOnly,
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: 30,
                                    width: 28,
                                    child: TextFormField(
                                      decoration:
                                          InputDecoration(hintText: '0'),
                                      onChanged: (value) {
                                        if (value.length == 1) {
                                          FocusScope.of(context).nextFocus();
                                        }
                                      },
                                      style:
                                          Theme.of(context).textTheme.headline6,
                                      keyboardType: TextInputType.number,
                                      textAlign: TextAlign.center,
                                      inputFormatters: [
                                        LengthLimitingTextInputFormatter(1),
                                        FilteringTextInputFormatter.digitsOnly,
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: 30,
                                    width: 28,
                                    child: TextFormField(
                                      decoration:
                                          InputDecoration(hintText: '0'),
                                      onChanged: (value) {
                                        if (value.length == 1) {
                                          FocusScope.of(context).nextFocus();
                                        }
                                      },
                                      style:
                                          Theme.of(context).textTheme.headline6,
                                      keyboardType: TextInputType.number,
                                      textAlign: TextAlign.center,
                                      inputFormatters: [
                                        LengthLimitingTextInputFormatter(1),
                                        FilteringTextInputFormatter.digitsOnly,
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            actions: <Widget>[
                              Column(
                                children: [
                                  Center(
                                      child: TextButton(
                                    onPressed: () {
                                      CoolAlert.show(
                                        context: context,
                                        type: CoolAlertType.success,
                                        text:
                                            ('Confirmamos que é você, \n tudo certo por aqui !'),
                                        confirmBtnText: 'Prosseguir',
                                        backgroundColor: Cor.corBranco,
                                        onConfirmBtnTap: () {
                                          Navigator.of(context).push(
                                            MaterialPageRoute(
                                              builder: (context) =>
                                                  const Login_page(),
                                            ),
                                          );
                                        },
                                      );
                                    },
                                    child: Text(
                                      'Continuar',
                                      style: GoogleFonts.inter(
                                        //decoration: TextDecoration.underline,
                                        fontSize: 18,
                                        color: Cor.corAzulPreto,
                                      ),
                                    ),
                                  )),
                                ],
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              // Center(
                              //   child: TextButton(
                              //     onPressed: () {
                              //       setState(() {});
                              //       Navigator.of(context).pop();
                              //     },
                              //     child: Text(
                              //       '',
                              //       // 'Não recebi o Código',
                              //       style: GoogleFonts.inter(
                              //         decoration: TextDecoration.underline,
                              //         fontSize: 18,
                              //         color:
                              //             const Color.fromRGBO(43, 79, 113, 1),
                              //       ),
                              //     ),
                              //   ),
                              // )
                            ],
                          );
                        },
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(28)),
                      ),
                      elevation: 0,
                      shadowColor: Colors.transparent,
                      backgroundColor: Cor.corAzulClaro,
                    ),
                    child: Text(
                      'ENTRE',
                      style: GoogleFonts.montserrat(
                          fontSize: 25,
                          color: Cor.corBranco,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
