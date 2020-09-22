

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: 'Objek WIsata',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Home(),
    );
    throw UnimplementedError();
  }
}

class Home extends StatefulWidget{
  @override
  HomeState createState() => HomeState();
}


/*class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}*/

class HomeState extends State<Home> {


  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title = 'Tangkuban prahu';
  final String location = 'Bandung, Jawa Barat';
  final String description = '"Tangkuban Parahu atau Gunung Tangkuban Perahu adalah salah satu gunung yang terletak di Provinsi Jawa Barat , Indonesia.  Sekitar 20 km ke arah utara Kota Bandung, dengan rimbun pohon pinus dan hamparan kebun teh di sekitarnya, Gunung Tangkuban Perahu mempunyai ketinggian setinggi 2.084 meter"';

  String name = '';
  String text = '';

  final List<String> Kota = ['Semarang', 'Jogja', 'Jakarta'];
  bool selected1 = false;
  bool selected2 = false;
  bool selected3 = false;
  List<int> list = [];

  void onChanged1(bool value){
    setState(() {
      this.selected1 = value;
    });
    if (value) list.add(0);
    else list.remove(0);
    print(list);
  }

  void onChanged2(bool value){
    setState(() {
      this.selected2 = value;
    });
    if (value) list.add(1);
    else list.remove(1);
    print(list);
  }

  void onChanged3(bool value){
    setState(() {
      this.selected3 = value;
    });
    if (value) list.add(3);
    else list.remove(3);
    print(list);
  }


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Objek Wisata"),
      ),
      body: Column( 
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Image.asset(
            'assets/tangkubanperahu.jpg',
            height: 250.0,
            width: 412.0,
            fit: BoxFit.fill,
          ),
          Container(
            height: 15.0,
          ),
          Row(
            children: <Widget>[
              Container(
                width: 15.0,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    this.title,
                    style: TextStyle(
                      fontSize: 25.0,
                      fontWeight: FontWeight.bold
                    )
                  ),
                  Text(
                    this.location,
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 20.0
                    ),
                  )
                ],
              ),
              Container(
                width: 130.0,
              ),
            ],
          ),
          Container(
            padding: EdgeInsets.all(15.0),
            child: Text(
              this.description,
              style: TextStyle(
                fontSize: 18.0,
              ),
              softWrap: true,
            ),
          ),
          Column(
            children: <Widget>[
              TextField(
                onChanged: (String value){ onChanged(value); },
                decoration: InputDecoration(
                  hintText: 'Input Nama Anda',
                  hintStyle: TextStyle(
                    fontStyle: FontStyle.normal,
                  )
                ),
              ),
              RaisedButton(
                child: Text('Klik'),
                onPressed: () {onPressed();},
              ),
              Container(height: 15.0),
              Text(this.text),
            ],
          ),
          Column(
            children: <Widget>[
              Text('Kota yang sering kamu kunjungi ?'),
              Row(
                children: <Widget>[
                  Checkbox(
                    value: this.selected1,
                    onChanged: (bool value) {onChanged1(value);},
                  ),
                  Container(width: 8.0,),
                  Text(this.Kota[0])
                ],
              ),
              Row(
                children: <Widget>[
                  Checkbox(
                    value: this.selected2,
                    onChanged: (bool value) {onChanged2(value);},
                  ),
                  Container(width: 8.0,),
                  Text(this.Kota[1])
                ],
              ),
              Row(
                children: <Widget>[
                  Checkbox(
                    value: this.selected3,
                    onChanged: (bool value) {onChanged3(value);},
                  ),
                  Container(width: 8.0,),
                  Text(this.Kota[2])
                ],
              )
            ],
          )
        ],
      ),
    );
  }

  void onChanged(String value) {
    setState((){
      this.name = value;
    });
  }

  void onPressed() {
    setState((){
      if (this.name.trim().length == 0) return;
      this.text = 'hai ' + this.name + ', apa kabar?';
    });
  }

}



 /* @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //

    
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    *//*ScreenUtil.instance = ScreenUtil.getInstance()..init(context);
    ScreenUtil.instance = ScreenUtil(width: 750, height: 1334, allowFontScaling: true);
    return new Scaffold(
      // backgroundColor: Color.white,
      resizeToAvoidBottomPadding: true,
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(top: 20.0),
                child: Image.asset("assets/logopet.png"),
              ),
              SingleChildScrollView(
                child: Padding(
                  padding: EdgeInsets.only(left: 28.0, right: 28.0, top: 60.0),
                  child: Column(
                    children: <Widget> [
                      SizedBox(
                        height: ScreenUtil.getInstance().setHeight(180),
                      ),
                      Container(
                        width: double.infinity,
                        height: ScreenUtil.getInstance().setHeight(500),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(8.0),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.black12,
                                  offset: Offset(0.0, 15.00),
                                  blurRadius: 15.0),
                              BoxShadow(
                                  color: Colors.black12,
                                  offset: Offset(0.0, 15.00),
                                  blurRadius: 15.0)
                            ]
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );*//*// unutk desihn full

  }*/

