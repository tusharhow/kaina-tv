import 'package:flutter/material.dart';
import 'package:kaina_tv/views/auth/registration.dart';

class OnboardPage extends StatelessWidget {
  const OnboardPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 150),
            InkWell(
              onTap: (() {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => RegistrationPage()));
              }),
              child: Center(
                child: Container(
                  height: 50,
                  width: MediaQuery.of(context).size.width / 2,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Colors.blue,
                          Colors.pink,
                        ],
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                      ),
                      borderRadius: BorderRadius.circular(20)),
                  child: Center(
                    child: Text(
                      'Create a Account',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 15),
            Center(
              child: Text(
                'Or',
                style: TextStyle(color: Colors.black),
              ),
            ),
            SizedBox(height: 20),
            Center(
              child: Text(
                'Already have an account?',
                style: TextStyle(color: Colors.black),
              ),
            ),
            SizedBox(height: 20),
            Image.asset('images/tv.png')
          ],
        ),
      ),
    );
  }
}
