import 'package:on_diet/model/food.dart';
import 'package:on_diet/services/food_controller.dart';
import 'package:on_diet/utils/constants.dart';
import 'package:on_diet/utils/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class AddCustomFood extends StatefulWidget {
  @override
  _AddCustomFoodState createState() => _AddCustomFoodState();
}

class _AddCustomFoodState extends State<AddCustomFood> {
  TextEditingController foodName = TextEditingController();
  TextEditingController kcal = TextEditingController();
  TextEditingController dish = TextEditingController();
  TimeOfDay? timeUser;

  void saveFood() {
    int totalDishes = int.parse(dish.text);
    Food customFood = Food.fromEmpty();
    customFood.foodId = DateTime.now().millisecondsSinceEpoch.toString();
    customFood.foodName = foodName.text;
    customFood.foodKCalPerDish = int.parse(kcal.text);
    customFood.totalDishes = totalDishes;
    customFood.totalkcal =
        customFood.foodKCalPerDish / (1 / customFood.totalDishes);
    customFood.userDishSelected = int.parse(dish.text);
    customFood.userBasedCalories = (customFood.totalkcal).toInt();
    FoodController().addAllFoods(
        customFood.foodId, customFood.foodName, customFood.totalkcal);
    Get.back(result: customFood);
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Container(
      width: SizeConfig.blockSizeHorizontal * 90,
      child: MediaQuery.removePadding(
        context: context,
        removeTop: true,
        child: ListView(
          shrinkWrap: true,
          children: [
            Container(
              child: Center(
                child: Text(
                  'Add Custom Food',
                  style: TextStyle(
                      color: Colors.green,
                      fontSize: SizeConfig.fontSize * 2.3,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 30),
              padding: EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.grey[300]),
              child: Center(
                child: TextField(
                  style: TextStyle(fontSize: SizeConfig.fontSize * 1.8),
                  controller: foodName,
                  decoration: new InputDecoration(
                    hintText: "Food Name",
                    hintStyle: TextStyle(
                        color: Colors.green,
                        fontSize: SizeConfig.fontSize * 1.8),
                    border: InputBorder.none,
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10),
              padding: EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.grey[300]),
              child: Center(
                child: TextField(
                  style: TextStyle(fontSize: SizeConfig.fontSize * 1.8),
                  controller: kcal,
                  inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                  keyboardType: TextInputType.number,
                  decoration: new InputDecoration(
                    hintText: "Calories",
                    hintStyle: TextStyle(
                        color: Colors.green,
                        fontSize: SizeConfig.fontSize * 1.8),
                    border: InputBorder.none,
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10),
              padding: EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.grey[300]),
              child: Center(
                child: TextField(
                  style: TextStyle(fontSize: SizeConfig.fontSize * 1.8),
                  controller: dish,
                  inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                  keyboardType: TextInputType.number,
                  decoration: new InputDecoration(
                    hintText: "Dish",
                    hintStyle: TextStyle(
                        color: Colors.green,
                        fontSize: SizeConfig.fontSize * 1.8),
                    border: InputBorder.none,
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 120,
                    height: 40,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.green),
                    child: TextButton(
                        onPressed: () {
                          Get.back();
                        },
                        child: Text(
                          'Cancel',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: SizeConfig.fontSize * 1.9),
                        )),
                  ),
                  Container(
                    width: 120,
                    height: 40,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.green),
                    child: TextButton(
                        onPressed: () {
                          if (foodName.text.isEmpty)
                            Constants.showDialog('Please enter food name');
                          else if (kcal.text.isEmpty)
                            Constants.showDialog('Please enter calories');
                          else if (dish.text.isEmpty)
                            Constants.showDialog('Please enter dish');
                          else {
                            saveFood();
                          }
                        },
                        child: Text(
                          'Save',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: SizeConfig.fontSize * 1.9),
                        )),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
