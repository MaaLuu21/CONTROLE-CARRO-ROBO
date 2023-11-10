
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:math'; // Importe a biblioteca dart:math
import 'botaoTriangular.dart';

class ControleTela extends StatefulWidget {
  const ControleTela({super.key});

  @override
  State<ControleTela> createState() => _ControleTelaState();
}

class _ControleTelaState extends State<ControleTela> {
  @override
  void initState() {
    super.initState();
    SystemChrome.setPreferredOrientations([DeviceOrientation.landscapeRight]);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: TriangularButton(
                      size: 110,
                      onPressed: () {
                        print('Botão triangular pressionado!');
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20, top: 20),
                    child: Transform(
                      alignment: Alignment.center,
                      transform: Matrix4.rotationZ(pi),
                      child: TriangularButton(
                        size: 110,
                        onPressed: () {
                          print('Botão triangular pressionado de ponta cabeça!');
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Align(
                alignment: Alignment.centerRight,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 20),
                      child: Transform(
                        alignment: Alignment.center,
                        transform: Matrix4.rotationZ(-pi/2),
                        child: TriangularButton(
                          size: 110,
                          onPressed: () {
                            print('Botão triangular pressionado de ponta cabeça!');
                          },
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 20),
                      child: Transform(
                        alignment: Alignment.center,
                        transform: Matrix4.rotationZ(pi/2),
                        child: TriangularButton(
                          size: 110,
                          onPressed: () {
                            print('Botão triangular pressionado de ponta cabeça!');
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      backgroundColor: Color.fromARGB(255, 28, 28, 28),
    );
  }
}