import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_calculator_ui_app/Buttons/calculator_button.dart';

void main() {
  runApp(CalculatorApp());
}

class CalculatorApp extends StatefulWidget {
  const CalculatorApp({Key? key}) : super(key: key);

  @override
  State<CalculatorApp> createState() => _CalculatorAppState();
}

class _CalculatorAppState extends State<CalculatorApp> {
  int firstnum = 0;
  int secondnum = 0;
  String history = "";
  String textToDisplay = "";
  String result = "";
  String operation = "";

  void btnOnClick(String btnVal) {
    print(btnVal);
    if (btnVal == "C") {
      textToDisplay = '';
      firstnum = 0;
      secondnum = 0;
      result = '';
    } else if (btnVal == "AC") {
      textToDisplay = '';
      firstnum = 0;
      secondnum = 0;
      result = '';
      history = '';
    } else if (btnVal == '+' ||
        btnVal == '-' ||
        btnVal == 'X' ||
        btnVal == '/') {
      firstnum = int.parse(textToDisplay);
      result = "";
      operation = btnVal;
    } else if (btnVal == "+/-") {
      if (textToDisplay[0] != '-') {
        result = "-" + textToDisplay;
      } else {
        result = textToDisplay.substring(1);
      }
    } else if (btnVal == "<") {
      result = textToDisplay.substring(0, textToDisplay.length - 1);
    } else if (btnVal == "=") {
      secondnum = int.parse(textToDisplay);
      if (operation == "+") {
        result = (firstnum + secondnum).toString();
        history =
            firstnum.toString() + operation.toString() + secondnum.toString();
      }
      if (operation == "-") {
        result = (firstnum - secondnum).toString();
        history =
            firstnum.toString() + operation.toString() + secondnum.toString();
      }
      if (operation == "X") {
        result = (firstnum * secondnum).toString();
        history =
            firstnum.toString() + operation.toString() + secondnum.toString();
      }
      if (operation == "/") {
        result = (firstnum / secondnum).toString();
        history =
            firstnum.toString() + operation.toString() + secondnum.toString();
      }
    } else {
      result = int.parse(textToDisplay + btnVal).toString();
    }
    setState(() {
      textToDisplay = result;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "flutter basic calculator",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blueGrey),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Flutter Calculator"),
        ),
        backgroundColor: Color(0xFF28527a),
        body: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                child: Padding(
                  padding: EdgeInsets.only(right: 12.0),
                  child: Text(
                    history,
                    style: TextStyle(fontSize: 48.0, color: Color(0x66FFFFFF)),
                  ),
                ),
                alignment: Alignment(1.0, 1.0),
              ),
              Container(
                child: Padding(
                  padding: EdgeInsets.all(12),
                  child: Text(
                    textToDisplay,
                    style: TextStyle(fontSize: 48.0, color: Colors.white),
                  ),
                ),
                alignment: Alignment(1.0, 1.0),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CalculatorButton(
                    text: "AC",
                    fillcolor: 0xFF8ac4d0,
                    textcolor: 0xFF000000,
                    textsize: 13,
                    callback: btnOnClick,
                  ),
                  CalculatorButton(
                    text: "C",
                    fillcolor: 0xFF8ac4d0,
                    textcolor: 0xFF000000,
                    textsize: 20,
                    callback: btnOnClick,
                  ),
                  CalculatorButton(
                    text: "<",
                    fillcolor: 0xFFf4d160,
                    textcolor: 0xFF000000,
                    textsize: 20,
                    callback: btnOnClick,
                  ),
                  CalculatorButton(
                    text: "/",
                    fillcolor: 0xFFf4d160,
                    textcolor: 0xFF000000,
                    textsize: 20,
                    callback: btnOnClick,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CalculatorButton(
                    text: "9",
                    fillcolor: 0xFF8ac4d0,
                    textcolor: 0xFF000000,
                    textsize: 20,
                    callback: btnOnClick,
                  ),
                  CalculatorButton(
                    text: "8",
                    fillcolor: 0xFF8ac4d0,
                    textcolor: 0xFF000000,
                    textsize: 20,
                    callback: btnOnClick,
                  ),
                  CalculatorButton(
                    text: "7",
                    fillcolor: 0xFF8ac4d0,
                    textcolor: 0xFF000000,
                    textsize: 20,
                    callback: btnOnClick,
                  ),
                  CalculatorButton(
                    text: "X",
                    fillcolor: 0xFFf4d160,
                    textcolor: 0xFF000000,
                    textsize: 20,
                    callback: btnOnClick,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CalculatorButton(
                    text: "6",
                    fillcolor: 0xFF8ac4d0,
                    textcolor: 0xFF000000,
                    textsize: 20,
                    callback: btnOnClick,
                  ),
                  CalculatorButton(
                    text: "5",
                    fillcolor: 0xFF8ac4d0,
                    textcolor: 0xFF000000,
                    textsize: 20,
                    callback: btnOnClick,
                  ),
                  CalculatorButton(
                    text: "4",
                    fillcolor: 0xFF8ac4d0,
                    textcolor: 0xFF000000,
                    textsize: 20,
                    callback: btnOnClick,
                  ),
                  CalculatorButton(
                    text: "-",
                    fillcolor: 0xFFf4d160,
                    textcolor: 0xFF000000,
                    textsize: 20,
                    callback: btnOnClick,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CalculatorButton(
                    text: "3",
                    fillcolor: 0xFF8ac4d0,
                    textcolor: 0xFF000000,
                    textsize: 20,
                    callback: btnOnClick,
                  ),
                  CalculatorButton(
                    text: "2",
                    fillcolor: 0xFF8ac4d0,
                    textcolor: 0xFF000000,
                    textsize: 20,
                    callback: btnOnClick,
                  ),
                  CalculatorButton(
                    text: "1",
                    fillcolor: 0xFF8ac4d0,
                    textcolor: 0xFF000000,
                    textsize: 20,
                    callback: btnOnClick,
                  ),
                  CalculatorButton(
                    text: "+",
                    fillcolor: 0xFFf4d160,
                    textcolor: 0xFF000000,
                    textsize: 20,
                    callback: btnOnClick,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CalculatorButton(
                    text: "+/-",
                    fillcolor: 0xFF8ac4d0,
                    textcolor: 0xFF000000,
                    textsize: 13,
                    callback: btnOnClick,
                  ),
                  CalculatorButton(
                    text: "0",
                    fillcolor: 0xFF8ac4d0,
                    textcolor: 0xFF000000,
                    textsize: 20,
                    callback: btnOnClick,
                  ),
                  CalculatorButton(
                    text: "00",
                    fillcolor: 0xFF8ac4d0,
                    textcolor: 0xFF000000,
                    textsize: 15,
                    callback: btnOnClick,
                  ),
                  CalculatorButton(
                    text: "=",
                    fillcolor: 0xFFf4d160,
                    textcolor: 0xFF000000,
                    textsize: 20,
                    callback: btnOnClick,
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
