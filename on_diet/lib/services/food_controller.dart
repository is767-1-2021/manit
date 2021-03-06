import 'dart:async';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:on_diet/model/food.dart';

class FoodController {
  final firestoreInstance = FirebaseFirestore.instance;

  //Delivery Areas via CSV
  Future addAllFoods(String foodId, String foodName, double totalkcal) async {
    try {
      int kCal = (totalkcal * 1).toInt();
      dynamic result = await firestoreInstance
          .collection("Foods")
          .doc(foodId)
          .set({
        'foodName': foodName,
        'kCal': kCal,
        'totalDish': 1,
        'totalkcal': totalkcal
      }).then((doc) async {
        print("success!");
        return true;
      }).catchError((error) {
        print("Failed to add user: $error");
        return false;
      });

      if (result) {
        Map finalResponse = <dynamic, dynamic>{}; //empty map
        finalResponse['Status'] = "Success";
        return finalResponse;
      } else {
        Map finalResponse = <dynamic, dynamic>{}; //empty map
        finalResponse['Error'] = "Error";
        finalResponse['ErrorMessage'] =
            "Cannot connect to server. Try again later";
        return finalResponse;
      }
    } catch (e) {
      print(e.toString());
      return setUpFailure();
    }
  }

  Future getAllFoods() async {
    List<Food> foodList = [];
    try {
      dynamic result =
          await firestoreInstance.collection("Foods").get().then((value) {
        value.docs.forEach((result) {
          print(result.data);
          Map foodData = result.data();
          foodData['foodId'] = result.id;
          Food food = Food(foodData);
          foodList.add(food);
        });
        return true;
      });

      if (result) {
        foodList.sort(
            (a, b) => a.foodName.toString().compareTo(b.foodName.toString()));
        return foodList;
      } else {
        return foodList;
      }
    } catch (e) {
      print(e.toString());
      return foodList;
    }
  }

  Map setUpFailure() {
    Map finalResponse = <dynamic, dynamic>{}; //empty map
    finalResponse['Status'] = "Error";
    finalResponse['ErrorMessage'] = "Please try again later. Server is busy.";
    return finalResponse;
  }
}
