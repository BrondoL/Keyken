import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:keyken/components/default_back_btn.dart';
import 'package:keyken/components/default_button.dart';
import 'package:keyken/provider/auth_services.dart';
import 'package:keyken/screens/complete_profile/complete_profile.dart';
import 'package:keyken/size_config.dart';

class Register extends StatefulWidget {
  Register({Key key, this.title}) : super(key: key);
  final String title;
  static String routeName = "/register";

  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final email = TextEditingController();
  final password = TextEditingController();
  final password2 = TextEditingController();

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    email.dispose();
    password.dispose();
    password2.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
          // Here we take the value from the MyHomePage object that was created by
          // the App.build method, and use it to set our appbar title.
          title: Text(
            "Daftar",
            style: TextStyle(color: Colors.black),
          ),
          backgroundColor: Colors.white,
          leading: DefaultBackButton(),
          centerTitle: true,
          actions: <Widget>[
            FlatButton(
              textColor: Colors.white,
              onPressed: () => Navigator.of(context).pop(),
              child: Text(
                "Masuk",
                style: TextStyle(color: Colors.red),
              ),
              shape: CircleBorder(side: BorderSide(color: Colors.transparent)),
            ),
          ]),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextField(
                controller: email,
                decoration: InputDecoration(
                  border: UnderlineInputBorder(),
                  labelText: 'Email',
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextField(
                controller: password,
                decoration: InputDecoration(
                  border: UnderlineInputBorder(),
                  labelText: 'Password',
                ),
                autofocus: false,
                obscureText: true,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextField(
                controller: password2,
                decoration: InputDecoration(
                  border: UnderlineInputBorder(),
                  labelText: 'Konfirmasi Password',
                ),
                autofocus: false,
                obscureText: true,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: SizedBox(
                width: getProportionateScreenWidth(300),
                child: DefaultButton(
                    text: "Daftar",
                    press: () async {
                      await AuthServices.signUp(email.text, password.text);
                      if (FirebaseAuth.instance.currentUser != null) {
                        return Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => CompleteProfil(),
                          ),
                        );
                      }
                    }),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
