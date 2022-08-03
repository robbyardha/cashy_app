import 'package:cashy_apps/font_style.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      
      // home: const MyHomePage(title: 'Cashy'),
      home: Scaffold(
        appBar: AppBar(title: Text("Cashy"),
        backgroundColor: Colors.indigoAccent,
          actions: [
            IconButton(icon: Icon(Icons.mail),onPressed: (){}, )
          ],
        ),
        body: SafeArea(child: Container(
          // color: Colors.cyanAccent,
          margin: EdgeInsets.only(left: 45.0, top: 0, right: 0, bottom: 0),
          padding: EdgeInsets.only(left: 0, top: 50.0, right: 0, bottom: 0),
          //colum -> vertical (atas - bawah)
          //row -> horizontal (kanan - kiri)
          child: Column(
            children: [
              Image(image: AssetImage('assets/images/ic_touch.png'),
              height: 200,
              ),
              Text("Rich Together", style: mainHeader,),
              Text("Save your money little bit and we will help to be rich", style: subHeader,),
            ],
          ),
        ))
      ),
    );
    
  }
}
