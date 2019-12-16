import 'package:flutter/material.dart';
import 'CustomizedComponents.dart';

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
