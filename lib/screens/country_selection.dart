import 'package:flutter/material.dart';
import 'package:registerPage/screens/sign_up.dart';

class CountrySelection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Column(
                children: <Widget>[
                  Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      color: Color(0xFFF2F2F2),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(top: 70.0, left: 20.0),
                          child: Text(
                            'Choose your languages',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 50.0,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 40.0, left: 20.0),
                          child: Text(
                            'A new and exciting way to learn',
                            style: TextStyle(
                              color: Colors.black54,
                              letterSpacing: 2.0,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 5.0,
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 20.0, bottom: 50.0),
                          child: Text(
                            'languages',
                            style: TextStyle(
                              color: Colors.black54,
                              letterSpacing: 2.0,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(left: 50.0, right: 10.0, top: 60.0),
                child: CustomCard(),
              ),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: EdgeInsets.only(left: 50.0),
                child: Text(
                  'I want to learn',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              CountryCard(
                name: 'Germany',
                icon: Icons.check,
              ),
              CountryCard(
                name: 'French',
              ),
              CountryCard(
                name: 'Korean',
              ),
              SizedBox(
                height: 60.0,
              ),
              Padding(
                padding: EdgeInsets.only(left: 50.0),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SignUp(),
                      ),
                    );
                    print('cool mf');
                  },
                  child: Container(
                    width: 325,
                    height: 50,
                    child: Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Text(
                        'Keep going',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20.0,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5.0),
                      color: Color(0xFFF26404),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class CountryCard extends StatelessWidget {
  CountryCard({this.icon, this.name});
  final String name;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 50.0, right: 10.0, top: 30.0),
      child: Container(
        height: 25.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.horizontal(right: Radius.zero),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text(name),
            Icon(
              icon,
              color: Color(0xFFF26404),
            ),
          ],
        ),
      ),
    );
  }
}

class CustomCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Text(
          'I speak',
          textAlign: TextAlign.left,
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(
          height: 15.0,
        ),
        Container(
          height: 25.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.horizontal(right: Radius.zero),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text('American English'),
              Icon(
                Icons.arrow_right_alt_outlined,
                color: Color(0xFFF26404),
              ),
            ],
          ),
        ),
        Divider(
          thickness: 2.0,
        ),
      ],
    );
  }
}
