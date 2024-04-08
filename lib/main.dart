import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Contador(),
  ));
}

class Contador extends StatefulWidget {
  const Contador({Key? key}) : super(key: key);

  @override
  _ContadorState createState() => _ContadorState();
}

class _ContadorState extends State<Contador> {
  int contador = 0;
  void incremento() {
    setState(() {
      if (contador <= 29) {
        contador++;
      }
    });
  }

  void decremento() {
    setState(() {
      if (contador > 0) {
        contador--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.red,
        body: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("imagens/restaurant.png"),
                  fit: BoxFit.cover)),
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Text(
              "Pode entrar!",
              style: TextStyle(color: Colors.white, fontSize: 30),
            ),
            Text(
              contador.toString(),
              style: TextStyle(color: Colors.white, fontSize: 100),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  onPressed: incremento,
                  child: Text("Entrar"),
                  style: TextButton.styleFrom(
                      backgroundColor: Colors.white,
                      fixedSize: Size(100, 100),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(26))),
                ),
                SizedBox(
                  width: 64,
                ),
                TextButton(
                  onPressed: decremento,
                  child: Text("Sair"),
                  style: TextButton.styleFrom(
                      backgroundColor: Colors.white,
                      fixedSize: Size(100, 100),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(26))),
                ),
              ],
            )
          ]),
        ));
  }
}
