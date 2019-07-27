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
     return Container();
   }
 }