import 'package:flutter/material.dart';
import 'package:keyken/components/custom_buttom_nav_bar.dart';
import 'package:keyken/enums.dart';
import 'package:keyken/screens/login/login.dart';

class Profile extends StatefulWidget {
  Profile({Key key, this.title}) : super(key: key);
  final String title;
  static String routeName = "/profile";
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
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
            "My Account",
            style: TextStyle(color: Colors.black),
          ),
          backgroundColor: Colors.white,
          leading: new IconButton(
            icon: new Icon(
              Icons.arrow_back,
              color: Colors.black,
            ),
            onPressed: () {},
          ),
          actions: <Widget>[
            IconButton(
              icon: new Icon(Icons.favorite, color: Colors.grey),
              onPressed: () {},
            ),
            IconButton(
              icon: new Icon(Icons.message_rounded, color: Colors.grey),
              onPressed: () {},
            ),
          ]),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 200,
              child: Container(
                alignment: Alignment(0.0, 0.5),
                child: CircleAvatar(
                  backgroundImage:
                      AssetImage("assets/images/Profile Image.png"),
                  radius: 60.0,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 5, 16, 5),
              child: ButtonTheme(
                height: 50,
                minWidth: 250,
                child: RaisedButton(
                  color: Colors.white,
                  splashColor: Colors.grey,
                  onPressed: () {},
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                            flex: 1,
                            child: Text('Akun Saya',
                                style: TextStyle(
                                    fontSize: 15, color: Colors.black87))),
                        Expanded(
                          child: Align(
                            alignment: Alignment.centerRight,
                            child: Icon(Icons.account_circle_outlined,
                                color: Colors.black),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 5, 16, 5),
              child: ButtonTheme(
                height: 50,
                minWidth: 250,
                child: RaisedButton(
                  color: Colors.white,
                  splashColor: Colors.grey,
                  onPressed: () {},
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                            flex: 1,
                            child: Text('Pengaturan',
                                style: TextStyle(
                                    fontSize: 15, color: Colors.black87))),
                        Expanded(
                          child: Align(
                            alignment: Alignment.centerRight,
                            child: Icon(Icons.settings, color: Colors.black),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 5, 16, 5),
              child: ButtonTheme(
                height: 50,
                minWidth: 250,
                child: RaisedButton(
                  color: Colors.white,
                  splashColor: Colors.grey,
                  onPressed: () =>
                      Navigator.of(context).pushNamedAndRemoveUntil(
                    Login.routeName,
                    (Route<dynamic> route) => false,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          flex: 1,
                          child: Text(
                            'Keluar',
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.black87,
                            ),
                          ),
                        ),
                        Expanded(
                          child: Align(
                            alignment: Alignment.centerRight,
                            child: Icon(
                              Icons.logout,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: CustomBottomNavBar(selectedMenu: MenuState.profile),
    );
  }
}
