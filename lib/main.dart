import 'package:flutter/material.dart';
import 'package:flutter/semantics.dart';

void main(){
  runApp(MaterialApp(
    //aqui eu vou passar um statefull widget por vou interagir com ele
    home: Home(),
  ));
}

class Home extends StatefulWidget{
  @override
  _HomeState createState() => _HomeState();
 }

 class _HomeState extends State<Home>{
   @override
   Widget build(BuildContext context){
     return Scaffold(
       appBar: AppBar(
         title: Text("Calculadora IMC"),
         centerTitle: true,
         backgroundColor: Colors.green,
         actions: <Widget>[
           IconButton(
             icon: Icon(Icons.refresh),
             onPressed: (){ }, 
             )
         ],
       ),
       backgroundColor: Colors.white,
       body: Column(
         //isso vai fazer com que todos os itens da coluna preencham toda a tela no eixo "x"
         crossAxisAlignment: CrossAxisAlignment.stretch,
         children: <Widget>[
           //específicamente esse widget não vai ocupar toda linha dele pq foi estabelecido um tamanho para ele
           Icon(Icons.person_outline, size: 120.0, color: Colors.green),
           TextField(
             keyboardType: TextInputType.number,
             decoration: InputDecoration(
               labelText: "Peso Kg",
               labelStyle: TextStyle(color: Colors.green)
               ),
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.green, fontSize: 25.0),
           ),
           TextField(
             keyboardType: TextInputType.number,
             decoration: InputDecoration(
               labelText: "Altura (cm)",
               labelStyle: TextStyle(color: Colors.green)
              ),
             textAlign: TextAlign.center,
             style: TextStyle(color: Colors.green, fontSize: 25.0),
             )
         ],
       ),
     );
   }
 }