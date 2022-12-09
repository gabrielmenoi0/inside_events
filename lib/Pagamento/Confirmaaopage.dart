import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Carfimacao extends StatefulWidget {
  const Carfimacao({super.key});

  @override
  State<Carfimacao> createState() => _CarfimacaoState();
}

class _CarfimacaoState extends State<Carfimacao> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Color(0xff2B4F71)),
        leading: InkWell(
          onTap: () {
            Navigator.of(context).pop();
          },
          child: Icon(Icons.adaptive.arrow_back),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Center(
        child: Text('Em Andamento'),
      ),
    );
  }
}
