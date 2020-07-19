

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutteruisisin/ExaminarCan.dart';
import 'package:flutteruisisin/VistaExaminarPerro.dart';
import 'package:flutteruisisin/drawler.dart';
import 'package:flutteruisisin/optionPage.dart';

import 'package:flutter/widgets.dart';



import 'package:image_picker/image_picker.dart';

class ChuscoApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(

        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text('Chusco App'),
          elevation: 0,
          brightness: Brightness.light,
          backgroundColor: Colors.lightBlueAccent,
        ),
        drawer: drawler(),

        body: SafeArea(
            child: Container(
              width: double.infinity,
              height: MediaQuery
                  .of(context)
                  .size
                  .height,

              child: Column(

                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 20),
                    child: Column(

                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Text(" Selecciona una opción",
                              style: TextStyle(color: Colors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),),
                          ],
                        ),
                        SizedBox(height: 20,),

                        generarOpcionFavorito(imagen: 'assets/FAVORITOCAN.jpg',
                            titulo: 'Favoritos',
                            context: context,
                            tag: 'Favoritos'),
                        generarOpcionExaminar(imagen: 'assets/CAMARACAN.jpg',
                            titulo: 'Examina tu Can',
                            context: context,
                            tag: 'Examinar')



                      ],

                    ),
                  )
                ],
              ),
            )

        )

    );
  }

  Widget generarOpcionFavorito({ imagen, titulo, context, tag }) {
    return Container(
        child: Hero(
            tag: tag,

            child: GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(
                      builder: (context) =>
                          OptionPage(
                            imagen: imagen, titulo: titulo, tag: tag,)));
                },
                child: Material(
                    child: Container(
                      height: 250,
                      width: 400,
                      margin: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                              image: AssetImage(imagen),
                              fit: BoxFit.cover

                          )
                      ),


                      child: Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            gradient: LinearGradient(
                                begin: Alignment.bottomRight,
                                colors: [
                                  Colors.black.withOpacity(.8),
                                  Colors.black.withOpacity(.1),
                                ]
                            )
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[
                            Text(titulo, style: TextStyle(
                                color: Colors.white, fontSize: 20),),
                          ],

                        ),

                      ),
                    )
                )
            )
        )
    );
  }

  Widget generarOpcionExaminar({ imagen, titulo, context, tag }){
    return Container(
        child: Hero(
            tag: tag,

            child: GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(
                      builder: (context) =>
                          VistaExaminarPerro(
                            imagen: imagen, titulo: titulo, tag: tag,
                          )));
                },
                child: Material(
                    child: Container(
                      height: 250,
                      width: 400,
                      margin: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                              image: AssetImage(imagen),
                              fit: BoxFit.cover

                          )
                      ),


                      child: Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            gradient: LinearGradient(
                                begin: Alignment.bottomRight,
                                colors: [
                                  Colors.black.withOpacity(.8),
                                  Colors.black.withOpacity(.1),
                                ]
                            )
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[
                            Text(titulo, style: TextStyle(
                                color: Colors.white, fontSize: 20),),
                          ],

                        ),

                      ),
                    )
                )
            )
        )
    );
  }

  Widget generarGaleria({ imagen, titulo, context, tag, direccionFoto}) {

    return Container(

        child: Hero(
            tag: tag,

            child: GestureDetector(

                onTap: () {


                  Navigator.push(context, MaterialPageRoute(
                      builder: (context) => VistaExaminarCan(dF: direccionFoto,)));
                },
                child: Material(
                    child: Container(
                      height: 150,
                      width: 400,
                      margin: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                              image: AssetImage(imagen),
                              fit: BoxFit.cover

                          )
                      ),


                      child: Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            gradient: LinearGradient(
                                begin: Alignment.bottomRight,
                                colors: [
                                  Colors.black.withOpacity(.8),
                                  Colors.black.withOpacity(.1),
                                ]
                            )
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[
                            Text(titulo, style: TextStyle(
                                color: Colors.white, fontSize: 20),),
                          ],

                        ),

                      ),
                    )
                )
            )
        )
    );
  }

  Widget generarCamara({ imagen, titulo, context, tag }) {
    String DireccionFoto ;
    return Container(
        child: Hero(
            tag: tag,

            child: GestureDetector(
                onTap: () {
                  abrirCamara(DireccionFoto);

                  Navigator.push(context, MaterialPageRoute(
                      builder: (context) =>
                          VistaExaminarCan(dF: DireccionFoto,)));
                },
                child: Material(
                    child: Container(
                      height: 150,
                      width: 400,
                      margin: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                              image: AssetImage(imagen),
                              fit: BoxFit.cover

                          )
                      ),


                      child: Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            gradient: LinearGradient(
                                begin: Alignment.bottomRight,
                                colors: [
                                  Colors.black.withOpacity(.8),
                                  Colors.black.withOpacity(.1),
                                ]
                            )
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[
                            Text(titulo, style: TextStyle(
                                color: Colors.white, fontSize: 20),),
                          ],

                        ),

                      ),
                    )
                )
            )
        )
    );
  }

  Future<String> abrirCamara(prueba) async  {

    File img = await ImagePicker.pickImage(source: ImageSource.camera);
    if(img != null)
      {
        prueba = img.path;
        print(img.path);
      }

    return prueba;

    ;

    // var picture = ImagePicker.pickImage(source: ImageSource.camera);

  }

  Future abrirGaleria() async{
    File img = await ImagePicker.pickImage(source: ImageSource.gallery,);

    String pruebaGaleria = img.path;

    return pruebaGaleria;

  }


}



