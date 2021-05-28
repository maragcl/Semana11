import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
    home: Scaffold(
      body: Center(
        child: Cont(),
      ),
    )));

class Cont extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ContEstado();
  }
}

class _ContEstado extends State<Cont> {
  int i = 0;

  void incrementar() {
    setState(() {
      i++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        
        ElevatedButton(
          //
          onPressed: incrementar,
          child: Text('Pulsar para incrementar'), 
        ),
        SizedBox(width: 20),
        Text('Countador: $i'),
      ],
    );
  }
}
