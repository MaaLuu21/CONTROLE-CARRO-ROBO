import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:math';
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
      body: Stack(
        alignment: Alignment.topCenter,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 40),
                          child: TriangularButton(
                            size: 110,
                            onPressed: () {
                              print('Botão triangular pressionado!');
                            },
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 40, top: 20),
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
                        //ADICONAR BOTÕES SECUNDARIOS PARA OUTRAS FORMAS DE CURVA DO CARRO
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
            ],
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Container(
              height: 60,
              width: 150,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(20)),
              ),
              child: Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                 //Deixar dinâmico os container, verde claro quando estiver deligado, e vermelho claro quando estiver desligado!!!!!!!!!!!!!!!!!!!
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 255, 51, 0),
                          borderRadius: BorderRadius.all(Radius.circular(50)),
                        ),
                      ),
                    SizedBox(width: 10,),
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 47, 255, 0),
                        borderRadius: BorderRadius.all(Radius.circular(50)),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
      backgroundColor: Color.fromARGB(255, 28, 28, 28),
    );
  }
}
