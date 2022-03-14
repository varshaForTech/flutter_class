import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
              flex: 2,
              child: Padding(
                padding: EdgeInsets.only(right: 30,left: 30,top: 30),
                child: Image.asset("images/logo.png"),
              )),
          Expanded(
              flex: 3,
              child: Padding(
                padding: EdgeInsets.only(left: 30,right: 30),
                child: Column(
                  children: [
                    TextField(
                      decoration: InputDecoration(
                        hintText: "Phone Number",
                      ),
                      keyboardType: TextInputType.number,
                    ),
                    SizedBox(height: 20),
                    TextField(
                      decoration: InputDecoration(
                        hintText: "Password",
                      ),
                      obscureText: true,
                    ),
                    SizedBox(height: 20),
                    SizedBox(
                      width: MediaQuery.of(context).size.width,
                      height: 50,
                      child: ElevatedButton(
                        child: Text("Login"),
                        onPressed: () {

                        },
                      ),
                    ),
                    SizedBox(height: 10),
                    TextButton(
                        onPressed: () {},
                        child: Text("Forgot password? No yawa. Tap me")),
                    SizedBox(height: 20),
                    SizedBox(
                      width: MediaQuery.of(context).size.width,
                      height: 45,
                      child: ElevatedButton(
                        child: Text("No Account? Sign Up"),
                        onPressed: () {

                        },
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(Colors.grey),
                        ),
                      ),
                    ),
                  ],
                ),
              ))
        ],
      ),
    );
  }
}
