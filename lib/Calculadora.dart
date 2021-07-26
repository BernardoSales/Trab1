//Classe Calculadora
import 'package:flutter/material.dart';

class Calculadora extends StatefulWidget{
  @override
  State createState() => new CalculadoraState(); 
}

class CalculadoraState extends State<Calculadora>{
  @override
  Widget build(BuildContext context){
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Calculadora Simples :D'),
        ),


      body:new Container(
        padding: const EdgeInsets.all(40),
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[


            //Resultados (Texto)
      new Text(
        "Resultado: $resultado",
        style: new TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.bold,
          color: Colors.red),
      ),

 // Campo de Texto(t1)
 new TextField(
 keyboardType: TextInputType.number,
 decoration: new InputDecoration(hintText: "Informe o valor 1"),
 controller: t1,
 ),

 // Campo de Texto(t2)
 new TextField(
 keyboardType: TextInputType.number,
 decoration: new InputDecoration(hintText: "Informe o valor 2"),
 controller: t2,
 ),
 
 //Espaço
 new Padding(padding: const EdgeInsets.only(top:20)),

 //Butão +
 new Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  children: <Widget>[new MaterialButton(

    child: new Text("+",
      style: new TextStyle(
        fontSize: 32,
        fontWeight: FontWeight.bold,
        color: Colors.lightGreen),
    ),
    color: Colors.black,
    onPressed: somar,
   )
  ],
 ),

//Espaço
 new Padding(padding: const EdgeInsets.only(top:20)),

 //Butão X
 new Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  children: <Widget>[new MaterialButton(

    child: new Text("X",
      style: new TextStyle(
        fontSize: 32,
        fontWeight: FontWeight.bold,
        color: Colors.lightGreen),
    ),
    color: Colors.black,
    onPressed: multiplicar,
   )
  ],
 ),

//Espaço
 new Padding(padding: const EdgeInsets.only(top:20)),

 //Butão ÷
 new Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  children: <Widget>[new MaterialButton(

    child: new Text("÷",
      style: new TextStyle(
        fontSize: 32,
        fontWeight: FontWeight.bold,
        color: Colors.lightGreen),
    ),
    color: Colors.black,
    onPressed: dividir,
   )
  ],
 ),

//Espaço
 new Padding(padding: const EdgeInsets.only(top:20)),

 //Butão -
 new Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  children: <Widget>[new MaterialButton(

    child: new Text("-",
      style: new TextStyle(
        fontSize: 32,
        fontWeight: FontWeight.bold,
        color: Colors.lightGreen),
    ),
    color: Colors.black,
    onPressed: subtrair,
   )
  ],
 ),

 //Espaço
 new Padding(padding: const EdgeInsets.only(top:20)),

 //Butão Limpeza
 new Row(
   mainAxisAlignment: MainAxisAlignment.center,
   children: <Widget>[
     new MaterialButton(
     child: new Text ("Limpar",
     style: TextStyle(
       fontWeight: FontWeight.bold,
        color: Colors.lightGreen
     ),),
     color: Colors.black,
     onPressed: limpar)
   ],
  )
],
),
),
);
} //Build

//Atributos
var num1;
var num2;
var resultado = 0;

TextEditingController t1 = new TextEditingController(text: "");
TextEditingController t2 = new TextEditingController(text: "");

//Metodos

void somar(){
  setState(() {
    num1 = int.parse(t1.text);
    num2 = int.parse(t2.text);
    resultado = num1+num2;
  });
}

void multiplicar(){
  setState(() {
    num1 = int.parse(t1.text);
    num2 = int.parse(t2.text);
    resultado = num1*num2;
  });
}

void dividir(){
  setState(() {
    num1 = int.parse(t1.text);
    num2 = int.parse(t2.text);
    resultado = num1/num2;
  });
}

void subtrair(){
  setState(() {
    num1 = int.parse(t1.text);
    num2 = int.parse(t2.text);
    resultado = num1-num2;
  });
}

void limpar(){
  setState(() {
    t1.text = "";
    t2.text = "";
  });
}
}