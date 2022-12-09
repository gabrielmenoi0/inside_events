import 'package:awesome_card/awesome_card.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Perfilpage extends StatefulWidget {
  const Perfilpage({super.key});

  @override
  State<Perfilpage> createState() => _PerfilpageState();
}

class _PerfilpageState extends State<Perfilpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          const SliverAppBar(
            backgroundColor: Color(0xffCFE2FF),
            expandedHeight: 20,
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(0),
              child: Padding(
                padding: const EdgeInsets.all(0),
                child: Column(
                  children: [
                    Stack(
                      children: [
                        Container(
                          height: 60,
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.vertical(
                                bottom: Radius.circular(0)),
                            color: Color(0xffCFE2FF),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 25),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              CircleAvatar(
                                radius: 60,
                                backgroundColor: Colors.orange,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Text('testee'),
                                  Text('testee'),
                                  Text('testee'),
                                  Text('testee'),
                                ],
                              )
                            ],
                          ),
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
