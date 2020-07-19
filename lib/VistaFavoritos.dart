import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class VistaPerrosFavoritos extends StatefulWidget {
  final String imagenTag;
  final String imagen;

  const VistaPerrosFavoritos({ Key key, this.imagenTag, this.imagen}) : super(key: key);

  @override
  _VistaPerrosFavoritos createState() => _VistaPerrosFavoritos();
}


class _VistaPerrosFavoritos extends State<VistaPerrosFavoritos> {
  @override
  Widget build(BuildContext context) {

    return Container(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Hero(
              tag: widget.imagenTag,
              child: Material(
                child: Container(
                  height: 430,
                  width: 420,
                  margin: EdgeInsets.all(0),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(0.0),
                          bottomLeft: Radius.circular(0.0)
                      ),
                      image: DecorationImage(
                          image: AssetImage(widget.imagen),
                          fit: BoxFit.cover


                      )
                  ),

                  child: Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                            begin: Alignment.bottomRight,
                            colors: [
                              Colors.black.withOpacity(.6),
                              Colors.black.withOpacity(.0),
                            ]
                        )
                    ),
                  ),
                ),
              ),
            ),
          SizedBox(height: 20,),



               SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,


                  children: <Widget>[
                    Hero(
                      tag: widget.imagen,
                      child: Material(
                        child: Column(

                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: <Widget>[
                            Text('Raza del Can', style: TextStyle(
                                color: Color.fromRGBO(97, 90, 90, .54),
                                fontSize: 18,
                                fontWeight: FontWeight.bold
                            ),),
                          SizedBox(height: 10,),

                            //nuevo
                            if(widget.imagen == 'assets/DALMATA.jpg')
                            Padding(

                              padding: const EdgeInsets.all(10),
                              child:Container(
                                child: Column(
                                  children: <Widget>[
                                    Text('Dalmatas', style: TextStyle(
                                        color: Color.fromRGBO(97, 90, 90, 1),
                                        fontSize: 23,
                                        fontWeight: FontWeight.bold
                                    ),),
                                    SizedBox(height: 10,),
                                    Text(
                                      'El dálmatta es una raza canina que debe su nombre a la historica región de Dalmacia. Su característica principal es su singular pelaje mateado de color negro, higado o limón. Al nacer, estas carecen de manchas, las cuales van apareciendo por todo su cuerpo durante el primer año de vida',
                                      style: TextStyle(
                                          color: Color.fromRGBO(51, 51, 51, .74),
                                          fontSize: 15,
                                          height: 1.2,
                                          fontWeight: FontWeight.bold
                                      ),),

                                    if(widget.imagen == 'assets/DALMATA.jpg')
                                      Padding(
                                        padding: const EdgeInsets.all(0),
                                        child: Column(
                                          children: <Widget>[
                                            Row(
                                              mainAxisAlignment: MainAxisAlignment.center,
                                              children: <Widget>[
                                                IconButton(
                                                  icon: Icon(Icons.favorite, color: Colors.redAccent,), onPressed: (){},
                                                ),
                                                IconButton(
                                                  icon: Icon(Icons.favorite, color: Colors.redAccent,), onPressed: (){},
                                                ),
                                                IconButton(
                                                  icon: Icon(Icons.favorite, color: Colors.redAccent,), onPressed: (){},
                                                ),
                                                IconButton(
                                                  icon: Icon(Icons.favorite, color: Colors.redAccent,), onPressed: (){},
                                                ),
                                                IconButton(
                                                  icon: Icon(Icons.favorite, color: Colors.black26,), onPressed: (){},
                                                ),

                                              ],
                                            )
                                          ],
                                        ),
                                      ),

                                  ],
                                ),
                              )


                            ),

                            if(widget.imagen == 'assets/SIVERIANO.jpg')
                              Padding(

                                  padding: const EdgeInsets.all(10),
                                  child:Container(
                                    child: Column(
                                      children: <Widget>[
                                        Text('Siveriano', style: TextStyle(
                                            color: Color.fromRGBO(97, 90, 90, 1),
                                            fontSize: 23,
                                            fontWeight: FontWeight.bold
                                        ),),
                                        SizedBox(height: 10,),
                                        Text(
                                          'El husky siberiano es una raza originaria del noreste de Siberia en Rusia. Esta presenta un parecido similar a la de un lobo. Generalmente llegan a crecer hasta un promedio de 60 centimetros de altura y un peso de un 20-25 kilogramos.',
                                          style: TextStyle(
                                              color: Color.fromRGBO(51, 51, 51, .74),
                                              fontSize: 15,
                                              height: 1.2,
                                              fontWeight: FontWeight.bold
                                          ),),

                                        if(widget.imagen == 'assets/SIVERIANO.jpg')
                                          Padding(
                                            padding: const EdgeInsets.all(0),
                                            child: Column(
                                              children: <Widget>[
                                                Row(
                                                  mainAxisAlignment: MainAxisAlignment.center,
                                                  children: <Widget>[
                                                    IconButton(
                                                      icon: Icon(Icons.favorite, color: Colors.redAccent,), onPressed: (){},
                                                    ),
                                                    IconButton(
                                                      icon: Icon(Icons.favorite, color: Colors.redAccent,), onPressed: (){},
                                                    ),
                                                    IconButton(
                                                      icon: Icon(Icons.favorite, color: Colors.redAccent,), onPressed: (){},
                                                    ),
                                                    IconButton(
                                                      icon: Icon(Icons.favorite, color: Colors.redAccent,), onPressed: (){},
                                                    ),
                                                    IconButton(
                                                      icon: Icon(Icons.favorite, color: Colors.redAccent,), onPressed: (){},
                                                    ),

                                                  ],
                                                )
                                              ],
                                            ),
                                          ),

                                      ],
                                    ),
                                  )


                              ),

                            if(widget.imagen == 'assets/GOLDEN.jpg')
                              Padding(

                                  padding: const EdgeInsets.all(10),
                                  child:Container(
                                    child: Column(
                                      children: <Widget>[
                                        Text('Golden Retriever', style: TextStyle(
                                            color: Color.fromRGBO(97, 90, 90, 1),
                                            fontSize: 23,
                                            fontWeight: FontWeight.bold
                                        ),),
                                        SizedBox(height: 10,),
                                        Text(
                                          'Golden Retriever, también llamado cobrador dorado es una raza procedente del Reino Unido, especificamente Escocia. Este can es múy habil para el rastreo. Es muy amigable y es considerado la tercera raza familiar más popular en los Estados Unidos. Generalmente crecen hasta los 60 centimetros de altura y un peso promedio de 32 kilogramos.',
                                          style: TextStyle(
                                              color: Color.fromRGBO(51, 51, 51, .74),
                                              fontSize: 15,
                                              height: 1.2,
                                              fontWeight: FontWeight.bold
                                          ),),

                                        if(widget.imagen == 'assets/GOLDEN.jpg')
                                          Padding(
                                            padding: const EdgeInsets.all(0),
                                            child: Column(
                                              children: <Widget>[
                                                Row(
                                                  mainAxisAlignment: MainAxisAlignment.center,
                                                  children: <Widget>[
                                                    IconButton(
                                                      icon: Icon(Icons.favorite, color: Colors.redAccent,), onPressed: (){},
                                                    ),
                                                    IconButton(
                                                      icon: Icon(Icons.favorite, color: Colors.redAccent,), onPressed: (){},
                                                    ),
                                                    IconButton(
                                                      icon: Icon(Icons.favorite, color: Colors.redAccent,), onPressed: (){},
                                                    ),
                                                    IconButton(
                                                      icon: Icon(Icons.favorite, color: Colors.redAccent,), onPressed: (){},
                                                    ),
                                                    IconButton(
                                                      icon: Icon(Icons.favorite, color: Colors.black26,), onPressed: (){},
                                                    ),

                                                  ],
                                                )
                                              ],
                                            ),
                                          ),

                                      ],
                                    ),
                                  )


                              ),

                            if(widget.imagen == 'assets/PUDDLE.jpg')
                              Padding(

                                  padding: const EdgeInsets.all(10),
                                  child:Container(
                                    child: Column(
                                      children: <Widget>[
                                        Text('Poodle', style: TextStyle(
                                            color: Color.fromRGBO(97, 90, 90, 1),
                                            fontSize: 23,
                                            fontWeight: FontWeight.bold
                                        ),),
                                        SizedBox(height: 10,),
                                        Text('Poodle, también conocido caniche es una raza de origen franco-alemana. Anteriormente fue considerada de uso exclusivo de aristócratas y nobles. Su pelaje es dócil y rizado. Tiene 4 distintas variedades de alturas. Estas son el Poodle toy, caniche enano, poodle estándar y caniche mediano. Esta raza posee distintos colores, entre ellos el café, blanco y negro.',
                                           style: TextStyle(
                                              color: Color.fromRGBO(51, 51, 51, .74),
                                              fontSize: 15,
                                              height: 1.2,
                                              fontWeight: FontWeight.bold
                                          ),),

                                        if(widget.imagen == 'assets/PUDDLE.jpg')
                                          Padding(
                                            padding: const EdgeInsets.all(0),
                                            child: Column(
                                              children: <Widget>[
                                                Row(
                                                  mainAxisAlignment: MainAxisAlignment.center,
                                                  children: <Widget>[
                                                    IconButton(
                                                      icon: Icon(Icons.favorite, color: Colors.redAccent,), onPressed: (){},
                                                    ),
                                                    IconButton(
                                                      icon: Icon(Icons.favorite, color: Colors.redAccent,), onPressed: (){},
                                                    ),
                                                    IconButton(
                                                      icon: Icon(Icons.favorite, color: Colors.redAccent,), onPressed: (){},
                                                    ),
                                                    IconButton(
                                                      icon: Icon(Icons.favorite, color: Colors.black26,), onPressed: (){},
                                                    ),
                                                    IconButton(
                                                      icon: Icon(Icons.favorite, color: Colors.black26,), onPressed: (){},
                                                    ),

                                                  ],
                                                )
                                              ],
                                            ),
                                          ),

                                      ],
                                    ),
                                  )


                              ),

                            if(widget.imagen == 'assets/CHIWAWA.jpg')
                              Padding(

                                  padding: const EdgeInsets.all(10),
                                  child:Container(
                                    child: Column(
                                      children: <Widget>[
                                        Text('Chihuahua', style: TextStyle(
                                            color: Color.fromRGBO(97, 90, 90, 1),
                                            fontSize: 23,
                                            fontWeight: FontWeight.bold
                                        ),),
                                        SizedBox(height: 10,),
                                        Text('El chihuahua o chihuahueño es una raza originaria de America Central, especificamente de México. Esta raza es considerada la más pequeña del mundo. Tiene un tamaño promedio de 6 centimetros de altura. Suelen ser muy hiperactivos y poseen un humor muy peculiar pero que no quita lo adorables que pueden llegar a ser.',
                                             style: TextStyle(
                                              color: Color.fromRGBO(51, 51, 51, .74),
                                              fontSize: 15,
                                              height: 1.2,
                                              fontWeight: FontWeight.bold
                                          ),),

                                        if(widget.imagen == 'assets/CHIWAWA.jpg')
                                          Padding(
                                            padding: const EdgeInsets.all(0),
                                            child: Column(
                                              children: <Widget>[
                                                Row(
                                                  mainAxisAlignment: MainAxisAlignment.center,
                                                  children: <Widget>[
                                                    IconButton(
                                                      icon: Icon(Icons.favorite, color: Colors.redAccent,), onPressed: (){},
                                                    ),
                                                    IconButton(
                                                      icon: Icon(Icons.favorite, color: Colors.redAccent,), onPressed: (){},
                                                    ),
                                                    IconButton(
                                                      icon: Icon(Icons.favorite, color: Colors.redAccent,), onPressed: (){},
                                                    ),
                                                    IconButton(
                                                      icon: Icon(Icons.favorite, color: Colors.redAccent,), onPressed: (){},
                                                    ),
                                                    IconButton(
                                                      icon: Icon(Icons.favorite, color: Colors.black26,), onPressed: (){},
                                                    ),

                                                  ],
                                                )
                                              ],
                                            ),
                                          ),

                                      ],
                                    ),
                                  )


                              ),

                            if(widget.imagen == 'assets/PASTOR.jpg')
                              Padding(

                                  padding: const EdgeInsets.all(10),
                                  child:Container(
                                    child: Column(
                                      children: <Widget>[
                                        Text('Pastor Aleman', style: TextStyle(
                                            color: Color.fromRGBO(97, 90, 90, 1),
                                            fontSize: 23,
                                            fontWeight: FontWeight.bold
                                        ),),
                                        SizedBox(height: 10,),
                                        Text('Pastor Alemán u ovejero es una raza procedente de Alemania. Esta raza fue originalmente desarrollada para vigilar ovejas y reunirlas. Su color más común es el del negro combinado con canela.Tiene un tamaño promedio de 60 centimetros de altura y un peso promedio de 30 kilogramos.',
                                              style: TextStyle(
                                              color: Color.fromRGBO(51, 51, 51, .74),
                                              fontSize: 15,
                                              height: 1.2,
                                              fontWeight: FontWeight.bold
                                          ),),

                                        if(widget.imagen == 'assets/PASTOR.jpg')
                                          Padding(
                                            padding: const EdgeInsets.all(0),
                                            child: Column(
                                              children: <Widget>[
                                                Row(
                                                  mainAxisAlignment: MainAxisAlignment.center,
                                                  children: <Widget>[
                                                    IconButton(
                                                      icon: Icon(Icons.favorite, color: Colors.redAccent,), onPressed: (){},
                                                    ),
                                                    IconButton(
                                                      icon: Icon(Icons.favorite, color: Colors.redAccent,), onPressed: (){},
                                                    ),
                                                    IconButton(
                                                      icon: Icon(Icons.favorite, color: Colors.redAccent,), onPressed: (){},
                                                    ),
                                                    IconButton(
                                                      icon: Icon(Icons.favorite, color: Colors.redAccent,), onPressed: (){},
                                                    ),
                                                    IconButton(
                                                      icon: Icon(Icons.favorite, color: Colors.redAccent,), onPressed: (){},
                                                    ),

                                                  ],
                                                )
                                              ],
                                            ),
                                          ),

                                      ],
                                    ),
                                  )


                              ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
          ],
        ),
      ),
    );
  }
}



