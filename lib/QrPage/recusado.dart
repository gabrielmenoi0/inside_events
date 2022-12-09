import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../MenuPageG/MenuPage.dart';


class recusado extends StatefulWidget {
  const recusado({Key? key}) : super(key: key);

  @override
  State<recusado> createState() => _recusadoState();
}

class _recusadoState extends State<recusado> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFAFAFA),
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        const CircleAvatar(
            radius: 90.0,
            backgroundColor: Color(0xffCFE2FF),
            child: Icon(
              Icons.close,
              size: 120,
              color: Color(0xff2B4F71),
            )),
        Padding(
          padding: const EdgeInsets.only(top: 20.0),
          child: Text("Parece que tem algo de errado!",
              textAlign: TextAlign.center,
              style: GoogleFonts.montserrat(
                  fontSize: 20, color: Color(0xff2B4F71))),
        ),
        Padding(
          padding: const EdgeInsets.all(23),
          child: Text(
              "Não conseguimos confirmar o seu código QR, verifique se ele ainda existe ou tente novamente.",
              textAlign: TextAlign.center,
              style: GoogleFonts.montserrat(
                  fontSize: 16, color: Color(0xff2B4F71))),
        ),

        Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: SizedBox(
                height: MediaQuery.of(context).size.height / 20,
                width: MediaQuery.of(context).size.width / 1.5,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (_) => MenuPage()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(28)),
                      ),
                      elevation: 0,
                      backgroundColor: const Color(0xffACD7FF)),
                  child: Text(
                    'Voltar para o início',
                    style: GoogleFonts.montserrat(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                ),
              ),
            ),
          ],
        ),
      ]),
    );
  }
}
