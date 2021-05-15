import 'package:flutter/widgets.dart';
import 'package:keyken/screens/cart/cart.dart';
import 'package:keyken/screens/checkout/checkout.dart';
import 'package:keyken/screens/complete_profile/complete_profile.dart';
import 'package:keyken/screens/details/details.dart';
import 'package:keyken/screens/history/history.dart';
import 'package:keyken/screens/home/home.dart';
import 'package:keyken/screens/login/login.dart';
import 'package:keyken/screens/onboard/onboard.dart';
import 'package:keyken/screens/payment/payment.dart';
import 'package:keyken/screens/profile/profile.dart';
import 'package:keyken/screens/register/register.dart';
import 'package:keyken/screens/success/success.dart';

// We use name route
// All our routes will be available here
final Map<String, WidgetBuilder> routes = {
  Onboard.routeName: (context) => Onboard(),
  Home.routeName: (context) => Home(),
  Details.routeName: (context) => Details(),
  Cart.routeName: (context) => Cart(),
  Checkout.routeName: (context) => Checkout(),
  Payment.routeName: (context) => Payment(),
  Success.routeName: (context) => Success(),
  History.routeName: (context) => History(),
  Profile.routeName: (context) => Profile(),
  CompleteProfil.routeName: (context) => CompleteProfil(),
  Login.routeName: (context) => Login(),
  Register.routeName: (context) => Register(),
};
