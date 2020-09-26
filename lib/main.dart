import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {   
    return MaterialApp(
      title: 'Flutter App 01 - Dave Fester',
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
      home: Scaffold(
        backgroundColor: Colors.blueGrey,
        appBar: AppBar(
          title: Text('Flutter App 01 - Dave Fester'),
          backgroundColor: Colors.blue,
        ),
        body: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[           
            Column(            
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[                       
                Container(
                  height: 100.0,
                  width: 100.0,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black, width: 3),
                    color: Colors.orange
                  ),              
                  child: Center(
                    child: Text(
                      "Container 1",
                      textAlign: TextAlign.center,
                    ) ,
                  ),
                ),
                Transform.rotate(
                  angle: pi/4,
                  child: Container(             
                    height: 100.0,
                    width: 100.0,
                    decoration: BoxDecoration(
                      color: Colors.white
                    ),              
                    child: Center(
                      child: Text(
                        "Container 2",
                        textAlign: TextAlign.center,
                        ) ,
                      ),
                    ), 
                  ),     
                ]
              ),
            Column(           
              children: <Widget>[
                Expanded(                                          
                  child: Padding(padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                    child:
                    Container(
                      height: 100.0,
                      width: 100.0,
                      decoration: BoxDecoration(                    
                        color: Colors.yellow
                      ),              
                      child: Align(
                        alignment: Alignment.bottomCenter,
                        child: Text(
                          "Container 3",
                        ) ,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                    child: Container(                                      
                      height: 100.0,
                      width: 100.0,
                      decoration: BoxDecoration(                    
                        color: Colors.blue
                      ),
                      child: Align(
                        alignment: Alignment.centerRight,
                        child: Text(
                          "Container 4",
                        ),
                      ),
                    ),
                  ),
                ),
              ]
            ),
            Column(
              //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[ 
                Expanded(
                  flex: 2,
                  child: Container(
                    child: CircleAvatar(
                    radius: 50,
                    backgroundColor: Colors.black,
                        child: Text(
                          "Container 5",
                          style: TextStyle(color: Colors.white),
                        ) ,
                      ),
                    padding: EdgeInsets.all(3.0),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    height: 100.0,
                    width: 100.0,
                    decoration: BoxDecoration(                    
                      color: Colors.red
                    ), 
                    child: Text(
                      'Con 6',
                      style: TextStyle(fontSize: 30),
                    ) ,
                  ),
                ),
              ],
            ),
          ],
        ),
      )
    );
  }
}