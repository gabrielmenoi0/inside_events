import 'package:awesome_card/awesome_card.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:inside_events/Pagamento/AdicionarCartao.dart';
import 'package:inside_events/Pagamento/cardoption1.dart';
import 'package:inside_events/Pagamento/cardoption2.dart';

class removecard2 extends StatefulWidget {
  const removecard2({super.key});

  @override
  State<removecard2> createState() => _removecard2State();
}

class _removecard2State extends State<removecard2> {
  List<String> items = [
    'Forma de pagamento',
    'Pix',
    'Crédito',
    'Débito',
  ];
  String? selectedItem = 'Forma de pagamento';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Color(0xff2B4F71)),
        elevation: 0,
        backgroundColor: Color(0xffE9EDF8),
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
            color: const Color(0xffE9EDF8),
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
                      fillColor: Colors.white,
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
                    iconDisabledColor: const Color(0xff2B4F71),
                    iconEnabledColor: const Color(0xff2B4F71),
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
          const SizedBox(
            height: 10,
          ),
          CreditCard(
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
          const SizedBox(
            height: 5,
          ),
          TextButton(
            onPressed: () {},
            child: Text(
              '-Remover Cartão',
              style: GoogleFonts.montserrat(
                  fontSize: 17, color: const Color(0xff2B4F71)),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height / 2.73,
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
                  backgroundColor: const Color(0xffACD7FF),
                ),
                child: Text(
                  'Adicionar mais cartões',
                  style: GoogleFonts.montserrat(
                      color: Colors.white,
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
    color: const Color(0xff0B0B0F),
  );

  static Widget white = Container(
    width: double.maxFinite,
    height: double.maxFinite,
    color: const Color(0xffF9F9FA),
  );

  static Widget purple = Container(
    width: double.maxFinite,
    height: double.maxFinite,
    color: Colors.deepPurple,
  );

  static Widget custom(color) {
    return Container(
      width: double.maxFinite,
      height: double.maxFinite,
      color: Color(color),
    );
  }
}
