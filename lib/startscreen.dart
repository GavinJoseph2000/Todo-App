import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Container(
                margin: EdgeInsets.only(top: 50, right: 380),
                child: Icon(Icons.arrow_back_ios_new),
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 35, vertical: 30),
              child: const Text(
                'Welcome to upTodo',
                style: TextStyle(
                  fontSize: 40,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(
                horizontal: 40,
              ),
              child: const Text(
                'Please login to your account or create new account to continue',
                style: TextStyle(fontSize: 16),
                textAlign: TextAlign.center,
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 350),
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  shape: const ContinuousRectangleBorder(),
                  padding:
                      const EdgeInsets.symmetric(vertical: 12, horizontal: 160),
                  backgroundColor: Color(0XFFFF00A8),
                ),
                child: const Text('LOGIN',
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      color: Colors.white,
                    )),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 20),
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  shape: const ContinuousRectangleBorder(
                      side: BorderSide(color: Color(0XFFFF00A8))),
                  padding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 120),
                ),
                child: const Text(
                  'CREATE ACCOUNT',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
