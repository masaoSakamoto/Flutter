
import 'dart:ffi';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';


import 'package:page_transition/page_transition.dart';
import 'package:image_picker/image_picker.dart';


class VistaExaminarPerro extends StatefulWidget{
  final String titulo;
  final String imagen;
  final String tag;

  const VistaExaminarPerro({Key key, this.titulo, this.imagen, this.tag}) : super(key: key);
  @override
  _VistaExaminarPerro createState() => _VistaExaminarPerro();


}


class _VistaExaminarPerro extends State<VistaExaminarPerro>{
  File _image;
  final _picker= ImagePicker();
  Future getImageGaleria() async{
    final PickedFile = await _picker.getImage(source:ImageSource.gallery );

    setState(() {
      _image = File(PickedFile.path);
      print(_image);
    });

  }

  Future getImageCamara() async{
    final PickedFile = await _picker.getImage(source:ImageSource.camera );

    setState(() {
      _image = File(PickedFile.path);
      print(_image);
    });

  }




  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: SingleChildScrollView(

          child: Column(
            children: <Widget>[
              Hero(
                  tag: widget.tag, //main tag
                  child: Material(
                      color: Colors.white,
                      child: Column(
                        children: <Widget>[

                          Padding(
                            padding: const EdgeInsets.all(0),
                            child: Container(
                              height: 268,
                              width: 400,
                              margin: EdgeInsets.all(0),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                      bottomRight: Radius.circular(20.0),
                                      bottomLeft: Radius.circular(20.0)
                                  ),
                                  image: DecorationImage(
                                      image: AssetImage(widget.imagen),
                                      fit: BoxFit.fitHeight

                                  )
                              ),


                              child: Container(
                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                    gradient: LinearGradient(
                                        begin: Alignment.bottomRight,
                                        colors: [
                                          Colors.black.withOpacity(.8),
                                          Colors.black.withOpacity(.0),
                                        ]
                                    )
                                ),

                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: <Widget>[
                                    Text(widget.titulo,style: TextStyle(color: Colors.white, fontSize: 20),),
                                  ],
                                ),
                              ),
                            ),
                          )
                        ],
                      )



                  )
              ),

              SizedBox(height: 70,),
              Container(
                height: 270,
                width: double.infinity,

                child: Column(
                  children: <Widget>[

                    Material(

                      child: Container(
                        height: 250,
                        width: 400,
                        margin: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                                image: _image!=null?FileImage(_image):AssetImage(
                                    'assets/DEFAULT.jpg'),
                                fit: BoxFit.fitHeight


                            )
                        ),


                      ),


                    ),


                  ],

                ),


              ),
              SizedBox(height: 10,),
              Padding(
                padding: EdgeInsets.all(5.0),
                child: FloatingActionButton(
                  onPressed: getImageCamara,
                  child: Icon(Icons.camera_alt),
                ),
              ),
              SizedBox(height: 10,),
              Padding(
                padding: EdgeInsets.all(5.0),
                child: RaisedButton(
                  onPressed: (){
                    getImageGaleria();

                  },
                  child: Text('Elegir una imagen'),
                ),



              ),


            ],

          )
      ),
    );





  }






}










