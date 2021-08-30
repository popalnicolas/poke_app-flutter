import 'package:flutter/material.dart';
import 'package:poke_app/constants.dart';

class RegisterScreen extends StatefulWidget {

  final Function toggleView;
  RegisterScreen({required this.toggleView});

  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {

  final _formKey = GlobalKey<FormState>();

  String username = "";
  String password = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.fromLTRB(20, 50, 20, 0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  child: Image.asset("assets/images/pokemon.png", width: 200,),
                ),
                SizedBox(height: kDefaultPadding,),
                Stack(
                  alignment: Alignment(0.9, -1.14),
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 40, horizontal: 20),
                      decoration: BoxDecoration(
                          color: Colors.grey[400],
                          borderRadius: BorderRadius.all(Radius.circular(20))
                      ),
                      child: Form(
                        key: _formKey,
                        child: Column(
                          children: [
                            TextFormField(
                              style: TextStyle(
                                  color: Colors.black
                              ),
                              decoration: InputDecoration(
                                labelText: "username",
                                fillColor: Colors.white,
                                filled: true,
                              ),
                              validator: (val) => val!.isEmpty ? "Enter username" : null,
                              onChanged: (value) {
                                setState(() {
                                  username = value;
                                });
                              },
                            ),
                            SizedBox(height: kDefaultPadding,),
                            TextFormField(
                              style: TextStyle(
                                  color: Colors.black
                              ),
                              decoration: InputDecoration(
                                labelText: "email",
                                fillColor: Colors.white,
                                filled: true,
                              ),
                              validator: (val) => val!.isEmpty ? "Enter email" : null,
                              onChanged: (value) {
                                setState(() {
                                  username = value;
                                });
                              },
                            ),
                            SizedBox(height: kDefaultPadding,),
                            TextFormField(
                              obscureText: true,
                              style: TextStyle(
                                  color: Colors.black
                              ),
                              decoration: InputDecoration(
                                labelText: "password",
                                fillColor: Colors.white,
                                filled: true,
                              ),
                              validator: (val) => val!.isEmpty ? "Enter password" : null,
                              onChanged: (value) {
                                setState(() {
                                  password = value;
                                });
                              },
                            ),
                            SizedBox(height: kDefaultPadding,),
                            TextFormField(
                              obscureText: true,
                              style: TextStyle(
                                  color: Colors.black
                              ),
                              decoration: InputDecoration(
                                labelText: "password",
                                fillColor: Colors.white,
                                filled: true,
                              ),
                              validator: (val) => val!.isEmpty ? "Enter password" : null,
                              onChanged: (value) {
                                setState(() {
                                  password = value;
                                });
                              },
                            ),
                            SizedBox(height: kDefaultPadding,),
                            ElevatedButton(
                              onPressed: () async{
                                if(_formKey.currentState!.validate())
                                {
                                  print("$username : $password");
                                }
                              },
                              child: Text("Register"),
                              style: ElevatedButton.styleFrom(
                                  primary: Colors.pink[300]
                              ),
                            ),
                            SizedBox(height: kDefaultPadding/4,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("Already registered? "),
                                InkWell(
                                  child: Text("Sign in here!", style: TextStyle(color: Colors.pink[400], fontWeight: FontWeight.bold),),
                                  onTap: (){
                                    widget.toggleView();
                                  },
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    Image.asset("assets/images/pokeball.png", fit: BoxFit.fill,),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
