import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Drawer Layout Demo',
      debugShowCheckedModeBanner: false,
      theme: new ThemeData(
        primarySwatch: Colors.red
      ),
      home: new MyHomePage(title: 'DigiDoc'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
        child: new Scaffold(
      appBar: AppBar(
        title: Text('DigiDoc'),
      ),
      drawer: Drawer(
          elevation: 20.0,
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              UserAccountsDrawerHeader(
                accountName: Text('User name'),
                accountEmail: Text('useremail@gmail.com'),
                currentAccountPicture: Image.network(''), //image
                decoration: BoxDecoration(color: Colors.redAccent),
              ),
              ListTile(
                leading: Icon(Icons.account_circle),
                title: Text('Medical History'),
                onTap: () {
                  // This line code will close drawer programatically....
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SecondRoute()),
                  );
                },
              ),
              Divider(
                height: 2.0,
              ),
              ListTile(
                leading: Icon(Icons.receipt),
                title: Text('Lab Reports'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ThirdRoute()),
                  );
                },
              ),
              Divider(
                height: 2.0,
              ),
              ListTile(
                leading: Icon(Icons.accessibility),
                title: Text('Fitness & frailty factors'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => FourthRoute()),
                  );
                },
              ),
              Divider(
                height: 2.0,
              ),
              ListTile(
                leading: Icon(Icons.group),
                title: Text('Social Status'),
                onTap: () {
                 Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => FifthRoute()),
                  );
                },
              ),
              Divider(
                height: 2.0,
              ),
              ListTile(
                leading: Icon(Icons.monetization_on),
                title: Text('Insurance'),
                onTap: () {
                 Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SixthRoute()),
                  );
                },
              ),
              Divider(
                height: 2.0,
              ),
              ListTile(
                leading: Icon(Icons.account_box),
                title: Text('logout'),
                onTap: () {
                
Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => FirstWidget()),
                  );
                },
              ),
            ],
          )),
    ));
  }
}

class SecondRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Medical History"),
      ),
    );
  }
}

class ThirdRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Lab Reports"),
      ),
    );
  }
}

class FourthRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Fitness & Frality factors"),
      ),
    );
  }
}

class FifthRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Social Status"),
      ),
    );
  }
}

class SixthRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Insurance"),
      ),
    );
  }
}


class FirstWidget extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {

    return Scaffold(
        appBar: AppBar(title: Text("Log out"),),
        body: Column(children: <Widget>[
          AlertDialog(title: Text("Alert"),
          actions: <Widget>[
            FlatButton(child: Text("No"),),
            FlatButton(child: Text("Yes"),)],
          content: Text("Do you wish to exit?"),
          )
        ],)
    );
  }
}