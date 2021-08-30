import 'package:flutter/material.dart';
import 'package:poke_app/screens/authenticate/login_screen.dart';
import 'package:poke_app/screens/authenticate/register_screen.dart';

class Authenticate extends StatefulWidget {
  const Authenticate({Key? key}) : super(key: key);

  @override
  _AuthenticateState createState() => _AuthenticateState();
}

class _AuthenticateState extends State<Authenticate> {

  bool showSignIn = true;
  void toggleView()
  {
    setState(() {
      showSignIn = !showSignIn;
    });
  }

  @override
  Widget build(BuildContext context) {
    return showSignIn ? LoginScreen(toggleView: toggleView,) : RegisterScreen(toggleView: toggleView,);
  }
}
