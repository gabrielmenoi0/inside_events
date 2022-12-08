import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:inside_events/MenuPageG/MenuPage.dart';
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
        builder: (context) => const MenuPage(),
      ),
    );
  }

  PageDecoration pageDecoration = const PageDecoration(
    titleTextStyle: TextStyle(fontSize: 28.0, fontWeight: FontWeight.w700),
    bodyPadding: EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 16.0),
    pageColor: Color(0xffffffff),
    imagePadding: EdgeInsets.zero,
    contentMargin: EdgeInsets.only(
      top: 110,
    ),
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      backgroundColor: const Color(0xffffffff),
      body: IntroductionScreen(
        key: introKey,
        globalBackgroundColor: const Color(0xffffffff),
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
                          color: const Color(0xffCBCEDF),
                          borderRadius: BorderRadius.circular(50.0)),
                      child: Text(
                        '1',
                        style: GoogleFonts.montserrat(
                            fontSize: 64,
                            color: const Color(0xff2B4F71),
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
                            color: const Color(0xff2B4F71)),
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
                "assets/fundu.png",
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
                          color: const Color(0xffCBCEDF),
                          borderRadius: BorderRadius.circular(50.0)),
                      child: Text(
                        '2',
                        style: GoogleFonts.montserrat(
                            fontSize: 64,
                            color: const Color(0xff2B4F71),
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
                            color: Color(0xff2B4F71)),
                      ),
                    )
                  ],
                ),
              ),
            ),
            bodyWidget: Center(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset("assets/fundu.png"),
              ),
            ),
            footer: Text('Para se inscrever nos eventos é simples',
                style: GoogleFonts.montserrat(fontSize: 17),
                textAlign: TextAlign.center),
            decoration: pageDecoration.copyWith(
              bodyAlignment: Alignment.topCenter,
              footerPadding:
                  const EdgeInsets.only(top: 20, left: 10, right: 10),
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
                          color: const Color(0xffCBCEDF),
                          borderRadius: BorderRadius.circular(50.0)),
                      child: Text(
                        '3',
                        style: GoogleFonts.montserrat(
                            fontSize: 64,
                            color: const Color(0xff2B4F71),
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
                            color: const Color(0xff2B4F71)),
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
                "assets/fundu.png",
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
                          color: const Color(0xffCBCEDF),
                          borderRadius: BorderRadius.circular(50.0)),
                      child: Text(
                        '4',
                        style: GoogleFonts.montserrat(
                            fontSize: 64,
                            color: const Color(0xff2B4F71),
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
                            color: const Color(0xff2B4F71)),
                      ),
                    )
                  ],
                ),
              ),
            ),
            bodyWidget: Center(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset("assets/fundu.png"),
              ),
            ),
            footer: Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras dapibus, mauris a euismod semper, purus tellus blandit est, et hendrerit tellus nisl in risus. Cras ut sem aliquet, aliquam turpis eu, cursus tortor.',
                style: GoogleFonts.montserrat(fontSize: 17),
                textAlign: TextAlign.center),
            decoration: pageDecoration.copyWith(
              bodyAlignment: Alignment.topCenter,
              footerPadding:
                  const EdgeInsets.only(top: 20, left: 10, right: 10),
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
            color: const Color(0xff2B4F71),
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
                color: const Color(0xff2B4F71)),
            child: Padding(
              padding:
                  const EdgeInsets.only(left: 5, right: 5, top: 5, bottom: 5),
              child: Text(
                'Avançar!',
                style: GoogleFonts.montserrat(
                  fontSize: 17,
                  fontWeight: FontWeight.w600,
                  color: const Color(0xffFFFFFF),
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
              color: const Color(0xff2B4F71)),
          child: Padding(
            padding:
                const EdgeInsets.only(left: 5, right: 5, top: 5, bottom: 5),
            child: Text(
              'Feito!',
              style: GoogleFonts.montserrat(
                fontSize: 17,
                fontWeight: FontWeight.w600,
                color: const Color(0xffFFFFFF),
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
          color: Color(0xff657A97),
          activeSize: Size(15.0, 15.0),
          activeColor: Color(0xff2B4F71),
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
