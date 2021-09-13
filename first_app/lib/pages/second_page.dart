import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Second Page'),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.build_sharp),
        onPressed: () {},
      ),
      body: Center(
        child: Column(
          children: [
            Text(
              'Here is the text formatted by theme data',
            ),
            Table(
              children: [
                TableRow(children: [
                  Container(
                    child: Center(child: Text('No 1')),
                    decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                  Container(
                    child: Center(child: Text('Name')),
                    decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                  Container(
                    child: Center(child: Text('Gender')),
                    decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  )
                ]),
                TableRow(children: [
                  Text('1'),
                  Text('Manit Chitnukul'),
                  Text('Male')
                ]),
                TableRow(
                    children: [Text('1'), Text('Jane Doe'), Text('Female')])
              ],
            )
          ],
        ),
      ),
    );
  }
}
