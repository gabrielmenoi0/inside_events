import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:inside_events/MenuPageG/MenuPage.dart';
import 'package:inside_events/utils/appColors.dart';

class aprovado extends StatefulWidget {
  const aprovado({Key? key}) : super(key: key);

  @override
  State<aprovado> createState() => _aprovadoState();
}

class _aprovadoState extends State<aprovado> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Cor.corBranco,
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        const CircleAvatar(
            radius: 90.0,
            backgroundColor: Cor.corBranco,
            child: Icon(
              Icons.check,
              size: 120,
              color: Cor.corEscuroAzul,
            )),
        Padding(
          padding: const EdgeInsets.only(top: 20.0),
          child: Text("Presença confirmada!",
              style: GoogleFonts.montserrat(
                  fontSize: 20, color: Cor.corEscuroAzul)),
        ),
        Padding(
          padding: const EdgeInsets.all(23),
          child: Text(
              "Agradecemos pela sua presença, esperamos que aproveite o evento!",
              textAlign: TextAlign.center,
              style: GoogleFonts.montserrat(
                  fontSize: 16, color: Cor.corEscuroAzul)),
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
                      backgroundColor: Cor.corAzulClaro),
                  child: Text(
                    'Voltar para o início',
                    style: GoogleFonts.montserrat(
                        color: Cor.corBranco,
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
