import 'package:flutter/material.dart';

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