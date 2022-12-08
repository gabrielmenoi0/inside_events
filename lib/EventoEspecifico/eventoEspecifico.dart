import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:inside_events/Drawer_and_AppBar/appbar.dart';
import 'package:inside_events/EventoEspecifico/eventoEspecifico.dart';
import 'package:inside_events/InformacoesPage/InformacoesPage.dart';
import 'package:inside_events/MenuPageG/cards/card1.dart';
import 'package:inside_events/MenuPageG/cards/card2.dart';
import 'package:inside_events/QrPage/QrPage.dart';
import 'package:multi_dropdown/multiselect_dropdown.dart';


import '../Drawer_and_AppBar/drawer.dart';
class Eventos extends StatefulWidget {
  const Eventos({Key? key}) : super(key: key);

  @override
  State<Eventos> createState() => _EventosState();
}



class _EventosState extends State<Eventos> {


  bool medicina = true;
  bool tecnologia = false;
  bool direito = false;
  bool outros = false;

  @override
  Widget build(BuildContext context) {
    late List<Widget> imagens = [
      ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Image.asset(
          "assets/paracarrossel.png",
          fit: BoxFit.cover,
        ),
      ),
      ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Image.asset(
          "assets/paracarrossel.png",
          fit: BoxFit.cover,
        ),
      ),
      ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Image.asset(
          "assets/paracarrossel.png",
          fit: BoxFit.cover,
        ),
      ),
    ];
    return Scaffold(
      drawer: const Drawer(
        width: 250,
        elevation: 0,
        backgroundColor: Color(0xffE9EDF8),
        child: DrawerPaginas(),
      ),
      body: NestedScrollView(
        floatHeaderSlivers: true,
        headerSliverBuilder: (context, innerBoxIsScrolled) => [
          appbar(),
        ],
        body: ListView(
          scrollDirection: Axis.vertical,
          children: [

          Container(
            decoration: BoxDecoration(
              color: Color(0xffCFE2FF),

            ),
            child: Center(
              child:
              Text("Evento específico",
                style: GoogleFonts.montserrat(
                  fontSize: 24
              ),),
            ),

          ),

             Padding(
               padding: const EdgeInsets.only(top: 20.0),
               child: MultiSelectDropDown(
                 backgroundColor: Color(0xffCFE2FF),


                 onOptionSelected: (List<ValueItem> selectedOptions) {},
                 options: const <ValueItem>[
                   ValueItem(label: 'Medicina', value: '2'),
                   ValueItem(label: 'Tecnologia', value: '3'),
                   ValueItem(label: 'Direito', value: '4'),
                   ValueItem(label: 'Outros', value: '5'),
                 ],
                 selectionType: SelectionType.multi,
                 chipConfig: const ChipConfig(wrapType: WrapType.scroll),
                  hint: "Filtrar",

                  hintStyle: GoogleFonts.montserrat(fontSize: 15),
                 selectedOptionIcon: const Icon(Icons.check_circle),

               ),
             ),

            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                EventoContainer("assets/imagemenu/juridicas.jpeg", "Evento", "Local", context),
                EventoContainer("assets/imagemenu/juridicas.jpeg", "Evento", "Local", context),
              ],
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                EventoContainer("assets/imagemenu/eventoUnivem.jpeg", "Evento", "Local", context),
                EventoContainer("assets/imagemenu/eventoUnivem.jpeg", "Evento", "Local", context),

              ],
            ),

            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                EventoContainer("assets/imagemenu/grupoEvento.png", "Evento", "Local", context),
                EventoContainer("assets/imagemenu/grupoEvento.png", "Evento", "Local", context),
              ],
            ),

          ],
        ),
      ),
    );
  }
}

itemPadding(String info, Function tap) {
  return GestureDetector(
    onTap: tap(),
    child: Padding(
      padding: const EdgeInsets.only(top: 9, bottom: 5, right: 5, left: 4),
      child: Text(
        info,
        style: GoogleFonts.montserrat(fontSize: 20),
      ),
    ),
  );
}

EventoContainer(String image, String titulo, String local, context) {
  return Container(
    child: Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              border: Border.all(
                width: 5,
                color: const Color(0xffCFE2FF),
              ),
              borderRadius: BorderRadius.circular(6),
            ),
            child: InkWell(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (_) => InformationPge()),
                );
              },
              child: Image.asset(
                image,
                height: MediaQuery.of(context).size.height / 5,
              ),
            ),
          ),
          Text(
            titulo,
            style: GoogleFonts.montserrat(
                fontSize: 20, fontWeight: FontWeight.bold),
          ),
          Text(
            local,
            style: GoogleFonts.montserrat(fontSize: 17),
          ),
        ],
      ),
    ),
  );
}

