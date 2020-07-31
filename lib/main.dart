
import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    home: Frases() ,

  ));
}



class Frases extends StatefulWidget {
  @override
  _FrasesState createState() => _FrasesState();
}

class _FrasesState extends State<Frases> {

    String teste =' teste';

    String gerarFrase(){
      List _frases = ['Existem duas possibilidades: Ou estamos sozinhos no universo, ou não estamos. Ambas são igualmente aterrorizantes',
                      'O Universo não parece ser nem benigno nem hostil – apenas indiferente',
                        'Se não existe vida fora da Terra, então o universo é um grande desperdício de espaço.'];
      Random rand = Random();
      String  _fra = _frases[rand.nextInt(3)];
      return _fra; // vai retornar a frase
    }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('frases do dia'),
        backgroundColor: Colors.green,
      ),
      body: Container(
        child: Column(

          children: <Widget>[
            Padding(
                padding: EdgeInsets.fromLTRB(30, 60, 30, 30),
                child: Align(
                  alignment: Alignment.center,
                  child: Image.asset( 'images/logo.png',
                    width: 300,
                    fit: BoxFit.scaleDown,) ,
                )
            ),
            Padding(
                padding: EdgeInsets.all(20),
                child:  Text (gerarFrase()), // vai colocar o texto da frase aqui. ,
            ),
            Expanded(
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                    padding: EdgeInsets.only(bottom: 20),
                    child: FlatButton(
                      color: Colors.green,
                      onPressed: (){
                        setState(() {
                          gerarFrase();// vai chamar a função, para gerar a frase
                        });},
                      child: Text('mudar frase'),
                    ),
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(),
    );
  }
}


