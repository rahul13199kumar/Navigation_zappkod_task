
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'new_page.dart';


void main() => runApp(new MyApp());


class MyApp extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
        theme: new ThemeData(
          primaryColor: Colors.blueGrey,
        ),
        home:new HomePage(),
        routes: <String , WidgetBuilder>{
          "/a":(BuildContext context)=>  new NewPage ("New Page"),
        });
  }
}
//


class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Zappkode Task "),
      ),
      drawer:new Drawer(
        child: new ListView(
          children: <Widget>[
            new UserAccountsDrawerHeader(accountName: new Text("Internship"),
              accountEmail: new Text(" samiksha.k@zappkode.com"),
              currentAccountPicture: new CircleAvatar(
                backgroundColor:  Colors.white,
                child: new Text("s"),
              ),
              otherAccountsPictures: <Widget>[
                new CircleAvatar(
                  backgroundColor:  Colors.white,
                  child: new Text("R"),
                )
              ],

            ),
            new ListTile(
              title: new Text ("Page One"),
              trailing: new Icon(Icons.arrow_back_ios_sharp),
              onTap: () => Navigator.of(context).pushNamed("/a"),
            ),
            new ListTile(
              title: new Text("Page Two"),
              trailing: new Icon(Icons.arrow_back_ios_outlined),
              onTap: () => Navigator.of(context).pushNamed("/a"),
            ),
            new Divider(),
            new ListTile(
              title: new Text("Close"),
              trailing: new Icon(Icons.close),
              onTap: ()=> Navigator.of(context).pop(),
            ),
          ],
        ),
      ),

    );

  }
}
