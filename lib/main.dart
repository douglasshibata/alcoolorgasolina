import 'package:alcoolorgasolina/widget/input.widget.dart';
import 'package:alcoolorgasolina/widget/loading-button.widget.dart';
import 'package:alcoolorgasolina/widget/logo.widget.dart';
import 'package:alcoolorgasolina/widget/success.widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_masked_text/flutter_masked_text.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Alcool ou Gasolina',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  var _gasController = MoneyMaskedTextController();
  var _alcoolController = MoneyMaskedTextController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: ListView(
        children: <Widget>[
          Logo(),
          Success(reset: () {}, result: "Compensa utilizar"),
          Input(label: "Gasolina", controller: _gasController),
          Input(label: "Álcool", controller: _alcoolController),
          LoadingButton(
              busy: true, func: () {}, invert: false, text: "Calcular"),
        ],
      ),
    );
  }
}
