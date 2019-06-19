
import 'package:flutter/material.dart';
import 'package:hello_world_app/HomePage.dart';
import 'package:hello_world_app/Login/Authentication.dart';
import 'package:hello_world_app/Login/SignUpPage.dart';
import 'package:firebase_auth/firebase_auth.dart';

class LoginPage extends StatefulWidget {
    
  LoginPage({
    this.auth,
    this.onSignedIn,
  });
  
  final BaseAuth auth;
  final VoidCallback onSignedIn;
  
  @override
  _LoginPageState createState() => new _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

bool obsureTextValue = true;

  void _ChangeText(){
    setState(() {
     if(obsureTextValue){
       obsureTextValue = false;
     }
     else{
       obsureTextValue = true;
     }
    });
  }


   Future moveToSignUp() {
    Navigator.push(context,
        MaterialPageRoute(builder: (context) => SignupPage(auth: new Auth ())));

  }

  String _email,_password;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  FirebaseAuth auth = FirebaseAuth.instance;

  bool validateAndSave() {
  
    final form = _formKey.currentState;
    if (form.validate()) {
      form.save();
      print("Form is valid");
      return true;
    }
    return false;
  }

  Future validateAndSubmit () async {
    if (validateAndSave()){
      try{
          print("Hello in this doododos");
        await auth.signInWithEmailAndPassword(
            email: _email, password: _password);
        print("User signed in");
        Navigator.push(context, MaterialPageRoute(builder: (context)=> mainApplication()));
//        widget.onSignedIn();

      }
      catch (e){
        print("User not signed in" + e.toString());
        _scaffoldKey.currentState.showSnackBar(
            SnackBar(
              content: new Text(e.toString()),
              duration: new Duration(seconds: 10),
            ));
      }
    }
  }





  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        resizeToAvoidBottomPadding: false,
        body: Stack(
          fit: StackFit.expand,
          children: <Widget>[
            new Image(
              image: AssetImage('assets/background.jpg'),
              fit: BoxFit.cover,
              color: Colors.black87,
              colorBlendMode: BlendMode.darken,
            ),
          Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              child: Stack(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.fromLTRB(15.0, 110.0, 0.0, 0.0),
                    child: Text('Hello',
                        style: TextStyle(
                            fontSize: 40.0, fontWeight: FontWeight.bold)),
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(16.0, 175.0, 0.0, 0.0),
                    child: Text('There',
                        style: TextStyle(
                            fontSize: 40.0, fontWeight: FontWeight.bold)),
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(130.0, 175.0, 0.0, 0.0),
                    child: Text('.',
                        style: TextStyle(
                            fontSize: 40.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.green)),
                  )
                ],
              ),
            ),
            Container(
                padding: EdgeInsets.only(top: 25.0, left: 20.0, right: 20.0),
                child: Column(
                  children: <Widget>[
                    new TextFormField(
                          validator: (input){
                              EmailFieldValidator.validate(input);
                          },
                          onSaved: (input) => _email = input,
                          keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                          labelText: 'EMAIL',
                          labelStyle: TextStyle(
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.bold,
                              color: Colors.grey),
                          focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.green))),
                    ),
                    SizedBox(height: 20.0),
                    new TextFormField(
                          validator: (input){
                            PasswordFieldValidator.validate(input);
                          },
                          onSaved: (input) => _password    = input,
                          keyboardType: TextInputType.text,
                            decoration: InputDecoration(
                           suffixIcon: IconButton(icon: new Icon(Icons.remove_red_eye),onPressed: _ChangeText ,color: Colors.grey,),
                          labelText: 'PASSWORD',
                          labelStyle: TextStyle(
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.bold,
                              color: Colors.grey),
                          focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.green))),
                      obscureText: obsureTextValue,
                    ),
                    SizedBox(height: 5.0),
                    Container(
                      alignment: Alignment(1.0, 0.0),
                      padding: EdgeInsets.only(top: 15.0, left: 20.0),
                      child: InkWell(
                        child: Text(
                          'Forgot Password',
                          style: TextStyle(
                              color: Colors.green,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Montserrat',
                              decoration: TextDecoration.underline),
                        ),
                      ),
                    ),
                    SizedBox(height: 40.0),
                    Container(
                      height: 40.0,
                      child: Material(
                        borderRadius: BorderRadius.circular(20.0),
                        shadowColor: Colors.greenAccent,
                        color: Colors.green,
                        elevation: 7.0,
                        child: GestureDetector(
                          onTap: validateAndSubmit,
                          child: Center(
                            child: Text(
                              'LOGIN',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Montserrat'),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 20.0),
                                    ],
                )
                ),
            SizedBox(height: 15.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'New to Apparel ?',
                  style: TextStyle(fontFamily: 'Montserrat'),
                ),
                SizedBox(width: 5.0),
                InkWell(
                  onTap: moveToSignUp,
                  child: Text(
                    'Register',
                    style: TextStyle(
                        color: Colors.green,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.bold,
                        decoration: TextDecoration.underline),
                  ),
                )
              ],
            )
          ],
        )




          ],
        ) 
        
    );
  }
}
class EmailFieldValidator{
  static String validate(String input){
    if(input.isEmpty){
      return 'Please Type an Email.';
    } else {
      return null;
    }
  }
}
class PasswordFieldValidator{
  static String validate(String input){
    if (input.length < 6) {
      return 'Password length should be greater than 6.';
    } else {
      return null;
    }
  }
}