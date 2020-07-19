import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutteruisisin/ChuscoApp.dart';


class LoginPage extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        brightness: Brightness.light,
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: (){
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios, size: 20, color: Colors.black54,),
        ),
      ),


         body: Container(
           height: MediaQuery.of(context).size.height,
           width: double.infinity,
           child: Column(
             children: <Widget>[
                 Column(
                   children: <Widget>[
                     Text("Iniciar Sesión", style: TextStyle(
                       fontSize: 30,
                       fontWeight: FontWeight.bold
                       //color:  Colors.lightBlueAccent
                     ),),
                     SizedBox(height: 10,),
                     Text("Ingrese a su perfil por favor", style: TextStyle(
                         fontSize: 15,
                         color: Colors.grey[500]
                     ),),
                   ],
                 ),
               SizedBox(height: 15,),
               Padding(
                 padding: EdgeInsets.symmetric(horizontal: 40) ,
                 child: Column(
                   children: <Widget>[
                     makeInput(label: "Correo electronico"),
                     makeInput(label: "Contraseña",obscureText: true),
                     makeInput(label: "Repita contraseña", obscureText: true)
                   ],
                 ),
               ),
               Padding(
                 padding: EdgeInsets.symmetric(horizontal: 40),
                 child:Container(
                     padding: EdgeInsets.only(top: 1, left: 1),
                     decoration: BoxDecoration(
                         borderRadius: BorderRadius.circular(40),
                         border:  Border(
                           bottom: BorderSide(color: Colors.black),
                           top: BorderSide(color: Colors.black),
                           left: BorderSide(color: Colors.black),
                           right: BorderSide(color: Colors.black),
                         )

                     ),
                     child: MaterialButton(
                       minWidth: double.infinity,
                       height: 60,
                       onPressed: (){
                         Navigator.push(context, MaterialPageRoute(builder: (context)=>ChuscoApp()));
                       },
                       color: Colors.lightBlueAccent,
                       shape: RoundedRectangleBorder(
                           borderRadius: BorderRadius.circular(50)
                       ),

                       child: Text("Iniciar Sesión",style: TextStyle(
                           fontWeight: FontWeight.w600,
                           fontSize: 18
                       ),),
                     ),
                 ),
               ),
               SizedBox(height: 20,),
               Row(
                 mainAxisAlignment: MainAxisAlignment.center,
                 children: <Widget>[
                   Text("No tienes una cuenta?"),
                   Text("Registrar", style: TextStyle(
                     fontWeight: FontWeight.w600, fontSize: 15
                   ),)
                 ],
               )
             ],
         ),


           )



    );
  }

  Widget makeInput({label, obscureText= false}){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(label,style: TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.w400,
          color:  Colors.black87
        ),),
        SizedBox(height: 0,),
        TextField(
          obscureText: obscureText,
          decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(vertical: 0,horizontal: 10),
            enabledBorder:  OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey[400])
            ),
            border: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey[400])
            )
          ),
        ),
        SizedBox(height: 15,),
      ],
    );
  }



}