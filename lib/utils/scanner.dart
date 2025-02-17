import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:simple_barcode_scanner/simple_barcode_scanner.dart';

barcodeScanner (BuildContext context) async {
  String? res = await SimpleBarcodeScanner.scanBarcode(
    context,
    barcodeAppBar: const BarcodeAppBar(
      appBarTitle: 'Test',
      centerTitle: false,
      enableBackButton: true,
      backButtonIcon: Icon(Icons.arrow_back_ios),
    ),
    isShowFlashIcon: true,
    delayMillis: 2000,
    cameraFace: CameraFace.back,
  );
  return res as String;

}