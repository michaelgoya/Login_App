import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:login_app/MenuRati.dart';

void main() {
  runApp(MaterialApp(
    home:Bienvenido_Rati(),
  ));
}

class Bienvenido_Rati extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return new CupertinoApp(
      debugShowCheckedModeBanner: false,
      home: bienvenido_rati(),
    );
    throw UnimplementedError();
  }
}

class bienvenido_rati extends StatelessWidget {
  @override 
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Center(
        child: new Container(
          color: Color.fromARGB(150, 150, 255, 275),
          child: ListView(
            children: [
              new Padding(padding: EdgeInsets.only(top:150.0)),
              Saludo_App(),
              SizedBox(height: 15,),
              Saludo2_App(),
              SizedBox(height: 15,),
               Nombre_App(),
              SizedBox(height: 100,),
              BotonAvanzar(context),
            ],
          ),
        ),
      ),
    );
    throw UnimplementedError();
  }
}

//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////               FUNCIONES               /////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

Widget Saludo_App() {
  return Container(
    //color: Color.fromARGB(255, 255, 155, 0),
    // color: Color.fromARGB(150, 150, 255, 50),
    alignment: Alignment.center,
    child: Text(
      'Hi',
      style: TextStyle(fontSize: 50, color: Color.fromARGB(255, 255, 255, 255)),
    ),
  );
}

Widget Saludo2_App(){
  return Container(
    //color: Color.fromARGB(255, 255, 155, 0),
    // color: Color.fromARGB(150, 150, 255, 50),
    alignment: Alignment.center,
    child: Text(
      'Lets see',
      style: TextStyle(fontSize: 50, color: Color.fromARGB(255, 255, 255, 255)),
    ),
  );


}


Widget Nombre_App(){
  return Container(
    //color: Color.fromARGB(255, 255, 155, 0),
   // color: Color.fromARGB(150, 150, 255, 50),
    alignment: Alignment.center,
    child: Text(
      'Lucky',
      style: TextStyle(fontSize: 50, color: Color.fromARGB(255, 255, 255, 255)),
    ),
  );
}

Widget BotonAvanzar(context){
  return new Container(
      child: Stack(
          children: <Widget>[
            Align(
              alignment: Alignment.bottomRight,
              child: FloatingActionButton(
                heroTag: "btn1",
                onPressed: (){
                  Navigator.push(context,
                      new MaterialPageRoute(builder:
                          (context) => new Menu_Rati())
                  );
                },
                child:const Icon(Icons.navigate_next),
                backgroundColor: Colors.green,
              ),
            ),
            BotonRetrocederF(context),
          ]
      )
  );
}


Widget BotonRetrocederF(context){
  return new Container(
      child: Stack(
        children: <Widget>[
          Align(
            alignment: Alignment.bottomLeft,
            child: FloatingActionButton(
              heroTag: "btn2",
              onPressed: (){
                Navigator.pop(context);
              },
              child:const Icon(Icons.navigate_before),
              backgroundColor: Colors.green,
            ),
          ),
        ],
      )
  );
}