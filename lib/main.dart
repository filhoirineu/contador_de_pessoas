import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(title: "Contador de Pessoas", home: Home()));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _people = 0;
  int _limite = 10;
  String _descricao = "Pode Entrar";

  void _changePeople(int valor) {
    setState(() {
      _people += valor;
      print(_people);

      if (_people < 0) {
        _people = 0;
        _descricao = "Pode Entrar!";
      } else {
        _descricao = "Pode Entrar!";
      }

      if (_people == _limite) {
        _people = _limite;
        _descricao = "Lotado!";
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Image.network(
          "https://media-cdn.tripadvisor.com/media/photo-s/0a/99/bb/b8/20160313-162324-largejpg.jpg",
          fit: BoxFit.cover,
          height: 1000,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "Pessoas: $_people",
              style: TextStyle(
                  color: Colors.red[400], fontWeight: FontWeight.bold),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(10),
                  child: FlatButton(
                    child: Text("+1",
                        style: TextStyle(fontSize: 40, color: Colors.red[400])),
                    onPressed: () {
                      _changePeople(1);
                    },
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(10),
                  child: FlatButton(
                    child: Text("-1",
                        style: TextStyle(fontSize: 40, color: Colors.red[400])),
                    onPressed: () {
                      _changePeople(-1);
                    },
                  ),
                ),
              ],
            ),
            Text(
              "$_descricao",
              style: TextStyle(
                  color: Colors.red[400],
                  fontStyle: FontStyle.italic,
                  fontSize: 25),
            )
          ],
        )
      ],
    );
  }
}
