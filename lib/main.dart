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
       body: SingleChildScrollView(
         padding: EdgeInsets.fromLTRB(10.0, 0, 10.0, 0.0),
         child:
          Column(
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
              ),
              Padding(
                padding: EdgeInsets.only(top:10.0, bottom: 10.0),
                child: 
                  Container(
                    height: 50.0,
                    child: RaisedButton(
                      onPressed: (){},
                      child: Text("Calcular", style: TextStyle(color: Colors.white, fontSize: 25.0)),
                      color: Colors.green,
                    ),
                  ),
              ),
              Text(
                "Info",
                textAlign: TextAlign.center,  
                style: TextStyle(fontSize: 25.0, color: Colors.green),
              )
          ],
          ),
       )
     );
   }
 }