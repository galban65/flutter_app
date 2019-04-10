import 'package:flutter/material.dart';
import 'noticia.dart';
import 'equipos.dart';
import 'calendario.dart';

class PaginaMenu extends StatefulWidget{
  @override
  _PaginaMenu createState() => new _PaginaMenu();
}

class _PaginaMenu extends State<PaginaMenu>{

  @override
  Widget build(BuildContext context){
    return new Scaffold(
      appBar: AppBar(
        title: Text("Menu Opciones"),
      ),
      drawer: MenuLateral(),

      body: Container(
        padding: EdgeInsets.only(top: 100),
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage("assets/img/banner.png"),
          fit: BoxFit.contain,
          alignment: Alignment.topCenter
          )
        ),
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Padding(
                      child: RaisedButton(
                      onPressed:(){
                        Navigator.of(context).push(MaterialPageRoute(
                          builder:(BuildContext) => PaginaNoticias())
                        );
                      },
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10))
                      ),
                      child: SizedBox(
                        width: 100,
                        height: 130,
                          child: Center(
                            child: Text("Noticias"),
                          )
                      )
                     ),
                     padding: const EdgeInsets.all(10.0),
                    )
                  ],
                ),
                Column(
                  children: <Widget>[
                    Padding(
                      child: RaisedButton(
                      onPressed:(){
                        Navigator.of(context).push(MaterialPageRoute(
                          builder:(BuildContext) => PaginaEquipos())
                        );
                      },
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10))
                      ),
                      child: SizedBox(
                        width: 100,
                        height: 130,
                          child: Center(
                            child: Text("Equipos"),
                          )
                      )
                     ),
                     padding: const EdgeInsets.all(10.0),
                    )
                  ],
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Padding(
                      child: RaisedButton(
                      onPressed:(){
                        Navigator.of(context).push(MaterialPageRoute(
                          builder:(BuildContext) => PaginaCalendario())
                        );
                      },
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10))
                      ),
                      child: SizedBox(
                        width: 100,
                        height: 130,
                          child: Center(
                            child: Text("Calendario"),
                          )
                      )
                     ),
                     padding: const EdgeInsets.all(10.0),
                    )
                  ],
                ),
              ],
            )
          ],
        ),
      ),

    );
    
  }
}


class MenuLateral extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    
    return new Drawer(
      child: new ListView(
        children: <Widget>[
          new UserAccountsDrawerHeader(
            accountEmail: Text("Bienvenido"),
            accountName: Text("Premier League"),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/img/lateral1.png"),
                fit: BoxFit.cover
              )
            ),
          ),
          ListTile(
           
            title: Text("Noticias"),
            onTap: (){
              //Navigator.pop(context);
              Navigator.of(context).push(
                MaterialPageRoute(builder:(BuildContext context)=> new PaginaNoticias())
              );
            },
          ),
          ListTile(
            title: Text("Equipos"),
            onTap: (){
              //Navigator.pop(context);
              Navigator.of(context).push(
                MaterialPageRoute(builder:(BuildContext context)=> new PaginaEquipos())
              );
            },
          ),
          ListTile(
            title: Text("Calendario"),
            onTap: (){
              //Navigator.pop(context);
              Navigator.of(context).push(
                MaterialPageRoute(builder:(BuildContext context)=> new PaginaCalendario())
              );
            },
          )
        ],
      ),
    );
  }
  
}
