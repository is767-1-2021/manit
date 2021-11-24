// ignore_for_file: camel_case_types

//import 'package:on_diet/old/pages/cat.dart';
import 'package:on_diet/bmi_bmr/pages/BMI_Data_Screen.dart';
import 'package:on_diet/old/pages/exercise_menu_page.dart';
import 'package:on_diet/old/pages/webview.dart';
//import 'package:on_diet/old/pages/welcome.dart';
import 'package:on_diet/screens/home/dashboard.dart';
//import 'package:on_diet/old/update/form.dart';
import 'package:on_diet/screens/home/drinkpage.dart';
import 'package:on_diet/screens/home/foodpage.dart';
import 'package:on_diet/screens/home/home.dart';
import 'package:flutter/material.dart';
//import 'package:team_app/pages/score.dart';
//import 'package:team_app/pages/workout_result.dart';
import 'package:on_diet/bmi_bmr/pages/BMICalculatorScreen.dart';
import 'menu_page.dart';

/* class sitemap extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          padding: EdgeInsets.all(32),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                height: 100,
              ),
              Container(
                child: TextButton.icon(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => BMICalculatorScreen()));
                    },
                    icon: Icon(
                      Icons.health_and_safety_sharp,
                      color: Colors.pink,
                    ),
                    label: Text("Check BMI&BMR"),
                    style: TextButton.styleFrom(
                      primary: Colors.orangeAccent,
                      backgroundColor: Colors.pink[900],
                      onSurface: Colors.black12,
                    )),
                width: double.infinity,
                padding: EdgeInsets.only(left: 16, right: 16),
              ),
              Container(
                child: TextButton.icon(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => HomeScreen()));
                    },
                    icon: Icon(
                      Icons.forward,
                      color: Colors.pink,
                    ),
                    label: Text("Exercise Record"),
                    style: TextButton.styleFrom(
                      primary: Colors.orangeAccent,
                      backgroundColor: Colors.purple[800],
                      onSurface: Colors.black12,
                    )),
                width: double.infinity,
                padding: EdgeInsets.only(left: 16, right: 16),
              ),
              Container(
                child: TextButton.icon(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => WebViewExample()));
                    },
                    icon: Icon(
                      Icons.local_pizza,
                      color: Colors.pink,
                    ),
                    label: Text("News"),
                    style: TextButton.styleFrom(
                      primary: Colors.orangeAccent,
                      backgroundColor: Colors.green[900],
                      onSurface: Colors.black12,
                    )),
                width: double.infinity,
                padding: EdgeInsets.only(left: 16, right: 16),
              ),
              Container(
                child: TextButton.icon(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => FormScreen()));
                    },
                    icon: Icon(
                      Icons.wine_bar,
                      color: Colors.pink,
                    ),
                    label: Text("Meal Record"),
                    style: TextButton.styleFrom(
                      primary: Colors.orangeAccent,
                      backgroundColor: Colors.blue[900],
                      onSurface: Colors.black12,
                    )),
                width: double.infinity,
                padding: EdgeInsets.only(left: 16, right: 16),
              ),
              Container(
                child: TextButton.icon(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Cat()));
                    },
                    icon: Icon(
                      Icons.food_bank,
                      color: Colors.pink,
                    ),
                    label: Text("Tips"),
                    style: TextButton.styleFrom(
                      primary: Colors.orangeAccent,
                      backgroundColor: Colors.redAccent,
                      onSurface: Colors.black12,
                    )),
                width: double.infinity,
                padding: EdgeInsets.only(left: 16, right: 16),
              ),
              Container(
                child: TextButton.icon(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => MenuPage()));
                    },
                    icon: Icon(
                      Icons.umbrella,
                      color: Colors.pink,
                    ),
                    label: Text("Recipe"),
                    style: TextButton.styleFrom(
                      primary: Colors.orangeAccent,
                      backgroundColor: Colors.teal[900],
                      onSurface: Colors.black12,
                    )),
                width: double.infinity,
                padding: EdgeInsets.only(left: 16, right: 16),
              ),
              SizedBox(
                height: 8,
              ),
              Text(
                "HOME",
                style: TextStyle(
                    color: Colors.orangeAccent,
                    fontSize: 56,
                    fontWeight: FontWeight.w500),
              ),
            ],
          ),
        ),
      ),
    );
  }
} */

