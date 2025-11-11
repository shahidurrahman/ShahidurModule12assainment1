import 'package:flutter/material.dart';

import 'calwidget.dart';

class Calculator extends StatefulWidget {
  Calculator({super.key});

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  String _output = '0';
  String _input = '0';
  String _operator = '';
  double num1 = 0;
  double num2 = 0;
  void buttonPressed(String value) {
    print('Button Pressed $value');
    setState(() {
      if (value == 'C') {
        _output = '0';
        _input = '0';
        _operator = '';
        num1 = 0;
        num2 = 0;
      } else if (value == '=') {
        num2 = double.parse(_input);
        if (_operator == '+') {
          _output = (num1+num2).toString();
        } else if (_operator == '-') {
          _output = (num1-num2).toString();
        } else if (_operator == '*') {
          _output = (num1*num2).toString();
        } else if (_operator == '/') {
          _output = num2 != 0 ? (num1/num2).toString() : 'Error';
        }else if (_operator== '%'){
          _output= (double.parse(_input)/100).toString();
          _input=_output;
        }
      } else if (['+', '-', '*', '/'].contains(value)) {
        num1 = double.parse(_input);
        _operator = value;
        _input = '';
        return;
      } else {
        if (_input == '0') {
          _input += value;
        } else {
          _input += value;
        }
        _output = _input;
      }
      print(_output);
    });
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(title: Text('Calculator'),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Container(
                alignment: Alignment.bottomRight,
                child: Column(
                  children: [
                    Text(
                      '$num1 $_operator $num2',
                      style: TextStyle(color: Colors.white, fontSize: 30),
                    ),
                    SizedBox(height: 10),
                    Text(
                      _output,
                      style: TextStyle(
                        fontSize: 50,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Row(
              children: [
                calWidget(onclick: () => buttonPressed('C'), text: 'C'),
                calWidget(onclick: () => buttonPressed('SC'), text: 'SC'),
                calWidget(onclick: () => buttonPressed('+/_'), text: '+/_'),
                calWidget(onclick: () => buttonPressed('%'),text: '%',color: Colors.orange),
              ],
            ),
            Row(
              children: [
                calWidget(onclick: () => buttonPressed('7'), text: '7'),
                calWidget(onclick: () => buttonPressed('8'), text: '8'),
                calWidget(onclick: () => buttonPressed('9'), text: '9'),
                calWidget(onclick: () => buttonPressed('/'), text: '/',color: Colors.orange,),
              ],
            ),
            Row(
              children: [
                calWidget(onclick: () => buttonPressed('4'), text: '4'),
                calWidget(onclick: () => buttonPressed('5'), text: '5'),
                calWidget(onclick: () => buttonPressed('6'), text: '6'),
                calWidget(
                  onclick: () => buttonPressed('*'),
                  text: 'x',
                  color: Colors.orange,
                ),
              ],
            ),
            Row(
              children: [
                calWidget(onclick: () => buttonPressed('1'), text: '1'),
                calWidget(onclick: () => buttonPressed('2'), text: '2'),
                calWidget(onclick: () => buttonPressed('3'), text: '3'),
                calWidget(onclick: () => buttonPressed('-'), text: '-', color: Colors.orange),
              ],
            ),
            Row(
              children: [
                calWidget(onclick: () => buttonPressed('.'), text: '.'),
                calWidget(onclick: () => buttonPressed('0'), text: '0'),
                calWidget(onclick: () => buttonPressed('='),text: '=',color: Colors.red
                ),
                calWidget(
                  onclick: () => buttonPressed('+'),
                  text: '+',
                  color: Colors.orange,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
