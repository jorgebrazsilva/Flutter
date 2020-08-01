import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(title: "Contador de Passos", home: Home()));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _pessoas = 0;
  String _infText = "Pode Entrar!";

  void _changePessoa(int valor) {
    setState(() {
      _pessoas += valor;

      if (_pessoas < 0) {
        _infText = "Mundo Invertido?";
      } else if (_pessoas <= 10) {
        _infText = "Pode Entrar!";
      }
      if (_pessoas > 10) {
        _infText = "Lotado!";
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Image.asset(
          "images/restaurant.jpg",
          fit: BoxFit.cover,
          height: 1000,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "Pessoas: $_pessoas",
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(10),
                  child: FlatButton(
                    child: Text("+1",
                        style: TextStyle(fontSize: 40, color: Colors.white)),
                    onPressed: () {
                      _changePessoa(1);
                    },
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(10),
                  child: FlatButton(
                    child: Text("-1",
                        style: TextStyle(fontSize: 40, color: Colors.white)),
                    onPressed: () {
                      _changePessoa(-1);
                    },
                  ),
                ),
              ],
            ),
            Text(
              _infText,
              style: TextStyle(
                  color: Colors.white,
                  fontStyle: FontStyle.italic,
                  fontSize: 30.0),
            )
          ],
        ),
      ],
    );
  }
}
