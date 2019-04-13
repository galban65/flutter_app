import 'package:flutter/material.dart';
import 'menu.dart';
import 'package:flutter/services.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: PaginaInicio(),
      initialRoute: "/",
      routes: {
        '/menu': (context)=> PaginaMenu(),
      },
    );
  }
}

class PaginaInicio extends StatefulWidget{
  @override
  _PaginaInicio createState() => new _PaginaInicio();
}
class _PaginaInicio extends State<PaginaInicio>{
  @override
  Widget build(BuildContext context){
    return new Scaffold(
      backgroundColor: Colors.purpleAccent,
      body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
            Image.asset("assets/img/logo.jpg"),
            Text("DPnoticias", style: TextStyle(color: Colors.black),),
            RaisedButton(
              child: Text("Ingresar"),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(15),
                  topRight: Radius.circular(15),
                  bottomLeft: Radius.circular(15),
                  bottomRight: Radius.circular(15),
                )
              ),

              onPressed: (){
              Navigator.pushNamed(context, "/menu");  

              }
            )
          ],
        ),  
      )
    );

    
  }

}

