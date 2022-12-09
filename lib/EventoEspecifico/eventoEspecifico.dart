import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:inside_events/Drawer_and_AppBar/appbar.dart';
import 'package:inside_events/InformacoesPage/InformacoesPage.dart';
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
              Text("Tecnologia",
                style: GoogleFonts.montserrat(
                  fontSize: 24
              ),),
            ),

          ),

             Padding(
               padding: const EdgeInsets.only(top: 20.0, left: 120, right: 10),
               child: Container(
                 height: MediaQuery.of(context).size.height / 16,
                 child: MultiSelectDropDown(
                   backgroundColor: Color(0xffCFE2FF),


                   onOptionSelected: (List<ValueItem> selectedOptions) {

                   },
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
             ),

            SizedBox(
              height: 20,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                EventoContainer("assets/imagemenu/programacao.png", "Programação Phyton", "Univem", context),
                EventoContainer("assets/imagemenu/pesquisacienti.png", "12° Congresso de Pesquisa Científica", "Univem", context),
              ],
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                EventoContainer("assets/imagemenu/semanatec.png", "XV Semana de Tecnologia", "Univem", context),
                EventoContainer("assets/imagemenu/olimpiadaInf.png", "Olímpiada de informática", "Univem", context),

              ],
            ),

            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                EventoContainer("assets/imagemenu/Pontes.png", "Palestra: Marcos Pontes", "Univem", context),
                EventoContainer("assets/imagemenu/Pontes.png", "Palestra: Marcos Pontes", "Univem", context),
              ],
            ),

          ],
        ),
      ),
    );
  }
}



EventoContainer(String image, String titulo, String local, context) {
  return

    Container(
      width: MediaQuery.of(context).size.width / 2.05,
      child: Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        children: [
          InkWell(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (_) => InformationPge()),
              );
            },
            child: Image.asset(
              fit: BoxFit.cover,
              image,
              width: MediaQuery.of(context).size.width / 2.5,
              height: MediaQuery.of(context).size.height / 6,
            ),
          ),

          SizedBox(
            height: 5,
          ),

          Text(
            titulo,
            textAlign: TextAlign.center,
            style:
            GoogleFonts.montserrat(fontSize: 16,  fontWeight: FontWeight.bold),
          ),


          SizedBox(
            height: 5,
          ),
          Text(
            local,
            style: GoogleFonts.montserrat(fontSize: 15),
          ),
        ],

      ),
  ),
    );
}

