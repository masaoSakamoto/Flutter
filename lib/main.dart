import 'package:flutter/material.dart';
import 'package:flutteruisisin/ChuscoApp.dart';
import 'package:flutteruisisin/login.dart';


void main() {
  runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomePage(),
      )
  );
}

class HomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          height: MediaQuery.of(context).size.height,
          padding: EdgeInsets.symmetric(horizontal: 30, vertical: 50),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Column(
                children: <Widget>[
                  Text("Bienvenido a ChuscoApp", style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 28                  ),),
                  SizedBox(height: 20,),
                  Text("¡Tecnología que te permitirá saciar tu curiosidad y reconocer la raza de distintos caninos!", textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.grey[500],
                      fontSize: 15
                  ),),
                ],
              ),
              SizedBox(height: 10,),
              Container(
                height: MediaQuery.of(context).size.height/3,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/LOGOCAN.jpg')
                  )
                )
              ),
              SizedBox(height: 20,),
              Column(
                children: <Widget>[
                  MaterialButton(
                    minWidth: double.infinity,
                    height: 60,
                    onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginPage()));
                    },
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                        color: Colors.black
                      ),
                      borderRadius: BorderRadius.circular(50)
                    ),

                    child: Text("Iniciar Sesión",style: TextStyle(
                      fontWeight: FontWeight.w600,
                        fontSize: 18
                    )),
                  ),
                  SizedBox(height: 20,),
                  Container(
                    padding: EdgeInsets.only(top: 1, left: 1),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
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
                        onPressed: (){},
                       color: Colors.lightBlue,
                        shape: RoundedRectangleBorder(
                            side: BorderSide(
                                color: Colors.black
                            ),
                            borderRadius: BorderRadius.circular(50)
                        ),

                        child: Text("Registrarse",style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 18
                        )),
                      )

                  )
                ],
              )
            ],
          ),
        ),

      ),

    );
  }
}