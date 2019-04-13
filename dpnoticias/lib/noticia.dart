import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;
class PaginaNoticias extends StatefulWidget{
  @override
  _PaginaNoticias createState() => new _PaginaNoticias();
}
class _PaginaNoticias extends State<PaginaNoticias>{
  String url="http://192.168.1.4/fixture/public/jsonnoticias";
  List data;
  Future<String> Recibir() async{
    var response =await http.get(Uri.encodeFull(url), headers: {"Accept":"application/json"});
    setState(() {
      var extraerData= json.decode(response.body);
      data=extraerData["listaNoticias"];
      print(data.toString());
    });
  }
  void initState(){
    this.Recibir();
  }

  @override
  Widget build(BuildContext context){
    return new Scaffold(
      appBar: AppBar(title: Text("noticias"),),
      body: Center(

        child: new ListView.builder(
          itemCount: data==null ? 0 : data.length,
            itemBuilder: (BuildContext context, i){
              if (data==null){
                return new CircularProgressIndicator();
              }
              else
              return new InkWell(
                child:  Card(
                child: Column(
                  children: <Widget>[
                    Stack(
                      children: <Widget>[
                        Center(child: CircularProgressIndicator(),),
                        Center(
                          child: Image.network(
                            "http://192.168.1.4/fixture/public/img/noticias/"+data[i]['urlfoto']
                          ),
                        )
                      ],
                    ),
                    Text(data[i]['titulo'], style: TextStyle (fontSize: 15,),textAlign: TextAlign.center,),
                    Align(
                       alignment: Alignment.centerRight,
                       child: Text(data[i]['updated_at']),
                    )
                  ],
                ),
              ),
              onTap: (){
                Navigator.push(context, new MaterialPageRoute(
                builder: (BuildContext context) => new PaginaDetalle(data[i]))
                );
               },
              );
            }
        )
      ),
    );
  }
}

class PaginaDetalle extends StatelessWidget{
  PaginaDetalle(this.data);
  final data;

  @override

  Widget build(BuildContext context){
    return new Scaffold(
      appBar: AppBar(title: Text(data["titulo"]),),
      body: new ListView(
        children: <Widget>[
          Image.network("http://192.168.1.4/fixture/public/img/noticias/"+data['urlfoto']),
          Container(
            padding:const EdgeInsets.all(15.0) ,
            child: Text(data["descripcion"],textAlign: TextAlign.justify),
          ),
          Container(
            child: Text("publicado el "+data["updated_at"], textAlign:TextAlign.right),
          ),
        ],
      ),
    );
  }
}

