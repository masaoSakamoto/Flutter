
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutteruisisin/VistaFavoritos.dart';

import 'package:page_transition/page_transition.dart';
import 'package:image_picker/image_picker.dart';


class OptionPage extends StatefulWidget{
final String titulo;
final String imagen;
final String tag;

  const OptionPage({Key key, this.titulo, this.imagen, this.tag}) : super(key: key);
  @override
_OptionPage createState() => _OptionPage();
}


class _OptionPage extends State<OptionPage>{
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

                child: ListView(
                  padding: EdgeInsets.all(10),
                  scrollDirection: Axis.horizontal,

                  children: <Widget>[

                    if(widget.tag=='Favoritos')

                      crearImagenFav(
                          context: context,
                          colorInicial: Colors.white10,
                          colorFinal: Colors.red,
                          imagen: 'assets/DALMATA.jpg',
                          imagenTag: 'dalmata'

                      ),
                    if(widget.tag=='Favoritos')
                    crearImagenFav(
                        context: context,
                        colorInicial: Colors.white10,
                        colorFinal: Colors.red,
                        imagen: 'assets/SIVERIANO.jpg',
                        imagenTag: 'siveriano'

                    ),
                    if(widget.tag=='Favoritos')
                    crearImagenFav(
                        context: context,
                        colorInicial: Colors.white10,
                        colorFinal: Colors.red,
                        imagen: 'assets/GOLDEN.jpg',
                        imagenTag: 'golden'

                    ),
                    if(widget.tag=='Favoritos')
                    crearImagenFav(
                        context: context,
                        colorInicial: Colors.white10,
                        colorFinal: Colors.red,
                        imagen: 'assets/PUDDLE.jpg',
                        imagenTag: 'puddle'

                    ),
                    if(widget.tag=='Favoritos')
                    crearImagenFav(
                        context: context,
                        colorInicial: Colors.white10,
                        colorFinal: Colors.red,
                        imagen: 'assets/CHIWAWA.jpg',
                        imagenTag: 'chiwawa'

                    ),
                    if(widget.tag=='Favoritos')
                    crearImagenFav(
                        context: context,
                        colorInicial: Colors.white10,
                        colorFinal: Colors.red,
                        imagen: 'assets/PASTOR.jpg',
                        imagenTag: 'pastor'
                    ),
                  ],
                ),

              ),

            ],
          )
      ),
    );



  }

  Widget crearImagenFav({context, colorInicial,colorFinal,imagen,tag,imagenTag}){

    return Container(
      child: Hero(
        tag: imagenTag,
        child:  GestureDetector(
          onTap: (){
            Navigator.push(context,PageTransition(type: PageTransitionType.fade, child: VistaPerrosFavoritos(imagenTag: imagenTag,imagen: imagen,) ));
          },
          child: AspectRatio(
            aspectRatio: 5/7,
            child: Container(
              margin: EdgeInsets.only(right: 20),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(13.0),
                  gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      colors: [
                        colorInicial,
                        colorFinal
                      ]
                  ),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey[350],
                        blurRadius: 10,
                        offset: Offset(5,10)
                    )
                  ]

              ),
              child: Padding(
                padding: EdgeInsets.all(0),
                child: Center(
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                              image: AssetImage(imagen),
                              fit: BoxFit.cover
                          )
                      ),
                    )
                ),
              ),
            ),
          ),
        ),
      ),
    );


  }
//Widget para abrir Galeria


}






