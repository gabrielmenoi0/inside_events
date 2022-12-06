import 'dart:math' as math;
import 'package:flutter/material.dart';
import 'package:awesome_card/awesome_card.dart';
import 'package:google_fonts/google_fonts.dart';

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
      floatingActionButtonLocation: FloatingActionButtonLocation.startTop,
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(left: 0, top: 15),
        child: SizedBox(
          width: 50,
          height: 50,
          child: FloatingActionButton(
            foregroundColor: Colors.green,
            elevation: 0,
            backgroundColor: Colors.transparent,
            splashColor: const Color(0xff2B4F71),
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: const Icon(
              Icons.arrow_back_ios_new_outlined,
              color: Color(0xff2B4F71),
            ),
          ),
        ),
      ),
      body: ListView(
        children: [
          const SizedBox(
            height: 30,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const SizedBox(
                height: 40,
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
                showShadow: true,
                mask: getCardTypeMask(cardType: CardType.americanExpress),
              ),
              const SizedBox(
                height: 40,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    margin: const EdgeInsets.symmetric(
                      horizontal: 20,
                    ),
                    child: TextFormField(
                      controller: cardNumberCtrl,
                      decoration:
                          const InputDecoration(hintText: 'Numero do cartão'),
                      maxLength: 16,
                      onChanged: (value) {
                        final newCardNumber = value.trim();
                        var newStr = '';
                        const step = 4;

                        for (var i = 0; i < newCardNumber.length; i += step) {
                          newStr += newCardNumber.substring(
                              i, math.min(i + step, newCardNumber.length));
                          if (i + step < newCardNumber.length) newStr += ' ';
                        }

                        setState(() {
                          cardNumber = newStr;
                        });
                      },
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(
                      horizontal: 20,
                    ),
                    child: TextFormField(
                      controller: expiryFieldCtrl,
                      decoration: const InputDecoration(hintText: 'Válidade'),
                      maxLength: 5,
                      onChanged: (value) {
                        var newDateValue = value.trim();
                        final isPressingBackspace =
                            expiryDate.length > newDateValue.length;
                        final containsSlash = newDateValue.contains('/');

                        if (newDateValue.length >= 2 &&
                            !containsSlash &&
                            !isPressingBackspace) {
                          newDateValue = newDateValue.substring(0, 2) +
                              '/' +
                              newDateValue.substring(2);
                        }
                        setState(() {
                          expiryFieldCtrl.text = newDateValue;
                          expiryFieldCtrl.selection =
                              TextSelection.fromPosition(
                                  TextPosition(offset: newDateValue.length));
                          expiryDate = newDateValue;
                        });
                      },
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(
                      horizontal: 20,
                    ),
                    child: TextFormField(
                      decoration:
                          const InputDecoration(hintText: 'Nome do cartão'),
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
                      decoration: const InputDecoration(hintText: 'CVV'),
                      maxLength: 3,
                      onChanged: (value) {
                        setState(() {
                          cvv = value;
                        });
                      },
                      focusNode: _focusNode,
                    ),
                  ),
                ],
              )
            ],
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
                  'Adicionar cartão',
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
