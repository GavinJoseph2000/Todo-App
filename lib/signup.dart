import 'package:flutter/material.dart';
import 'package:nothing/loginPage.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          iconTheme: const IconThemeData(),
          backgroundColor: const Color.fromARGB(255, 251, 230, 255),
        ),
        // backgroundColor: Colors.green[500],
        body: SingleChildScrollView(
            child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(left: 15, right: 15, top: 0),
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(30)),
            ),
            Padding(
              padding: EdgeInsets.only(top: 0, left: 220.0),
              child: Image.asset(
                "images/signup.png",
                height: 150,
              ),
            ),
            Container(
              margin: const EdgeInsets.all(25),
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  header(context),
                  Column(
                    children: [
                      inputField(context),
                      signUp(context),
                      signIn(context),
                      back(context)
                    ],
                  ),
                ],
              ),
            ),
          ],
        )));
  }

  Widget header(context) {
    return const Text(
      'Create\nAccount',
      textAlign: TextAlign.left,
      style: TextStyle(fontSize: 40),
    );
  }

  Widget inputField(context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        TextField(
          cursorColor: Colors.pink,
          decoration: InputDecoration(
              hintText: 'Your name',
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  borderSide: BorderSide.none),
              fillColor: Color.fromARGB(255, 251, 230, 255),
              filled: true),
        ),
        SizedBox(
          height: 6,
        ),
        TextField(
          cursorColor: Colors.pink,
          decoration: InputDecoration(
              hintText: 'Your email',
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  borderSide: BorderSide.none),
              fillColor: Color.fromARGB(255, 251, 230, 255),
              filled: true),
        ),
        SizedBox(
          height: 6,
        ),
        TextField(
          cursorColor: Colors.pink,
          decoration: InputDecoration(
              hintText: 'Password',
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  borderSide: BorderSide.none),
              fillColor: Color.fromARGB(255, 251, 230, 255),
              filled: true),
        ),
        SizedBox(height: 6),
        TextField(
          cursorColor: Colors.pink,
          decoration: InputDecoration(
              hintText: 'Confirm password',
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  borderSide: BorderSide.none),
              fillColor: Color.fromARGB(255, 251, 230, 255),
              filled: true),
        ),
        SizedBox(
          height: 6,
        ),
      ],
    );
  }

  Widget signUp(context) {
    return Padding(
        padding: const EdgeInsets.only(top: 15),
        child: ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
              fixedSize: const Size(380, 45),
              backgroundColor: Colors.pink[600]),
          child: const Text('Sign up',
              style: TextStyle(
                fontSize: 20,
                color: Colors.white,
              )),
        ));
  }

  Widget signIn(context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text('Back to'),
        TextButton(
          onPressed: () {},
          child: const Text(
            'Sign in',
            style: TextStyle(color: Colors.pink),
          ),
        )
      ],
    );
  }

  Widget back(context) {
    return Padding(
        padding: const EdgeInsets.only(top: 10),
        child: ElevatedButton(
            onPressed: () {
              Navigator.pop(context,
                  MaterialPageRoute(builder: (context) => const LoginPage()));
            },
            style: ElevatedButton.styleFrom(backgroundColor: Colors.pink[600]),
            child: const Text(
              'Back',
              style: TextStyle(color: Colors.white),
            )));
  }
}
