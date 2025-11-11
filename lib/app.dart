import 'package:flutter/material.dart';

import 'Assinmentmodule12/module12Assinment1.dart';
import 'Button/button_1.dart';
import 'home.dart';
import 'input/Dashboard.dart';
import 'input/Container.dart';
import 'input/Listviewsh.dart';
import 'input/assinment2.dart';
import 'input/assinment222.dart';
import 'input/gridView.dart';
import 'input/inputdata.dart';
import 'input/livetest2.dart';
import 'input/login.dart';
import 'input/stacklist.dart';
import 'input/themTest.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          brightness: Brightness.light,
        primaryColor: Colors.deepPurple,
       primarySwatch: Colors.deepPurple,
       // scaffoldBackgroundColor: Colors.gre y.shade300,
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.orange,
            foregroundColor: Colors.red,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ),
        inputDecorationTheme: InputDecorationTheme(
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),

          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5),
            borderSide: BorderSide(color: Colors.green, width: 2),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5),
            borderSide: BorderSide(color: Colors.orange, width: 2),
          ),
          hintStyle: TextStyle(color: Colors.greenAccent),
        ),
        textTheme: TextTheme(

          headlineLarge: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold
          )
        )


      ),
      darkTheme: ThemeData.light(),
      title: 'shahidur new project',
      //home: CardViewAssinment(),
      home: Calculator(),
      initialRoute: 'Calculator',
      routes:
      {
        'home' : (context)=>Home(),
        'button1' : (context)=>Buttongrp(),
        'listt' : (context)=>Flist(),
        'stackk' : (context)=>Stacklistt(),
        'Calculators' : (context)=>Calculator(),



      }
      ,
    );
  }
}
