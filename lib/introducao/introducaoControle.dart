import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:inside_events/login/loginteste.dart';
import 'package:introduction_screen/introduction_screen.dart';

void main() => runApp(const IntroducaoControle());

class IntroducaoControle extends StatelessWidget {
  const IntroducaoControle({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Introduction screen',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(),
      home: const OnBoardingPage(),
    );
  }
}

class OnBoardingPage extends StatefulWidget {
  const OnBoardingPage({super.key});

  @override
  _OnBoardingPageState createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<OnBoardingPage> {
  final introKey = GlobalKey<IntroductionScreenState>();

  void _onIntroEnd(context) {
    Navigator.of(context).push(
      MaterialPageRoute(builder: (_) => const LoginPage()),
    );
  }

  @override
  Widget build(BuildContext context) {
    const pageDecoration = PageDecoration(
      titleTextStyle: TextStyle(fontSize: 28.0, fontWeight: FontWeight.w700),
      bodyPadding: EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 16.0),
      pageColor: Color(0xffC9CFDF),
      imagePadding: EdgeInsets.zero,
      contentMargin: EdgeInsets.only(
        top: 110,
      ),
    );

    return Scaffold(
      extendBody: true,
      backgroundColor: const Color(0xff657A97),
      body: IntroductionScreen(
        key: introKey,
        globalBackgroundColor: const Color(0xffC9CFDF),
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
            title: "Full Screen Page",
            body:
                "Pages can be full screen as well.\n\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc id euismod lectus, non tempor felis. Nam rutrum rhoncus est ac venenatis.",
            footer: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset("assets/fundu.png"),
            ),
            decoration: pageDecoration.copyWith(
              fullScreen: false,
              footerPadding:
                  const EdgeInsets.only(left: 30, right: 30, top: 35),
            ),
            reverse: true,
          ),
          PageViewModel(
            title: "titulo reverso",
            bodyWidget: Center(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset("assets/fundu.png"),
              ),
            ),
            footer: const Text(
                'Pages can be full screen as well.\n\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc id euismod lectus, non tempor felis. Nam rutrum rhoncus est ac venenatis.',
                textAlign: TextAlign.center),
            decoration: pageDecoration.copyWith(
              bodyAlignment: Alignment.topCenter,
              footerPadding:
                  const EdgeInsets.only(top: 20, left: 10, right: 10),
              titlePadding: const EdgeInsets.only(bottom: 70, top: 20),
            ),
            reverse: true,
          ),
          PageViewModel(
            title: "Full Screen Page",
            body:
                "Pages can be full screen as well.\n\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc id euismod lectus, non tempor felis. Nam rutrum rhoncus est ac venenatis.",
            footer: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset("assets/fundu.png"),
            ),
            decoration: pageDecoration.copyWith(
              fullScreen: false,
              footerPadding:
                  const EdgeInsets.only(left: 30, right: 30, top: 35),
            ),
            reverse: true,
          ),
          PageViewModel(
            title: "titulo reverso",
            bodyWidget: Center(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset("assets/fundu.png"),
              ),
            ),
            footer: const Text(
                'Pages can be full screen as well.\n\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc id euismod lectus, non tempor felis. Nam rutrum rhoncus est ac venenatis.',
                textAlign: TextAlign.center),
            decoration: pageDecoration.copyWith(
              bodyAlignment: Alignment.topCenter,
              footerPadding:
                  const EdgeInsets.only(top: 20, left: 10, right: 10),
              titlePadding: const EdgeInsets.only(bottom: 70, top: 20),
            ),
            reverse: true,
          ),
          // PageViewModel(
          //   title: "Title of last page - reversed",
          //   bodyWidget: Row(
          //     mainAxisAlignment: MainAxisAlignment.center,
          //     children: const [
          //       Text("Click on "),
          //       Icon(Icons.edit),
          //       Text(
          //         " to edit a post",
          //       ),
          //     ],
          //   ),
          //   decoration: pageDecoration.copyWith(
          //     bodyFlex: 2,
          //     imageFlex: 4,
          //     bodyAlignment: Alignment.bottomCenter,
          //     imageAlignment: Alignment.topCenter,
          //   ),
          //   image: Image.network(
          //       'https://image.shutterstock.com/image-illustration/3d-rendering-4k-image-abstract-260nw-1807917784.jpg'),
          //   reverse: true,
          // ),
        ],
        onDone: () => _onIntroEnd(context),
        showSkipButton: true,
        skipOrBackFlex: 2,
        nextFlex: 3,
        dotsFlex: 7,
        showBackButton: false,
        back: const Icon(Icons.arrow_back),
        nextStyle: TextButton.styleFrom(
          elevation: 900,
          padding: const EdgeInsets.all(5.0),
          textStyle: const TextStyle(color: Colors.transparent),
          backgroundColor: const Color(0xff2B4F71),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(100.0),
          ),
        ),
        doneStyle: TextButton.styleFrom(
          padding: const EdgeInsets.all(2),
          textStyle: const TextStyle(color: Colors.transparent),
          backgroundColor: const Color(0xff2B4F71),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(100.0),
          ),
        ),
        skip: const Text(
          'Pular',
          style: TextStyle(
            fontWeight: FontWeight.w600,
            color: Color(0xff2B4F71),
          ),
        ),
        next: const Text(
          'Avançar',
          style: TextStyle(
            fontWeight: FontWeight.w600,
            color: Color(0xffFFFFFF),
          ),
        ),
        done: const Text(
          'Feito!',
          style: TextStyle(
            fontWeight: FontWeight.w600,
            color: Color(0xffFFFFFF),
          ),
        ),
        curve: Curves.easeInOut,

        controlsMargin: const EdgeInsets.only(bottom: 20, left: 16, right: 16),
        controlsPadding: kIsWeb
            ? const EdgeInsets.all(12.0)
            : const EdgeInsets.fromLTRB(12, 12, 12, 12),
        dotsDecorator: const DotsDecorator(
          spacing: EdgeInsets.all(8),
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
