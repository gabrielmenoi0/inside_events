import 'package:awesome_card/awesome_card.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:inside_events/Drawer_and_AppBar/appbar.dart';
import 'package:inside_events/Pagamento/AdicionarCartao.dart';
import 'package:inside_events/Pagamento/Removecard1.dart';
import 'package:inside_events/Pagamento/cardoption1.dart';
import 'package:inside_events/Pagamento/cardoption2.dart';
import 'package:inside_events/Pagamento/removecard2.dart';
import 'package:inside_events/utils/appColors.dart';

class PayPage extends StatefulWidget {
  const PayPage({super.key});

  @override
  State<PayPage> createState() => _PayPageState();
}

class _PayPageState extends State<PayPage> {
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
                padding: const EdgeInsets.only(left: 60, right: 60),
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
          InkWell(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (_) => Option1()),
              );
            },
            child: CreditCard(
              cardNumber: "9263 3678 3926 8263",
              cardExpiry: "10/25",
              cardHolderName: "Gabriel Menoi",
              cvv: "456",
              bankName: "Itaucard",
              cardType: CardType.masterCard,
              showBackSide: false,
              frontBackground: CardBackgrounds.black,
              backBackground: CardBackgrounds.white,
              textExpDate: 'válidade',
              textName: 'Gabriel Menoi',
              textExpiry: 'MM/YY',
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          TextButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (_) => removecard1()),
              );
            },
            child: Text(
              '-Remover Cartão',
              style: GoogleFonts.montserrat(
                  fontSize: 17, color: Cor.corEscuroAzul),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          InkWell(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (_) => const Option2()),
              );
            },
            child: CreditCard(
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
          ),
          const SizedBox(
            height: 5,
          ),
          TextButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (_) => const removecard2()),
              );
            },
            child: Text(
              '-Remover Cartão',
              style: GoogleFonts.montserrat(
                  fontSize: 17, color: Cor.corEscuroAzul),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height / 29,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: SizedBox(
              width: 60,
              height: 50,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (_) => Addcard(title: '')),
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
                  'Adicionar mais cartões',
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
