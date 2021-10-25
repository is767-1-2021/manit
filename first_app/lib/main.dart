// import 'dart:html';

//import 'package:flutter/gestures.dart';

import 'package:first_app/controllers/controllers.dart';
import 'package:first_app/pages/todo_page.dart';
import 'package:first_app/services/services.dart';
import 'package:flutter/material.dart';

void main() {
  var services = HttpServices();
  var controller = TodoController(services);

  runApp(TodoApp(controller: controller));
}

class TodoApp extends StatelessWidget {
  final TodoController controller;
  TodoApp({required this.controller});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: TodoPage(
        controller: controller,
      ),
    );
  }
}
