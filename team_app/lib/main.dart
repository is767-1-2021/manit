// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:team_app/models/first_form_model.dart';
import 'package:team_app/models/food_form_model.dart';
// import 'package:team_app/pages/wijitra/bmr_app/lib/screens/main_page.dart';
import 'pages/food_history_page.dart';
import 'pages/input_data.dart';
import 'pages/menu_page.dart';
import 'pages/second_page.dart';
import 'pages/wijitra/BMICalculatorScreen.dart';
// import 'pages/wijitra/Home.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => FoodFormModel(),
        ),
        //Provider<ChangeNotifier>(create: (context) => FirstFormModel()),
        //Provider<ChangeNotifier>(create: (context) => FoodFormModel()),
        ChangeNotifierProvider(
          create: (context) => FirstFormModel(),
        ),
      ],
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primaryColor: Colors.lightGreen,
          accentColor: Colors.green,
          textTheme: TextTheme(
            bodyText2: TextStyle(color: Colors.black),
          ),
        ),
        initialRoute: '/5',
        routes: <String, WidgetBuilder>{
          '/1': (context) => MenuPage(),
          // '/2': (context) => NotePage(),
          '/3': (context) => BMICalculatorScreen(),
          '/4': (context) => FoodHistory(),
          '/5': (context) => FifthPage(),
          '/6': (context) => SecondPage(),
          '/7': (context) => InputData(),
        });
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

class FifthPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Grid View'),
      ),
      body: GridView.count(
        crossAxisCount: 2,
        children: List.generate(7, (index) {
          return InkWell(
            onTap: () {
              Navigator.pushNamed(context, '/${index + 1}');
              // ScaffoldMessenger.of(context).showSnackBar(SnackBar(
              //   content: Text('Tap at $index'),
              // ));
            },
            child: Container(
              margin: EdgeInsets.all(20.0),
              decoration: BoxDecoration(
                color: Theme.of(context).accentColor,
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: Center(
                child: Text(
                  'Page ${index + 1}',
                  style: Theme.of(context).textTheme.headline5,
                ),
              ),
            ),
          );
        }),
      ),
    );
  }
}
