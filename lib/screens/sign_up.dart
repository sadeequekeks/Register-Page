import 'package:flutter/material.dart';
import 'package:registerPage/widgets/custom_button.dart';

class SignUp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(top: 70.0, left: 20.0, right: 20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'Sign up and starting learning',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 45.0,
                        ),
                      ),
                      SizedBox(
                        height: 100.0,
                      ),
                      TextField(
                        decoration: InputDecoration(
                          hintText: 'Name',
                        ),
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      TextField(
                        decoration: InputDecoration(
                          hintText: 'Email Address',
                        ),
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      TextField(
                        decoration: InputDecoration(
                          hintText: 'Password',
                        ),
                      ),
                      SizedBox(
                        height: 30.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            'Sign up',
                            style: TextStyle(
                              fontSize: 25.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          CustomButton(),
                        ],
                      ),
                      SizedBox(
                        height: 70.0,
                      ),
                      Text(
                        'Sign in',
                        style: TextStyle(
                          decoration: TextDecoration.underline,
                          decorationThickness: 2.85,
                          color: Color(0xFF4B4B4B),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
