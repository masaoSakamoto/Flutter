import 'dart:ffi';

import 'dart:io';


import 'package:flutter/material.dart';
import 'package:flutteruisisin/ChuscoApp.dart';


class VistaExaminarCan extends StatefulWidget{

final String dF;


  const VistaExaminarCan({Key key, @required this.dF}) : super(key: key);


  _VistaExaminarCan createState()=> _VistaExaminarCan();




}



class _VistaExaminarCan extends State<VistaExaminarCan> {
  @override

  Widget build(BuildContext context) {

    
    return Scaffold(
      appBar: AppBar(title: Text('Probando Camara')),
      body: Container(
        child: Center(

          child: widget.dF == null?Text('imagen no encontrada'):Image.file(File(widget.dF)),
        ),

    )

    );
  

      // Colocar boton de "Examinar raza"  --> onTAP ---> Vista Resultados (falta crear)






  }

}