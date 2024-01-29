import 'package:flutter/material.dart';

class Login1 extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.arrow_back_ios),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: const EdgeInsets.only(top: 50, left: 20),
              child: const Text(
                'Login',
                style: TextStyle(fontSize: 35),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 40, left: 20),
              child: const Text('User name'),
            ),
            Container(
                height: 45,
                margin: const EdgeInsets.only(top: 10, left: 20, right: 20),
                child: const TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                  ),
                )),
            Container(
              margin: const EdgeInsets.only(top: 20, left: 20),
              child: const Text('Password'),
            ),
            Container(
                height: 45,
                margin: const EdgeInsets.only(left: 20, right: 20),
                child: const TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                  ),
                )),
            Container(
              width: 400,
              margin: const EdgeInsets.only(left: 20, right: 20, top: 40),
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.pink,
                  shape: const BeveledRectangleBorder(),
                ),
                child: const Text(
                  'Login',
                ),
              ),
            ),
            Container(
              width: 390,
              margin: const EdgeInsets.only(top: 20, left: 20),
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  shape: const ContinuousRectangleBorder(
                      side: BorderSide(color: Colors.pink)),
                ),
                child: const Text('Login with Google'),
              ),
            ),
            Container(
              width: 390,
              margin: const EdgeInsets.only(top: 20, left: 20),
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  shape: const ContinuousRectangleBorder(
                      side: BorderSide(color: Colors.pink)),
                ),
                child: const Text('Login with Appe'),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 50, left: 120),
              child: const Text("Don't have an account?Register"),
            ),
          ],
        ),
      ),
    );
  }
}
