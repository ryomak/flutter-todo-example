import 'package:flutter/material.dart';

class AddTaskScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff757575),
      child: Container(
        padding: EdgeInsets.all(20.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(20.0),
            topLeft: Radius.circular(20.0),
          )
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              'add task',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 30.0,
                color: Colors.green,
              ),
            ),
            TextField(
              autofocus: true,
              textAlign: TextAlign.center,
            ),
            FlatButton(
              child: Text(
                'add',
                style: TextStyle(
                  color: Colors.white
                ),
              ),
              color: Colors.green,
              onPressed: (){
                // add our task to the list
              },
            )
          ],
        ),
      ),
    );
  }
}
