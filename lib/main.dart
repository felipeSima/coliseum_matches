// Copyright 2018 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          primarySwatch: Colors.deepOrange
      ),
      home: ArenaController(),
    );
  }
}

class ArenaController extends StatefulWidget {
  @override
  _ArenaControllerState createState() => _ArenaControllerState();
}

class _ArenaControllerState extends State<ArenaController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Arena Matches'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          MatchCards(),
          MatchCards(),
          MatchCards(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.add_a_photo),
              title: Text('Matches')
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.adjust),
              title: Text('Players')
          ),
        ],
      ),
    );
  }
}

class MatchCards extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: Theme.of(context).primaryColor, width: 1.0),
          borderRadius: BorderRadius.all(Radius.circular(10.0),
          ),
        ),
        child:
        Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: 8.0,top: 8.0,right: 8.0),
              child: Icon(Icons.tablet),
            ),
            Container(
              child:
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Text('Players'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class minIconRef extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 10,
      width: 10,
      child:
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(5.0),
            child: Icon(Icons.tablet, size: 5,),
          ),
          Text(
            '7',
          ),
        ],
      ),
    );
  }
}
