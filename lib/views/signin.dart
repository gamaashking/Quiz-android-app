import 'package:flutter/material.dart';
import 'package:miniproject/widgets/widgets.dart';

class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final _formKey = GlobalKey<FormState>();
  String email, password;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: appBar(context),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        brightness: Brightness.light,
      ),
      body: Form(
        child: Container(
          child: Column(
            children: [
              Spacer(),
              TextFormField(
                validator: (val) {
                  return val.isEmpty ? "Enter Emailid" : null;
                },
                decoration: InputDecoration(hintText: "Email"),
                onChanged: (val) {
                  email = val;
                },
              ),
              SizedBox(height: 6,),
              TextFormField(
                validator: (val) {
                  return val.isEmpty ? "Enter Password" : null;
                },
                decoration: InputDecoration(hintText: "Password"),
                onChanged: (val) {
                  email = val;
                },
              ),
              SizedBox(height: 80,),
            ],
          ),
        ),
      ),
    );
  }
}
