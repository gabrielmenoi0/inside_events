import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:mobile_scanner/mobile_scanner.dart';

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
        iconTheme: IconThemeData(color: Colors.black),
        title: const Text(
          'Scanner de código QR',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: Center(
        child: ValueListenableBuilder(
          valueListenable: isDetailsOpen,
          builder: (context, value, child) {
            return Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.red),
              height:
              MediaQuery.of(context).size.height,
              width:
              MediaQuery.of(context).size.height ,
              child: MobileScanner(
                  allowDuplicates: true,
                  controller: cameraController,
                  onDetect: (barcode, args) async {
                    if (barcode.rawValue == null) {
                      debugPrint('Failed to scan Barcode');
                    } else {
                      if(barcode.rawValue == "1111"){
                        log("resultado",error: barcode.rawValue);
                        // return Navigator.of(context).pop();
                      /// navegar
                      }
                      // if (!isDetailsOpen.value) {
                      //   isDetailsOpen.value = true;
                      // }
                    }
                  }),
            );
          },
        ),
      ),
      // Center(
      //   child: Container(
      //     width: 300,
      //     height: 400,
      //     decoration: BoxDecoration(
      //       color: const Color(0xffACD7FF),
      //       borderRadius: BorderRadius.circular(30),
      //     ),
      //     child: const Icon(
      //       Icons.qr_code_scanner_outlined,
      //       size: 300,
      //     ),
      //   ),
      // ),
    );
  }
}
