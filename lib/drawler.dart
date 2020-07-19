import 'package:flutter/material.dart';
import 'package:flutteruisisin/main.dart';

class drawler extends StatelessWidget{

  @override
  Widget build(BuildContext context) {

    return Drawer(
        child: Column(
          children: <Widget>[
            Container(
              width: double.infinity,
                padding: EdgeInsets.all(20),
              color: Colors.lightBlue,
              child: Center(
                child: Column(
                  children: <Widget>[
                    Container(
                      width: 100,
                      height: 100,
                      margin: EdgeInsets.only(top: 30),
                      decoration:  BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(image: AssetImage('assets/PERFIL.jpg'))
                      ),
                    ),
                    Text('Manuel Sanchez', style: TextStyle(
                      fontSize: 22,
                      color:  Colors.white,
                    ),
                    ),
                    Text('ManuelitoVerau@gmail.com', style: TextStyle(
                      fontSize: 15,
                      color:  Colors.white70,
                    ),
                    )
                  ],
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text('Perfil', style: TextStyle(
                fontSize: 18,
              ),
              ),
              onTap: null,
            ),
            
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Configuración', style: TextStyle(
                fontSize: 18,
              ),
              ),
              onTap: null,
            ),
            ListTile(
              leading: Icon(Icons.arrow_back),
              title: Text('Salir', style: TextStyle(
                fontSize: 18,
              ),
              ),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));
              },
            )
          ],
        )
    );

  }
}