class sitemap extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "On Diet",
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
        ),
        body: ListView(scrollDirection: Axis.vertical, children: [
          // Individual Button Proflie
          Container(
            margin: EdgeInsets.all(10.0),
            decoration: BoxDecoration(
              color: Color(0xFFFFF0EB),
              borderRadius: BorderRadius.circular(8.0),
            ),
            height: 100,
            child: Row(
              children: [
                Center(
                  child: Padding(
                    padding: EdgeInsets.all(10),
                    child: Expanded(
                      child:
                          Image.asset("assets/images/woman.png"), //---IMAGE---
                      flex: 2,
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    alignment: Alignment.topLeft,
                    child: Column(
                      children: [
                        Expanded(
                          flex: 5,
                          child: ListTile(
                              title: Text(
                                "My BMI Record", //---TITLE---
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    height: 3.4,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xFF957DAD)),
                              ),
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          BMI_Data_Screen()), //---LINK---
                                );
                              }),
                        ),
                      ],
                    ),
                  ),
                  flex: 8,
                ),
              ],
            ),
          ),
          // ---END OF TAB

          // Individual Button 1
          Container(
            margin: EdgeInsets.all(10.0),
            decoration: BoxDecoration(
              color: Color(0xFFFAF9F0),
              borderRadius: BorderRadius.circular(8.0),
            ),
            height: 100,
            child: Row(
              children: [
                Center(
                  child: Padding(
                    padding: EdgeInsets.all(10),
                    child: Expanded(
                      child: Image.asset("assets/images/bmi.png"), //---IMAGE---
                      flex: 2,
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    alignment: Alignment.topLeft,
                    child: Column(
                      children: [
                        Expanded(
                          flex: 5,
                          child: ListTile(
                              title: Text(
                                "BMI Calculator", //---TITLE---
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    height: 3.4,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xFF957DAD)),
                              ),
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          BMICalculatorScreen()), //---LINK---
                                );
                              }),
                        ),
                      ],
                    ),
                  ),
                  flex: 8,
                ),
              ],
            ),
          ),
          // ---END OF TAB

          // Individual Button 2
          Container(
            margin: EdgeInsets.all(10.0),
            decoration: BoxDecoration(
              color: Color(0xFFFAE7E3),
              borderRadius: BorderRadius.circular(8.0),
            ),
            height: 100,
            child: Row(
              children: [
                Center(
                  child: Padding(
                    padding: EdgeInsets.all(10),
                    child: Expanded(
                      child: Image.asset(
                          "assets/images/cocktail.png"), //---IMAGE---
                      flex: 2,
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    alignment: Alignment.topLeft,
                    child: Column(
                      children: [
                        Expanded(
                          flex: 5,
                          child: ListTile(
                              title: Text(
                                "Drink Diary", //---TITLE---
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    height: 3.4,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xFF957DAD)),
                              ),
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          DrinkPage()), //---LINK---
                                );
                              }),
                        ),
                      ],
                    ),
                  ),
                  flex: 8,
                ),
              ],
            ),
          ),
          // ---END OF TAB

          // Individual Button 3
          Container(
            margin: EdgeInsets.all(10.0),
            decoration: BoxDecoration(
              color: Color(0xFFF7D9D7),
              borderRadius: BorderRadius.circular(8.0),
            ),
            height: 100,
            child: Row(
              children: [
                Center(
                  child: Padding(
                    padding: EdgeInsets.all(10),
                    child: Expanded(
                      child:
                          Image.asset("assets/images/meal.png"), //---IMAGE---
                      flex: 2,
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    alignment: Alignment.topLeft,
                    child: Column(
                      children: [
                        Expanded(
                          flex: 5,
                          child: ListTile(
                              title: Text(
                                "Food Diary",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    height: 3.4,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xFF957DAD)),
                              ), //---TITLE---
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          FoodPage()), //---LINK---
                                );
                              }),
                        ),
                      ],
                    ),
                  ),
                  flex: 8,
                ),
              ],
            ),
          ),
          // ---END OF TAB

          // Individual Button 4
          Container(
            margin: EdgeInsets.all(10.0),
            decoration: BoxDecoration(
              color: Color(0xFFFAF9F0),
              borderRadius: BorderRadius.circular(8.0),
            ),
            height: 100,
            child: Row(
              children: [
                Center(
                  child: Padding(
                    padding: EdgeInsets.all(10),
                    child: Expanded(
                      child:
                          Image.asset("assets/images/runner.png"), //---IMAGE---
                      flex: 2,
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    alignment: Alignment.topLeft,
                    child: Column(
                      children: [
                        Expanded(
                          flex: 5,
                          child: ListTile(
                              title: Text(
                                "Workout Diary",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    height: 3.4,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xFF957DAD)),
                              ), //---TITLE---
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          HomeScreen()), //---LINK---
                                );
                              }),
                        ),
                      ],
                    ),
                  ),
                  flex: 8,
                ),
              ],
            ),
          ),
          // ---END OF TAB

          // Individual Button 5
          Container(
            margin: EdgeInsets.all(10.0),
            decoration: BoxDecoration(
              color: Color(0xFFFAE7E3),
              borderRadius: BorderRadius.circular(8.0),
            ),
            height: 100,
            child: Row(
              children: [
                Center(
                  child: Padding(
                    padding: EdgeInsets.all(10),
                    child: Expanded(
                      child: Image.asset(
                          "assets/images/diet (1).png"), //---IMAGE---
                      flex: 2,
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    alignment: Alignment.topLeft,
                    child: Column(
                      children: [
                        Expanded(
                          flex: 5,
                          child: ListTile(
                              title: Text(
                                "Dashboard",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    height: 3.4,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xFF957DAD)),
                              ), //---TITLE---
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          Dashboard()), //---LINK--- NEED DESTINATION
                                );
                              }),
                        ),
                      ],
                    ),
                  ),
                  flex: 8,
                ),
              ],
            ),
          ),
          // ---END OF TAB

          // Individual Button 6
          Container(
            margin: EdgeInsets.all(10.0),
            decoration: BoxDecoration(
              color: Color(0xFFF7D9D7),
              borderRadius: BorderRadius.circular(8.0),
            ),
            height: 100,
            child: Row(
              children: [
                Center(
                  child: Padding(
                    padding: EdgeInsets.all(10),
                    child: Expanded(
                      child:
                          Image.asset("assets/images/menu.png"), //---IMAGE---
                      flex: 2,
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    alignment: Alignment.topLeft,
                    child: Column(
                      children: [
                        Expanded(
                          flex: 5,
                          child: ListTile(
                              title: Text(
                                "Food & Drink Menu",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    height: 3.4,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xFF957DAD)),
                              ), //---TITLE---
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          MenuPage()), //---LINK---
                                );
                              }),
                        ),
                      ],
                    ),
                  ),
                  flex: 8,
                ),
              ],
            ),
          ),
          // ---END OF TAB

          // Individual Button 7
          Container(
            margin: EdgeInsets.all(10.0),
            decoration: BoxDecoration(
              color: Color(0xFFFAF9F0),
              borderRadius: BorderRadius.circular(8.0),
            ),
            height: 100,
            child: Row(
              children: [
                Center(
                  child: Padding(
                    padding: EdgeInsets.all(10),
                    child: Expanded(
                      child: Image.asset(
                          "assets/images/routine.png"), //---IMAGE---
                      flex: 2,
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    alignment: Alignment.topLeft,
                    child: Column(
                      children: [
                        Expanded(
                          flex: 5,
                          child: ListTile(
                              title: Text(
                                "Workout Menu",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    height: 3.4,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xFF957DAD)),
                              ), //---TITLE---
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          ExerciseMenu()), //---LINK--- NEED DESTINATION
                                );
                              }),
                        ),
                      ],
                    ),
                  ),
                  flex: 8,
                ),
              ],
            ),
          ),
          // ---END OF TAB

          // Individual Button 8
          Container(
            margin: EdgeInsets.all(10.0),
            decoration: BoxDecoration(
              color: Color(0xFFFAE7E3),
              borderRadius: BorderRadius.circular(8.0),
            ),
            height: 100,
            child: Row(
              children: [
                Center(
                  child: Padding(
                    padding: EdgeInsets.all(10),
                    child: Expanded(
                      child: Image.asset(
                          "assets/images/newspaper.png"), //---IMAGE---
                      flex: 2,
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    alignment: Alignment.topLeft,
                    child: Column(
                      children: [
                        Expanded(
                          flex: 5,
                          child: ListTile(
                              title: Text(
                                "News",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    height: 3.4,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xFF957DAD)),
                              ), //---TITLE---
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          WebViewExample()), //---LINK---
                                );
                              }),
                        ),
                      ],
                    ),
                  ),
                  flex: 8,
                ),
              ],
            ),
          ),
          // ---END OF TAB

          // Individual Button 9
          /*Container(
            margin: EdgeInsets.all(10.0),
            decoration: BoxDecoration(
              color: Color(0xFFF7D9D7),
              borderRadius: BorderRadius.circular(8.0),
            ),
            height: 100,
            child: Row(
              children: [
                Center(
                  child: Padding(
                    padding: EdgeInsets.all(10),
                    child: Expanded(
                      child: Image.asset(
                          "assets/images/weightlifting.png"), //---IMAGE---
                      flex: 2,
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    alignment: Alignment.topLeft,
                    child: Column(
                      children: [
                        Expanded(
                          flex: 5,
                          child: ListTile(
                              title: Text(
                                "Tips",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    height: 3.4,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xFF957DAD)),
                              ), //---TITLE---
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          WebViewExample()), //---LINK---
                                );
                              }),
                        ),
                      ],
                    ),
                  ),
                  flex: 8,
                ),
              ],
            ),
          ),*/
          // ---END OF TAB
        ]));
  }
}
