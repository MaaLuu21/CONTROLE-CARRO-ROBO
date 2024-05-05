// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:math';

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

  List<String> deviceNames = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(99, 141, 204, 0.612),
        actions: [
          PopupMenuButton<int>(
            itemBuilder: (context) => [
              PopupMenuItem(
                value:1 ,
                child: Text('HC-06',
                      style: TextStyle(
                        color: Color.fromARGB(255, 0, 255, 8),
                      ),
                ),
              ),
            ],            
          ),
        ],
      ),
      body: Column(
        children: [
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
                                    onLongPress: () {
                                      print('Botão pressionado! 1');
                                    },
                                    child: Image.asset(
                                      'assets/button.png',
                                      width: 150,
                                      height: 150,
                                    ),
                                  ),
                                ),

                                Padding(
                                  padding: const EdgeInsets.only(left: 90, bottom: 60),
                                  child: Transform(
                                    alignment: Alignment.center,
                                    transform: Matrix4.rotationZ(pi),
                                    child: InkWell(
                                    onLongPress: () {
                                      print('Botão pressionado! 2');
                                    },
                                    child: Image.asset(
                                      'assets/button.png',
                                      width: 150,
                                      height: 150,
                                    ),
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
                                      child: InkWell(
                                    onLongPress: () {
                                      print('Botão pressionado! 3');
                                    },
                                    child: Image.asset(
                                      'assets/button.png',
                                      width: 150,
                                      height: 150,
                                    ),
                                  ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 90, bottom: 60),
                                    child: Transform(
                                      alignment: Alignment.center,
                                      transform: Matrix4.rotationZ(pi / 2),
                                      child: InkWell(
                                    onLongPress: () {
                                      print('Botão pressionado! 4');
                                    },
                                    child: Image.asset(
                                      'assets/button.png',
                                      width: 150,
                                      height: 150,
                                    ),
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
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'RREMOTERIDE'  ,
                style: TextStyle(
                  fontFamily: 'Micro5', 
                  fontSize: 50
                ),
              ),
            ],
          ),
        ],
      ),
      backgroundColor: Colors.white,
    );
  }
}
