import 'dart:math' as math;
import 'package:flutter/material.dart';
import 'package:awesome_card/awesome_card.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:inside_events/utils/appColors.dart';

class Addcard extends StatefulWidget {
  Addcard({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  _AddcardState createState() => _AddcardState();
}

class _AddcardState extends State<Addcard> {
  String cardNumber = '';
  String cardHolderName = '';
  String expiryDate = '';
  String cvv = '';
  bool showBack = false;

  late FocusNode _focusNode;
  TextEditingController cardNumberCtrl = TextEditingController();
  TextEditingController expiryFieldCtrl = TextEditingController();

  @override
  void initState() {
    super.initState();
    _focusNode = FocusNode();
    _focusNode.addListener(() {
      setState(() {
        _focusNode.hasFocus ? showBack = true : showBack = false;
      });
    });
  }

  @override
  void dispose() {
    _focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          const SliverAppBar(
            backgroundColor: Cor.corBranco,
            expandedHeight: 70,
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(0),
              child: Padding(
                padding: EdgeInsets.all(0),
                child: Column(
                  children: [
                    Stack(
                      children: [
                        Container(
                          height: 100,
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.vertical(
                                bottom: Radius.circular(0)),
                            color: Cor.corBranco,
                          ),
                        ),
                        CreditCard(
                          cardNumber: cardNumber,
                          cardExpiry: expiryDate,
                          cardHolderName: cardHolderName,
                          cvv: cvv,
                          bankName: 'Axis Bank',
                          showBackSide: showBack,
                          frontBackground: CardBackgrounds.black,
                          backBackground: CardBackgrounds.white,
                          mask: getCardTypeMask(
                              cardType: CardType.americanExpress),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            SizedBox(
                              height: MediaQuery.of(context).size.height / 3.5,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Container(
                                  margin: EdgeInsets.symmetric(
                                    horizontal: 20,
                                  ),
                                  child: TextFormField(
                                    controller: cardNumberCtrl,
                                    decoration: InputDecoration(
                                        hintText: 'Numero do cartão'),
                                    maxLength: 16,
                                    onChanged: (value) {
                                      final newCardNumber = value.trim();
                                      var newStr = '';
                                      final step = 4;

                                      for (var i = 0;
                                          i < newCardNumber.length;
                                          i += step) {
                                        newStr += newCardNumber.substring(
                                            i,
                                            math.min(i + step,
                                                newCardNumber.length));
                                        if (i + step < newCardNumber.length)
                                          newStr += ' ';
                                      }

                                      setState(() {
                                        cardNumber = newStr;
                                      });
                                    },
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.symmetric(
                                    horizontal: 20,
                                  ),
                                  child: TextFormField(
                                    controller: expiryFieldCtrl,
                                    decoration:
                                        InputDecoration(hintText: 'Vencimento'),
                                    maxLength: 5,
                                    onChanged: (value) {
                                      var newDateValue = value.trim();
                                      final isPressingBackspace =
                                          expiryDate.length >
                                              newDateValue.length;
                                      final containsSlash =
                                          newDateValue.contains('/');

                                      if (newDateValue.length >= 2 &&
                                          !containsSlash &&
                                          !isPressingBackspace) {
                                        newDateValue =
                                            newDateValue.substring(0, 2) +
                                                '/' +
                                                newDateValue.substring(2);
                                      }
                                      setState(() {
                                        expiryFieldCtrl.text = newDateValue;
                                        expiryFieldCtrl.selection =
                                            TextSelection.fromPosition(
                                                TextPosition(
                                                    offset:
                                                        newDateValue.length));
                                        expiryDate = newDateValue;
                                      });
                                    },
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.symmetric(
                                    horizontal: 20,
                                  ),
                                  child: TextFormField(
                                    decoration: InputDecoration(
                                        hintText: 'Nome do Cartão'),
                                    onChanged: (value) {
                                      setState(() {
                                        cardHolderName = value;
                                      });
                                    },
                                  ),
                                ),
                                Container(
                                  margin: const EdgeInsets.symmetric(
                                      horizontal: 20, vertical: 25),
                                  child: TextFormField(
                                    decoration:
                                        InputDecoration(hintText: 'CVV'),
                                    maxLength: 3,
                                    onChanged: (value) {
                                      setState(() {
                                        cvv = value;
                                      });
                                    },
                                    focusNode: _focusNode,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 35, right: 35, top: 10, bottom: 20),
                                  child: Container(
                                    width: double.infinity,
                                    alignment: Alignment.center,
                                    child: SizedBox(
                                      height: 50,
                                      width: 300,
                                      child: ElevatedButton(
                                        onPressed: () {},
                                        style: ElevatedButton.styleFrom(
                                            shape: const RoundedRectangleBorder(
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(28)),
                                            ),
                                            elevation: 0,
                                            backgroundColor: Cor.corAzulClaro),
                                        child: Text(
                                          'Adicionar',
                                          style: GoogleFonts.montserrat(
                                              color: Cor.corEscuroAzul,
                                              fontWeight: FontWeight.w600,
                                              fontSize: 20),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
