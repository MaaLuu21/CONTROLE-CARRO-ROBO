// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:math';
import '../model/botaoTriangular.dart';

class ControleTela extends StatefulWidget {
  const ControleTela({Key? key}) : super(key: key);

  @override
  State<ControleTela> createState() => _ControleTelaState();
}

class _ControleTelaState extends State<ControleTela> {
  bool _switchValue = false;

  @override
  void initState() {
    super.initState();
    SystemChrome.setPreferredOrientations([DeviceOrientation.landscapeRight]);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          PopupMenuButton<int>(
            itemBuilder: (context) => [
              PopupMenuItem(
                //!!!!!!!!!!VER COMO MUDAR A COR DO FUNDO!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
                value: 1,
                child: StatefulBuilder(
                  builder: (context, setState) {
                    return Row(
                      children: [
                        Icon(Icons.bluetooth, color: Colors.black,),
                        SizedBox(width: 15),
                        Spacer(),
                        Switch(
                          value: _switchValue,
                          onChanged: (value) {
                            setState(() {
                              _switchValue = value;
                            });
                          },
                          activeColor: Color.fromARGB(255, 0, 0, 0),
                        ),
                      ],
                    );
                  },
                ),
              ),
            ],
            icon: Icon(Icons.more_vert, color: Colors.white,),
            onSelected: (value) {
              if (value == 1) {
                // Ação para abrir as configurações
              }
            },
          ),
        ],
        backgroundColor: Colors.black,
      ),
      body: Column(
        children: [
          //SizedBox(height: 1,),
          Expanded(
            child: Container(
              child: Stack(
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
                                  padding: const EdgeInsets.only(left: 90, bottom: 50),
                                  child: InkWell(
                                    child: TriangularButton(
                                      size: 160,
                                      onPressed: () {
                                        print('Botão triangular pressionado!');
                                      },
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 90, bottom: 60),
                                  child: Transform(
                                    alignment: Alignment.center,
                                    transform: Matrix4.rotationZ(pi),
                                    child: TriangularButton(
                                      size: 160,
                                      onPressed: () {
                                        print('Botão pressionado');
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
                                    padding: const EdgeInsets.only(right: 60, bottom: 60),
                                    child: Transform(
                                      alignment: Alignment.center,
                                      transform: Matrix4.rotationZ(-pi / 2),
                                      child: TriangularButton(
                                        size: 160,
                                        onPressed: () {
                                          print('Botão triangular pressionado');
                                        },
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 90, bottom: 60),
                                    child: Transform(
                                      alignment: Alignment.center,
                                      transform: Matrix4.rotationZ(pi / 2),
                                      child: TriangularButton(
                                        size: 160,
                                        onPressed: () {
                                          print('Botão triangular pressionado');
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
                ],
              ),
            ),
          ),
        ],
      ),
      backgroundColor: Colors.white,
    );
  }
}
