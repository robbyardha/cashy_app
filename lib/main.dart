import 'package:cashy_apps/font_style.dart';
import 'package:cashy_apps/custom_colors.dart';
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
          appBar: AppBar(
            title: Text("Cashy"),
            // backgroundColor: Colors.indigoAccent,
            backgroundColor: darkPurple,
            actions: [
              IconButton(
                icon: Icon(Icons.mail),
                onPressed: () {},
              )
            ],
          ),
          body: SafeArea(
              child: Container(
                  // color: Colors.indigo,
                  // color: Colors.cyanAccent,
                  margin: EdgeInsets.only(
                      left: 23.0, top: 0, right: 23.0, bottom: 0),
                  padding:
                      EdgeInsets.only(left: 0, top: 0, right: 0, bottom: 0),
                  //colum -> vertical (atas - bawah)
                  //row -> horizontal (kanan - kiri)
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Image(
                            image: AssetImage('assets/images/ic_touch.png'),
                            height: 200,
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 20.0, bottom: 4.0),
                            child: Text(
                              "Rich Together",
                              style: mainHeader,
                            ),
                          ),
                          Text(
                            "Save your money little bit and we \nwill help to be rich",
                            style: subHeader,
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ],
                  )))),
    );
  }
}
