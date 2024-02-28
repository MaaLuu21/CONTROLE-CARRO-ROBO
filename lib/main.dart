import 'package:carro_app/View/controleF.dart';
import 'package:carro_app/View/splash.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';


Future<void> main() async {
  runApp(
    DevicePreview(
      builder: (context) => MaterialApp(
        useInheritedMediaQuery: true,
        debugShowCheckedModeBanner: false,
        initialRoute: 'splash',
      routes: {
        'splash': (context) => Splashscreen(),
        'tela_principal': (context) => ControleTela(),        
      },
    ),
    ),
  );
}

