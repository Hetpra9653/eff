
import 'package:flutter/material.dart';
import 'package:fuel_app/pages/homepage.dart';
import 'package:fuel_app/utils/ThemeHelper.dart';
import 'package:google_fonts/google_fonts.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  
 


  @override
  Widget build(BuildContext context) {
      // ignore: unused_local_variable
      String fname;
      // ignore: unused_local_variable
      String lname;
      // ignore: unused_local_variable
      String  mail;
      // ignore: unused_local_variable
      String  mobileNumber;
      // ignore: unused_local_variable
      String passw;
          
      // ignore: unused_local_variable
      // final _auth=FirebaseAuth.instance; 
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Stack(
              children: [
                ClipPath(
                  clipper: DrawwerClip(),
                  child: Container(
                    height: size.height * 0.3,
                    decoration: BoxDecoration(
                        gradient: LinearGradient(colors: [
                      Color(0xff000428),
                      Color(0xff004e92),
                    ])),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 90.0),
                  child: Center(
                    child: Container(
                      child: Text(
                        "Create Account",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 50.0,
                            fontFamily: GoogleFonts.cookie().fontFamily),
                      ),
                    ),
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 0.0, 20, 0.0),
              child: Column(
                children: [
                  SizedBox(
                    height: 40,
                  ),
                  Container(
                    child: TextFormField(
                      onChanged: (value){
                        setState(() {
                          fname=value;
                        });
                      },
                      decoration: ThemeHelper().textInputDecoration(
                          'First Name', 'Enter your first name'),
                    ),
                    decoration: ThemeHelper().inputBoxDecorationShaddow(),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Container(
                    child: TextFormField(
                      onChanged: (value){
                        setState(() {
                          lname=value;
                        });
                      },
                      decoration: ThemeHelper().textInputDecoration(
                          'Last Name', 'Enter your last name'),
                    ),
                    decoration: ThemeHelper().inputBoxDecorationShaddow(),
                  ),
                  SizedBox(height: 40.0),
                  Container(
                    child: TextFormField(
                      onChanged: (value){
                        setState(() {
                        
                         mail=value;

                        });
                      },
                      decoration: ThemeHelper().textInputDecoration(
                          "E-mail address", "Enter your email"),
                      keyboardType: TextInputType.emailAddress,
                      validator: (val) {
                        // ignore: prefer_is_not_empty
                        if (!(val!.isEmpty) &&
                            !RegExp(r"^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?)*$")
                                .hasMatch(val)) {
                          return "Enter a valid email address";
                        }
                        return null;
                      },
                    ),
                    decoration: ThemeHelper().inputBoxDecorationShaddow(),
                  ),
                  SizedBox(height: 40.0),
                  Container(
                    child: TextFormField(
                      onChanged: (value){
                        setState(() {
                          mobileNumber=value;
                        });
                      },
                      decoration: ThemeHelper().textInputDecoration(
                          "Mobile Number", "Enter your mobile number"),
                      keyboardType: TextInputType.phone,
                    ),
                    decoration: ThemeHelper().inputBoxDecorationShaddow(),
                  ),
                  SizedBox(height: 40.0),
                  Container(
                    child: TextFormField(
                      onChanged: (value){
                        setState(() {
                          passw=value;
                        });
                      },
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
                    ElevatedButton(
                      onPressed: () async {
                        
                               Navigator.push(
                          context, MaterialPageRoute(builder: (_) => HomePage()));
                            
                            
                        
                      //  Navigator.push(
                      //     context, MaterialPageRoute(builder: (_) => HomePage()));
                      
                      }, 
                      style: ButtonStyle(
                        
                      ),
                    child: Text("Create Account",style: TextStyle(fontSize: 25.0),))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class DrawwerClip extends CustomClipper<Path> {
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
