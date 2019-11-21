import 'package:flutter/material.dart';
import 'package:flutter_aog/widgets/input.widget.dart';
import 'package:flutter_aog/widgets/logo.widget.dart';
import 'package:flutter_aog/widgets/success.widget.dart';
import 'package:flutter_masked_text/flutter_masked_text.dart';
import 'widgets/loadin-button.widget.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
// This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Alccol o Gasolina',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
// Importo controller da mascara
  var _gasCtrl = new MoneyMaskedTextController();
  var _alcCtrl = new MoneyMaskedTextController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: ListView(
        children: <Widget>[
          Logo(),
          Success(reset: () {}, result: "Compensa utilizar x"),
          Input(ctrl: _gasCtrl, label: "Gasolinha"),
          Input(ctrl: _alcCtrl, label: "Alcool"),
          LoadingButton(
            text: "Calcular",
            invert: false,
            busy: true,
          ),
        ],
      ),
    );
  }
}
