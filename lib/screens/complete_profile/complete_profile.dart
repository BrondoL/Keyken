import 'package:flutter/material.dart';
import 'package:keyken/components/default_button.dart';
import 'package:keyken/screens/home/home.dart';
import 'package:keyken/size_config.dart';

class CompleteProfil extends StatefulWidget {
  CompleteProfil({Key key, this.title}) : super(key: key);
  final String title;
  static String routeName = "/complete_profile";

  @override
  _CompleteProfilState createState() => _CompleteProfilState();
}

class _CompleteProfilState extends State<CompleteProfil> {
  final myController1 = TextEditingController();
  final myController2 = TextEditingController();
  final myController3 = TextEditingController();

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    myController1.dispose();
    myController2.dispose();
    myController3.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
            "Lengkapi Profil",
            style: TextStyle(color: Colors.black),
          ),
          centerTitle: true,
          backgroundColor: Colors.white,
          actions: <Widget>[
            FlatButton(
              textColor: Colors.white,
              onPressed: () => Navigator.pushNamed(context, Home.routeName),
              child: Text(
                "Lewati",
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
                controller: myController1,
                decoration: InputDecoration(
                  border: UnderlineInputBorder(),
                  labelText: 'Nama',
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextField(
                controller: myController2,
                decoration: InputDecoration(
                  border: UnderlineInputBorder(),
                  labelText: 'Nomor Telpon',
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextField(
                controller: myController3,
                decoration: InputDecoration(
                  border: UnderlineInputBorder(),
                  labelText: 'Alamat',
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: SizedBox(
                width: getProportionateScreenWidth(300),
                child: DefaultButton(
                  text: "Selesai",
                  press: () => Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Home(),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),

      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
