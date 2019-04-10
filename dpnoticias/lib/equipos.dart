import 'package:flutter/material.dart';

class PaginaEquipos extends StatefulWidget{
  @override
  _PaginaEquipos createState() => new _PaginaEquipos();
}
class _PaginaEquipos extends State<PaginaEquipos>{
  @override
  Widget build(BuildContext context){
    return new Scaffold(
            appBar: AppBar(title: Text("equipos"),),

      body: Center(
        child: Text("equipos"),
      )
    );
  }
}