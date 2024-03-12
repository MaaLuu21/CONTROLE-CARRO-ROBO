import 'package:carro_app/View/controleF.dart';
import 'package:easy_splash_screen/easy_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});
    @override

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
    void initState() {
    super.initState();
    SystemChrome.setPreferredOrientations([DeviceOrientation.landscapeRight]);
  }
  Widget build(BuildContext context) {
    return EasySplashScreen(
      logo: Image.asset('assets/fundo-png.png'),
      //logoWidth: 160,
      title: Text('SEJA BEM VINDO',
              style: TextStyle(
                fontFamily: 'Micro5',
              fontSize: 110,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          backgroundColor: Colors.white,
          showLoader: true,
          loadingText: Text('Carregando...'),
          durationInSeconds: 3,
          navigator: ControleTela(),
    );;
  }
}