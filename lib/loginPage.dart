import 'package:flutter/material.dart';
import 'package:nothing/signup.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});
  @override
  State<LoginPage> createState() => MyLoginPage();
}

class MyLoginPage extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          margin: const EdgeInsets.all(25),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _header(context),
              _inputField(context),
              _forgotPassword(context),
              _signUp(context),
            ],
          )),
    );
  }

  _header(context) {
    return const Column(
      children: [
        Text(
          'Welcome back',
          style: TextStyle(
            fontSize: 40,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text('Enter your credential to login')
      ],
    );
  }

  _inputField(context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Container(
          child: Icon(Icons.home),
          decoration: BoxDecoration(),
        ),
        const TextField(
          cursorColor: Colors.pink,
          decoration: InputDecoration(
              hintText: 'Password',
              prefixIcon: Icon(Icons.password),
              fillColor: Color.fromARGB(255, 251, 230, 255),
              filled: true,
              border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.all(Radius.circular(18)))),
          obscureText: true,
        ),
        const SizedBox(
          height: 10,
        ),
        ElevatedButton(
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const SignUp()));
          },
          style: ElevatedButton.styleFrom(
            shape: const StadiumBorder(),
            padding: const EdgeInsets.symmetric(vertical: 16),
            backgroundColor: Colors.pink[600],
          ),
          child: const Text('Login',
              style: TextStyle(
                fontSize: 20,
                color: Colors.white,
              )),
        )
      ],
    );
  }

  _forgotPassword(context) {
    return TextButton(
        onPressed: () {},
        child: const Text(
          'Forgot Password?',
          style: TextStyle(
              decoration: TextDecoration.underline, color: Colors.pink),
        ));
  }

  _signUp(context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text('Dont have an account ?'),
        TextButton(
            onPressed: () {},
            child: const Text(
              'Sign Up',
              style: TextStyle(color: Colors.pink),
            ))
      ],
    );
  }
}
