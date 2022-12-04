import 'dart:developer';
import 'package:ai_barcode_scanner/ai_barcode_scanner.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:inside_events/InformacoesPage/InformacoesPage.dart';

class QrPage extends StatefulWidget {
  const QrPage({super.key});

  @override
  State<QrPage> createState() => _QrPageState();
}

class _QrPageState extends State<QrPage> {
  final isDetailsOpen = ValueNotifier<bool>(false);
  MobileScannerController cameraController = MobileScannerController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.black),
        title: const Text(
          'Scanner de código QR',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: Container(
        color: Colors.transparent,
        width: double.infinity,
        height: double.infinity,
        child: Center(
          child: AiBarcodeScanner(
            onScan: (String value) {
              debugPrint(value);
            },
            borderColor: const Color(0xff2B4F71),
            errorColor: Colors.red,
            borderWidth: 16,
            successColor: Colors.green,
            // overlayColor: const Color(0xffACD7FF),
            onDetect: (barcode, args) async {
              if (barcode.rawValue == "1111") {
                return Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (_) => const InformationPge(),
                  ),
                );
              } else {
                if (barcode.rawValue != "1111") {
                  log("resultado", error: barcode.rawValue);
                  Navigator.of(context).pop();
                  // navegar
                }
                // if (!isDetailsOpen.value) {
                //   isDetailsOpen.value = true;
                // }
              }
            },
            borderLength: 20,
            cutOutSize: 300,
            hintTextStyle: GoogleFonts.montserrat(fontSize: 20),
            // hintBackgroundColor: Colors.transparent,
            showHint: false,
            errorText: 'Inválido',
            showOverlay: true,
            canPop: false,
            showSuccess: true,
          ),
        ),
      ),
    );
  }
}
