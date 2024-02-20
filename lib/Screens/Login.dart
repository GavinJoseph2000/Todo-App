import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nothing/Screens/indexhome.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  Login1State createState() => Login1State();
}

class Login1State extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _mobileController = TextEditingController();
  final TextEditingController _nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(padding: EdgeInsets.only(top: 80)),
              const Text(
                'Login',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.w700),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 40),
                child: Text(
                  'Mobile Number:',
                  style: TextStyle(fontSize: 16.0),
                ),
              ),
              TextFormField(
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "Enter your Mobile No"),
                controller: _mobileController,
                keyboardType: TextInputType.phone,
                maxLength: 10,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Mobile number is required';
                  } else if (!RegExp(r'^[0-9]+$').hasMatch(value)) {
                    return 'Enter a valid mobile number';
                  } else if (value.length != 10) {
                    return 'Mobile number should be 10 digits';
                  }
                  return null;
                },
              ),
              const Padding(
                padding: EdgeInsets.only(top: 10),
                child: Text(
                  'Full Name:',
                  style: TextStyle(fontSize: 16.0),
                ),
              ),
              TextFormField(
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "Enter your Full Name"),
                controller: _nameController,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Full name is required';
                  } else if (!RegExp(r'^[a-zA-Z ]+$').hasMatch(value)) {
                    return 'Enter a valid name with only letters and spaces';
                  }
                  return null;
                },
              ),
              Container(
                height: 50,
                width: 360,
                margin: const EdgeInsets.only(left: 5, top: 30),
                decoration: const BoxDecoration(color: Colors.purple),
                child: TextButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {}
                    Get.to(IndexHome());
                  },
                  style: const ButtonStyle(
                      shape: MaterialStatePropertyAll(ContinuousRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(5)))),
                      backgroundColor: MaterialStatePropertyAll(
                          Color.fromRGBO(240, 32, 167, 1))),
                  child: const Text('Login'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
