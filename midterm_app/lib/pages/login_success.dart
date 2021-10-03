//import 'package:midterm_app/pages/login.dart';
import 'package:flutter/material.dart';
import 'package:midterm_app/models/login_form_model.dart';
import 'package:provider/provider.dart';

class LoginSuccessPage extends StatefulWidget {
  const LoginSuccessPage({Key? key}) : super(key: key);

  @override
  _LoginSuccessState createState() => _LoginSuccessState();

  //_FirstPageState createState() => _FirstPageState();
}

class _LoginSuccessState extends State<LoginSuccessPage> {
  // ignore: unused_field
  String? _formData = 'Please click to fill the form';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login Success'),
      ),
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Consumer<LoginFormModel>(
                builder: (context, form, child) {
                  return Text('Welcome ${form.userName}');
                },
              ),
            ),
            ElevatedButton(
              onPressed: () async {
                var response = await Navigator.pushNamed(context, '/6');

                if (response != null && response.toString().isNotEmpty) {
                  setState(() {
                    _formData = response.toString();
                  });
                }
              },
              child: const Text('Fill this form please'),
            )
          ],
        ),
      ),
    );
  }
}
