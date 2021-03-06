import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';
//import 'package:cloud_firestore/cloud_firestore.dart';
//import 'package:flutter/material.dart';

class Food {
  String foodId = '';
  String foodName = "";
  double totalkcal = 0;
  int foodKCalPerDish = 0;
  int totalDishes = 0;
  int userDishSelected = 0;
  int userBasedCalories = 0;

  Food(Map data) {
    foodId = data["foodId"];
    foodName = data["foodName"];
    totalkcal = data['totalkcal'];
    foodKCalPerDish = data["kcal"];
    totalDishes = data['totalDishes'];
    userDishSelected = data["userDishSelected"];
    userBasedCalories = data["userBasedCalories"];
  }

  Food.fromEmpty();

  Map<String, dynamic> toJson() {
    return {
      "foodId": this.foodId,
      "foodName": this.foodName,
      "totalkcal": this.totalkcal,
      "foodKCalPerDish": this.foodKCalPerDish,
      "totalDishes": this.totalDishes,
      "userDishSelected": this.userDishSelected,
      "userBasedCalories": this.userBasedCalories
    };
  }

  Food.fromSavedJson(Map<String, dynamic> data) {
    foodId = data["foodId"];
    foodName = data["foodName"];
    totalkcal = data['totalkcal'];
    foodKCalPerDish = data["foodKCalPerDish"];
    totalDishes = data['totalDishes'];
    userDishSelected = data["userDishSelected"];
    userBasedCalories = data["userBasedCalories"];
  }

  static Future<void> saveFoodsForDate(
      DateTime dateTime, List<Food> foodList) async {
    final prefs = await SharedPreferences.getInstance();
    List<String> savingList = [];
    for (int i = 0; i < foodList.length; i++) {
      Map<String, dynamic> json = foodList[i].toJson();
      String newAddition = jsonEncode(Food.fromSavedJson(json));
      savingList.add(newAddition);
    }
    String dateTimeKey = "${dateTime.day}-${dateTime.month}-${dateTime.year}";
    await prefs.setStringList(dateTimeKey, savingList);
  }

  static Future getSavedFoodsForDate(DateTime dateTime) async {
    String dateTimeKey = "${dateTime.day}-${dateTime.month}-${dateTime.year}";
    List<Food> savedListForDate = [];
    final prefs = await SharedPreferences.getInstance();
    List<String> alreadySaved = prefs.getStringList('$dateTimeKey') ?? [];
    for (int i = 0; i < alreadySaved.length; i++) {
      Map<String, dynamic> decodeList = jsonDecode(alreadySaved[i]);
      Food food = Food.fromSavedJson(decodeList);
      savedListForDate.add(food);
    }
    return savedListForDate;
  }
}
