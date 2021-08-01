import 'package:flutter/material.dart';
import 'package:flutter_app/pages/authentication/signUp.dart';
import 'package:flutter_app/pages/dashboard.dart';
import 'package:flutter_app/pages/home_page.dart';
import 'package:flutter_app/pages/admin_page.dart';
import 'package:flutter_app/services/auth.dart';

class Login extends StatefulWidget {
  Login({Key key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool validate = false;
  final AuthService _auth = AuthService();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
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
                  'Login',
                  style: TextStyle(color: Theme.of(context).primaryColor, fontSize: 30, fontWeight: FontWeight.bold),
                ),
              ),
              Form(
                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextField(
                    controller: emailController,
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                        labelText: 'Email',
                        prefixIcon: Icon(Icons.person),
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
                  )
                ],
              )),
              ElevatedButton(
                onPressed: () async {

                  if (emailController.text == 'admin@admin.com' && passwordController.text != null ){
                    setState(() {
                      validate = true;
                    });

                    if (validate == true) {
                      dynamic result = await _auth.logIn(emailController.text, passwordController.text, context);
                      if (result == null) {
                        print('admin login failed');
                      } else {
                        print('admin logged in successfull');
                        print(result);
                        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Admin()));
                      }
                    }

                  }

                  if (emailController.text != null && passwordController.text != null) {
                    setState(() {
                      validate = true;
                    });
                  }
                  if (validate == true) {
                    dynamic result = await _auth.logIn(emailController.text, passwordController.text, context);
                    if (result == null) {
                      print('login failed');
                    } else {
                      print('logged in');
                      print(result);
                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Dashboard()));
                    }
                  }
                },
                child: Text('Login'),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Don't have an account?"),
                  SizedBox(
                    width: 10,
                  ),
                  GestureDetector(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => SignUp()));
                      },
                      child: Text(
                        "Signup",
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
