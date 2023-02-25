import 'package:awesome_card/awesome_card.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:inside_events/Pagamento/Confirmaaopage.dart';
import 'package:inside_events/utils/appColors.dart';

class Option2 extends StatefulWidget {
  const Option2({super.key});

  @override
  State<Option2> createState() => _Option2State();
}

class _Option2State extends State<Option2> {
  List<String> items = [
    'Forma de pagamento',
    'Cartão 1',
    'Cartão 2',
  ];
  String? selectedItem = 'Forma de pagamento';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Cor.corEscuroAzul),
        elevation: 0,
        backgroundColor: Cor.corBrancoFumaca,
        leading: InkWell(
          onTap: () {
            Navigator.of(context).pop();
          },
          child: Icon(Icons.adaptive.arrow_back),
        ),
      ),
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          Container(
            height: 50,
            color: Cor.corBrancoFumaca,
            alignment: Alignment.center,
            child: Container(
              alignment: Alignment.center,
              child: Padding(
                padding: const EdgeInsets.only(
                  left: 60,
                  right: 60,
                ),
                child: SizedBox(
                  height: 35,
                  child: DropdownButtonFormField<String>(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Cor.corBranco,
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide.none,
                      ),
                      contentPadding:
                          const EdgeInsets.only(bottom: 3, left: 10),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide.none,
                      ),
                    ),
                    value: selectedItem,
                    items: items
                        .map((item) => DropdownMenuItem<String>(
                              value: item,
                              child: Text(
                                item,
                                style: GoogleFonts.montserrat(
                                    fontSize: 15, fontWeight: FontWeight.w400),
                              ),
                            ))
                        .toList(),
                    borderRadius: BorderRadius.circular(10),
                    elevation: 0,
                    icon: const Icon(
                      Icons.arrow_drop_down,
                    ),
                    iconSize: 30,
                    iconDisabledColor: Cor.corEscuroAzul,
                    iconEnabledColor: Cor.corEscuroAzul,
                    onChanged: (item) => setState(
                      (() => selectedItem = item),
                    ),
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          CreditCard(
            cardNumber: "5450 7879 4864 7854",
            cardExpiry: "10/23",
            cardHolderName: "Graziella Bedani",
            cvv: "620",
            bankName: "Nubank",
            cardType: CardType.visa,
            showBackSide: false,
            frontBackground: CardBackgrounds.purple,
            backBackground: CardBackgrounds.black,
            textExpDate: 'válidade',
            textName: 'Graziella Bedani',
            textExpiry: 'MM/YY',
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height / 2.2,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: SizedBox(
              width: 60,
              height: 50,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (_) => Carfimacao()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(28),
                    ),
                  ),
                  elevation: 0,
                  backgroundColor: Cor.corAzulClaro,
                ),
                child: Text(
                  'Continuar',
                  style: GoogleFonts.montserrat(
                      color: Cor.corBranco,
                      fontWeight: FontWeight.w500,
                      fontSize: 20),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class CardBackgrounds {
  CardBackgrounds._();

  static Widget black = Container(
    width: double.maxFinite,
    height: double.maxFinite,
    color: Cor.corPreto,
  );

  static Widget white = Container(
    width: double.maxFinite,
    height: double.maxFinite,
    color: Cor.corBranco,
  );

  static Widget purple = Container(
    width: double.maxFinite,
    height: double.maxFinite,
    color: Cor.corLilasEscuro,
  );

  static Widget custom(color) {
    return Container(
      width: double.maxFinite,
      height: double.maxFinite,
      color: Color(color),
    );
  }
}
