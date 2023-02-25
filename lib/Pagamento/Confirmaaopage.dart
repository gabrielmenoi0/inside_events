import 'package:cool_alert/cool_alert.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:inside_events/MenuPageG/MenuPage.dart';
import 'package:inside_events/Registro/registro.dart';
import 'package:inside_events/login/tela_redefinir/Redefinir_page.dart';
import 'package:inside_events/utils/appColors.dart';

class Carfimacao extends StatefulWidget {
  const Carfimacao({super.key});

  @override
  State<Carfimacao> createState() => _CarfimacaoState();
}

class _CarfimacaoState extends State<Carfimacao> {
  @override
  Widget build(BuildContext context) {
    String Senha1 = '';
    String Senha = '';
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Cor.corEscuroAzul),
        leading: InkWell(
          onTap: () {
            Navigator.of(context).pop();
          },
          child: Icon(Icons.adaptive.arrow_back),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        reverse: true,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40),
          child: Column(
            children: <Widget>[
              SizedBox(
                height: MediaQuery.of(context).size.height / 18,
              ),
              Text(
                'Confirme que é você para concluir a compra',
                style: GoogleFonts.montserrat(
                    fontSize: 20, fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 18,
              ),
              Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Senha',
                    style: GoogleFonts.montserrat(fontSize: 20),
                  )),
              TextFormField(
                onChanged: (number) {
                  Senha1 = number;
                },
                autofocus: false,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  enabledBorder: const UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Cor.corLilas,
                    ),
                  ),
                  focusedBorder: const UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Cor.corLilas,
                    ),
                  ),
                  hintText: ('Digite sua senha'),
                  labelStyle:
                      GoogleFonts.inter(color: Cor.corPreto, fontSize: 23),
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
                        'Repita sua senha',
                        style: GoogleFonts.montserrat(fontSize: 20),
                      ))
                ],
              ),
              TextFormField(
                  onChanged: (number) {
                    Senha = number;
                  },
                  autofocus: false,
                  obscureText: true,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                      enabledBorder: const UnderlineInputBorder(
                        borderSide: BorderSide(color: Cor.corLilas),
                      ),
                      focusedBorder: const UnderlineInputBorder(
                        borderSide: BorderSide(color: Cor.corLilas),
                      ),
                      hintText: ('Digite sua senha'),
                      hintStyle: GoogleFonts.inter(fontSize: 18))),
              Column(
                children: <Widget>[
                  Align(
                    alignment: Alignment.centerLeft,
                    child: TextButton(
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => const Redefinir_page(),
                          ),
                        );
                      },
                      child: (Text(
                        'Esqueci minha senha',
                        style: GoogleFonts.inter(
                          decoration: TextDecoration.underline,
                          fontSize: 18,
                          color: Cor.corAzulPreto,
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
                    onPressed: () async {
                      if (Senha1 == '123' && Senha == '123') {
                        CoolAlert.show(
                          context: context,
                          type: CoolAlertType.success,
                          title: 'Sucesso!',
                          loopAnimation: true,
                          text: 'Compra finalizada!!!',
                          backgroundColor: Cor.corBranco,
                          cancelBtnText: '',
                          confirmBtnText: '',
                          confirmBtnColor: Colors.transparent,
                          showCancelBtn: false,
                        );
                        await Future.delayed(const Duration(seconds: 10))
                            .whenComplete(
                          () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => const registro(),
                              ),
                            );
                          },
                        );
                      } else {
                        CoolAlert.show(
                          context: context,
                          type: CoolAlertType.error,
                          title: 'Compra negada.',
                          text: 'Verifique seus cartões ou senha',
                          backgroundColor: Cor.corBranco,
                        );
                        await Future.delayed(const Duration(seconds: 5))
                            .whenComplete(
                          () {
                            Navigator.of(context).pop();
                          },
                        );
                      }
                    },
                    style: ElevatedButton.styleFrom(
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(28)),
                        ),
                        elevation: 0,
                        shadowColor: Colors.transparent,
                        backgroundColor: Cor.corAzulClaro),
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
