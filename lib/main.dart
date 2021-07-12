import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:keyken/constants.dart';
import 'package:keyken/routes.dart';
import 'package:keyken/provider/auth_services.dart';
import 'package:keyken/screens/onboard/onboard.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return StreamProvider.value(
      value: AuthServices.firebaseUserStream,
      initialData: FirebaseAuth.instance.currentUser,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
            scaffoldBackgroundColor: Colors.white,
            fontFamily: "Muli",
            textTheme: TextTheme(
              bodyText1: TextStyle(color: kTextColor),
              bodyText2: TextStyle(color: kTextColor),
            ),
            visualDensity: VisualDensity.adaptivePlatformDensity),
        initialRoute: Onboard.routeName,
        routes: routes,
      ),
    );
  }
}
