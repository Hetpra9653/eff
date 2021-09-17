import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';

// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:fuel_app/pages/signup.dart';
import 'package:fuel_app/utils/ThemeHelper.dart';

import 'package:google_fonts/google_fonts.dart';


class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Stack(
                alignment: Alignment.center,
                children: [
                  ClipPath(
                    clipper: DrawClip(),
                    child: Container(
                      height: size.height * 0.3,
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomRight,
                              colors: [
                            Color(0xfff2a65a),
                            Color(0xff772f1a),
                          ])),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(bottom: 60.0),
                    child: Container(
                      child: Text(
                        "Login",
                        style: TextStyle(
                          fontSize: 65,
                          fontFamily: GoogleFonts.alexBrush().fontFamily,
                          fontWeight: FontWeight.bold,
                          color: Colors.white
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 50.0),
                    child: Text(
                      "To your account",
                      style: TextStyle(color: Colors.white, fontSize: 30.0),
                    ),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 100.0, left: 20.0,right: 20.0),
                child: Column(
                  children: [
                    Container(
                      child: TextFormField(
                        decoration: ThemeHelper().textInputDecoration(
                            "Mobile Number", "Enter your mobile number"),
                        keyboardType: TextInputType.phone,
                      ),
                      decoration: ThemeHelper().inputBoxDecorationShaddow(),
                    ),
                    SizedBox(height: 40.0),
                    Container(
                      child: TextFormField(
                        obscureText: true,
                        decoration: ThemeHelper().textInputDecoration(
                            "Password*", "Enter your password"),
                        validator: (val) {
                          if (val!.isEmpty) {
                            return "Please enter your password";
                          }
                          return null;
                        },
                      ),
                      decoration: ThemeHelper().inputBoxDecorationShaddow(),
                    ),
                  ],
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 26.0, top: 9.0),
                    child: GestureDetector(
                      onTap: () => Navigator.push(
                          context, MaterialPageRoute(builder: (_) => SignUp())),
                      child: Text(
                        "Forgot Password ?",
                        style: TextStyle(fontSize: 13.0, color: Colors.blue),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              GestureDetector(
                onTap: (){},
                child: Container(
                  width: 300.0,
                  height: 40.0,
                  child: Center(
                      child: Text(
                    "Login",
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  )),
                  decoration: BoxDecoration(
                      color: Colors.green,
                      border: Border.all(color: Colors.green)),
                ),
              ),
              Row(children: <Widget>[
                Expanded(
                    child: Divider(
                  height: 70.0,
                  thickness: 1.0,
                  indent: 25.0,
                )),
                Text(" Or "),
                Expanded(
                    child: Divider(
                  height: 70.0,
                  thickness: 1.0,
                  endIndent: 25.0,
                )),
              ]),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                      onPressed: () {},
                      icon: Image.network(
                          "https://img.icons8.com/cotton/48/000000/facebook.png")),
                  IconButton(
                      onPressed: () {
                        
                      },
                      icon: Image.network(
                          "https://img.icons8.com/color-glass/48/000000/google-logo.png")),
                ],
              ),
            ],
          ),
        ));
  }

  IconData? buildSocialMediaButton() {}
}

class DrawClip extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0.0, size.height - 20);

    var firstControlPoint = Offset(size.width / 4, size.height);
    var firstEndPoint = Offset(size.width / 2.25, size.height - 30.0);
    path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy,
        firstEndPoint.dx, firstEndPoint.dy);

    var secondControlPoint =
        Offset(size.width - (size.width / 3.25), size.height - 65);
    var secondEndPoint = Offset(size.width, size.height - 40);
    path.quadraticBezierTo(secondControlPoint.dx, secondControlPoint.dy,
        secondEndPoint.dx, secondEndPoint.dy);

    path.lineTo(size.width, size.height - 40);
    path.lineTo(size.width, 0.0);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => true;
}
 
// google authenticate
 