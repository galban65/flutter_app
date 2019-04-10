import 'package:flutter/material.dart';

class PaginaCalendario extends StatefulWidget{
  @override
  _PaginaCalendario createState() => new _PaginaCalendario();
}
class _PaginaCalendario extends State<PaginaCalendario>{
  @override
  Widget build(BuildContext context){
    return new Scaffold(
            appBar: AppBar(title: Text("calendario"),),

      body: Center(
        child: Text("calendario"),
      )
    );
  }
}