import 'package:alcoolorgasolina/widget/input.widget.dart';
import 'package:alcoolorgasolina/widget/logo.widget.dart';
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
          Container(
            margin: EdgeInsets.all(30),
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.8),
              borderRadius: BorderRadius.circular(25),
            ),
            child: Column(children: <Widget>[
              SizedBox(
                height: 50,
              ),
              Text(
                "Compensa",
                style: TextStyle(
                  color: Theme.of(context).primaryColor,
                  fontSize: 40,
                  fontFamily: "Big Shoulders Display",
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                width: double.infinity,
                margin: EdgeInsets.all(30),
                height: 60,
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.8),
                  borderRadius: BorderRadius.circular(60),
                ),
                child: TextButton(
                  child: Text(
                    "Calcular novamente",
                    style: TextStyle(
                      color: Theme.of(context).primaryColor,
                      fontFamily: "Big Shoulders Display",
                      fontSize: 25,
                    ),
                  ),
                  onPressed: () {},
                ),
              )
            ]),
          ),
          Input(label: "Gasolina", controller: _gasController),
          Input(label: "Álcool", controller: _alcoolController),
          Container(
            width: double.infinity,
            margin: EdgeInsets.all(30),
            height: 60,
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.8),
              borderRadius: BorderRadius.circular(60),
            ),
            child: TextButton(
              child: Text(
                "Calcular",
                style: TextStyle(
                  color: Theme.of(context).primaryColor,
                  fontFamily: "Big Shoulders Display",
                  fontSize: 25,
                ),
              ),
              onPressed: () {},
            ),
          )
        ],
      ),
    );
  }
}
