import 'package:flutter/material.dart';
import 'package:flutter_app/pages/dashboard.dart';
import 'package:flutter_app/pages/home_page.dart';
import 'package:flutter_app/services/auth.dart';

class SignUp extends StatefulWidget {
  SignUp({Key key}) : super(key: key);

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  bool validate = false;
  final AuthService _auth = AuthService();
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: Center(
          child: Container(
        margin: EdgeInsets.symmetric(horizontal: 20),
        height: MediaQuery.of(context).size.height * 0.8,
        decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(20)),
        child: Container(
          height: 1000,
          width: double.infinity,
          padding: EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(vertical: 20),
                child: Text(
                  'Sign Up',
                  style: TextStyle(color: Theme.of(context).primaryColor, fontSize: 30, fontWeight: FontWeight.bold),
                ),
              ),
              Form(
                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextField(
                    controller: nameController,
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                        labelText: 'Name',
                        prefixIcon: Icon(Icons.person),
                        errorText: emailController.text != null ? null : "Please enter your email"),
                  ),
                  TextField(
                    controller: emailController,
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                        labelText: 'Email',
                        prefixIcon: Icon(Icons.email),
                        errorText: emailController.text != null ? null : "Please enter your email"),
                  ),
                  TextField(
                    controller: passwordController,
                    keyboardType: TextInputType.emailAddress,
                    obscureText: true,
                    decoration: InputDecoration(
                        labelText: 'Password',
                        prefixIcon: Icon(Icons.vpn_key),
                        errorText: passwordController.text != null ? null : "Please enter your password"),
                  ),
                  TextField(
                    controller: confirmPasswordController,
                    keyboardType: TextInputType.emailAddress,
                    obscureText: true,
                    decoration: InputDecoration(
                        labelText: 'Confirm Password',
                        prefixIcon: Icon(Icons.vpn_key),
                        errorText: confirmPasswordController.text == passwordController.text
                            ? null
                            : "Please confirm your password"),
                  )
                ],
              )),
              ElevatedButton(
                onPressed: () async {
                  if (nameController.text != null &&
                      emailController.text != null &&
                      passwordController.text != null &&
                      confirmPasswordController.text != null &&
                      confirmPasswordController.text == passwordController.text) {
                    setState(() {
                      validate = true;
                    });
                  }
                  if (validate) {
                    dynamic result =
                        await _auth.signUp(nameController.text, emailController.text, passwordController.text, context);
                    if (result == null) {
                      print('sign up failed');
                    } else {
                      print('signed up');
                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Dashboard()));
                    }
                  }
                },
                child: Text('Sign Up'),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Already have an account?"),
                  SizedBox(
                    width: 10,
                  ),
                  GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Text(
                        "Login",
                        style:
                            TextStyle(color: Theme.of(context).primaryColor, fontSize: 20, fontWeight: FontWeight.w600),
                      ))
                ],
              )
            ],
          ),
        ),
      )),
    );
  }
}
