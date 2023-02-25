import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:inside_events/login/tela_login/login_page.dart';
import 'package:inside_events/utils/appColors.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:google_fonts/google_fonts.dart';

class OnBoardingPage extends StatefulWidget {
  const OnBoardingPage({
    super.key,
  });

  @override
  _OnBoardingPageState createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<OnBoardingPage> {
  final introKey = GlobalKey<IntroductionScreenState>();

  void _onIntroEnd(context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const Login_page(),
      ),
    );
  }

  PageDecoration pageDecoration = const PageDecoration(
    titleTextStyle: TextStyle(fontSize: 28.0, fontWeight: FontWeight.w700),
    bodyPadding: EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 16.0),
    pageColor: Cor.corBranco,
    imagePadding: EdgeInsets.zero,
    contentMargin: EdgeInsets.only(
      top: 110,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      backgroundColor: Cor.corBranco,
      body: IntroductionScreen(
        key: introKey,
        globalBackgroundColor: Cor.corBranco,
        // globalHeader: Align(
        //   alignment: Alignment.topLeft,
        //   child: SafeArea(
        //     child: Padding(
        //       padding: const EdgeInsets.only(top: 100, left: 40),
        //       child: Text('1'),
        //     ),
        //   ),
        // ),
        pages: [
          PageViewModel(
            titleWidget: Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Container(
                alignment: Alignment.center,
                color: Colors.transparent,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      alignment: Alignment.center,
                      width: 70,
                      height: 70,
                      decoration: BoxDecoration(
                          color: Cor.corBranco,
                          borderRadius: BorderRadius.circular(50.0)),
                      child: Text(
                        '1',
                        style: GoogleFonts.montserrat(
                            fontSize: 64,
                            color: Cor.corEscuroAzul,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Text(
                        'Eventos',
                        style: GoogleFonts.montserrat(
                            fontSize: 36,
                            fontWeight: FontWeight.w500,
                            color: Cor.corEscuroAzul),
                      ),
                    )
                  ],
                ),
              ),
            ),
            body:
                "A tela de eventos funciona para que você ache o que mais te interessar de uma forma facil e simples de se navegar, utilizando de uma barra de pesquisa objetiva e com um menu de simples entendimento ",
            footer: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset(
                "assets/menufoto.png",
              ),
            ),
            decoration: pageDecoration.copyWith(
              fullScreen: false,
              bodyTextStyle: GoogleFonts.montserrat(fontSize: 17),
              descriptionPadding: const EdgeInsets.all(10),
              footerPadding:
                  const EdgeInsets.only(left: 10, right: 10, top: 10),
            ),
            reverse: true,
          ),
          PageViewModel(
            titleWidget: Padding(
              padding: const EdgeInsets.only(left: 20, bottom: 50),
              child: Container(
                alignment: Alignment.center,
                color: Colors.transparent,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      alignment: Alignment.center,
                      width: 70,
                      height: 70,
                      decoration: BoxDecoration(
                          color: Cor.corBranco,
                          borderRadius: BorderRadius.circular(50.0)),
                      child: Text(
                        '2',
                        style: GoogleFonts.montserrat(
                            fontSize: 64,
                            color: Cor.corEscuroAzul,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Text(
                        'Inscrição',
                        style: GoogleFonts.montserrat(
                            fontSize: 36,
                            fontWeight: FontWeight.w500,
                            color: Cor.corEscuroAzul),
                      ),
                    )
                  ],
                ),
              ),
            ),
            bodyWidget: Center(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset("assets/inscreva.png"),
              ),
            ),
            footer: Text(
                'Para se inscrever nos eventos é simples, você apenas irma precisar selecionar o evento e depois apertar no botão “inscrever-se”',
                style: GoogleFonts.montserrat(fontSize: 17),
                textAlign: TextAlign.center),
            decoration: pageDecoration.copyWith(
              bodyAlignment: Alignment.topCenter,
              footerPadding:
                  const EdgeInsets.only(top: 20, left: 15, right: 15),
            ),
            reverse: true,
          ),
          PageViewModel(
            titleWidget: Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Container(
                alignment: Alignment.center,
                color: Colors.transparent,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      alignment: Alignment.center,
                      width: 70,
                      height: 70,
                      decoration: BoxDecoration(
                          color: Cor.corBranco,
                          borderRadius: BorderRadius.circular(50.0)),
                      child: Text(
                        '3',
                        style: GoogleFonts.montserrat(
                            fontSize: 64,
                            color: Cor.corEscuroAzul,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Text(
                        'Pagamento',
                        style: GoogleFonts.montserrat(
                            fontSize: 36,
                            fontWeight: FontWeight.w500,
                            color: Cor.corEscuroAzul),
                      ),
                    )
                  ],
                ),
              ),
            ),
            body:
                "Se o Evento for pago depois de apertar em “inscrever-se” o app te levará a página de pagamento onde você irá cadastrar selecionar a forma de pagamento e cadastrar os dados necessários",
            footer: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset(
                "assets/cartaoimg.png",
                width: 200,
              ),
            ),
            decoration: pageDecoration.copyWith(
              fullScreen: false,
              bodyTextStyle: GoogleFonts.montserrat(fontSize: 17),
              descriptionPadding: const EdgeInsets.all(10),
              footerPadding:
                  const EdgeInsets.only(left: 10, right: 10, top: 10),
            ),
            reverse: true,
          ),
          PageViewModel(
            titleWidget: Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Container(
                alignment: Alignment.center,
                color: Colors.transparent,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      alignment: Alignment.center,
                      width: 70,
                      height: 70,
                      decoration: BoxDecoration(
                          color: Cor.corBranco,
                          borderRadius: BorderRadius.circular(50.0)),
                      child: Text(
                        '4',
                        style: GoogleFonts.montserrat(
                            fontSize: 64,
                            color: Cor.corEscuroAzul,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Text(
                        'QrCode',
                        style: GoogleFonts.montserrat(
                            fontSize: 36,
                            fontWeight: FontWeight.w500,
                            color: Cor.corEscuroAzul),
                      ),
                    )
                  ],
                ),
              ),
            ),
            bodyWidget: Center(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset(
                  "assets/qrimage.png",
                  height: 200,
                ),
              ),
            ),
            footer: Text(
                'Se preferir utilizar um código QR apenas aperte na barra superior com o ícone de QRCode e o app te levará ao scaner, depois de scanear iremos confirmar seu código!',
                style: GoogleFonts.montserrat(fontSize: 17),
                textAlign: TextAlign.center),
            decoration: pageDecoration.copyWith(
              bodyAlignment: Alignment.topCenter,
              footerPadding:
                  const EdgeInsets.only(top: 20, left: 20, right: 20),
            ),
            reverse: true,
          ),
        ],
        onDone: () => _onIntroEnd(context),
        showSkipButton: true,
        skipOrBackFlex: 0,
        nextFlex: 1,
        dotsFlex: 1,
        showBackButton: false,
        back: const Icon(Icons.arrow_back),
        skip: Text(
          'Pular',
          style: GoogleFonts.montserrat(
            fontSize: 17,
            fontWeight: FontWeight.w500,
            color: Cor.corEscuroAzul,
          ),
        ),
        next: Padding(
          padding: const EdgeInsets.only(left: 5),
          child: Container(
            alignment: Alignment.center,
            width: MediaQuery.of(context).size.width / 3,
            height: 35,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Cor.corEscuroAzul),
            child: Padding(
              padding:
                  const EdgeInsets.only(left: 5, right: 5, top: 5, bottom: 5),
              child: Text(
                'Avançar!',
                style: GoogleFonts.montserrat(
                  fontSize: 17,
                  fontWeight: FontWeight.w600,
                  color: Cor.corBranco,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ),
        done: Container(
          width: MediaQuery.of(context).size.width / 2,
          height: 35,
          alignment: Alignment.center,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: Cor.corEscuroAzul),
          child: Padding(
            padding:
                const EdgeInsets.only(left: 5, right: 5, top: 5, bottom: 5),
            child: Text(
              'Feito!',
              style: GoogleFonts.montserrat(
                fontSize: 17,
                fontWeight: FontWeight.w600,
                color: Cor.corBranco,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ),
        animationDuration: 500,
        curve: Curves.easeOut,
        controlsMargin: const EdgeInsets.only(bottom: 20, left: 30, right: 1),
        controlsPadding: kIsWeb
            ? const EdgeInsets.only(left: 10, right: 3)
            : const EdgeInsets.fromLTRB(12, 12, 12, 12),
        dotsDecorator: const DotsDecorator(
          spacing: EdgeInsets.all(6),
          size: Size(12.0, 12.0),
          color: Cor.cormeioCinza,
          activeSize: Size(15.0, 15.0),
          activeColor: Cor.corEscuroAzul,
          activeShape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(50.0),
            ),
          ),
        ),
        dotsContainerDecorator: const ShapeDecoration(
          color: Colors.transparent,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(8.0)),
          ),
        ),
      ),
    );
  }
}
