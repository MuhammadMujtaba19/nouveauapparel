import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:hello_world_app/Login/Login.dart';
import 'package:hello_world_app/Login/Authentication.dart';


class SignupPage extends StatefulWidget {

   final BaseAuth auth;
  SignupPage({this.auth});

  @override
  _SignupPageState createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
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

  String _fullName;
  String _email;
  String _password;
  String _phoneNum;


  final _formKey = new GlobalKey<FormState>();
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  FirebaseDatabase database = FirebaseDatabase.instance;


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
      try {
        
        String userId = await widget.auth. createUserWithEmailAndPassword(_email, _password);
        print(userId.toString());
        print("User created " + userId);
        database.reference().child('Users').child(userId).set({
          "Full Name": _fullName,
          "Email" : _email,
          "Phone" : _phoneNum,
        });

        Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage()));
      }
      catch (e){

        print("User not created " + e.toString());
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
        body:  new Form(
          key: _formKey,
          child: Column(
          crossAxisAlignment: CrossAxisAlignment.start, children: <
            Widget>[
          Container(
            child: Stack(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.fromLTRB(15.0, 70.0, 0.0, 0.0),
                  child: Text(
                    'Signup',
                    style:
                        TextStyle(fontSize: 40.0, fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(150.0, 40.0, 0, 0.0),
                  child: Text(
                    '.',
                    style: TextStyle(
                        fontSize: 80.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.green),
                  ),
                )
              ],
            ),
          ),
          Container(
              padding: EdgeInsets.only(top: 25.0, left: 20.0, right: 20.0),
              child: Column(
                children: <Widget>[
                  TextFormField(
                    keyboardType: TextInputType.text,
                    validator: (input) => input.isEmpty ? 'Name cannot be empty' : null,
                      onSaved: (input) => _fullName= input,
                    decoration: InputDecoration(
                      labelText: 'FULL NAME ',
                        labelStyle: TextStyle(
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.bold,
                            color: Colors.grey),
                        focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.green))),
                        
                        
                  ),
                  SizedBox(height: 10.0),
                  TextFormField(
                    keyboardType: TextInputType.emailAddress,
                      validator: (input) => input.isEmpty ? 'Email cannot be empty' : null,
                      onSaved: (input) => _email= input,
                    decoration: InputDecoration(
                        labelText: 'EMAIL',
                        labelStyle: TextStyle(
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.bold,
                            color: Colors.grey),
                        // hintText: 'EMAIL',
                        // hintStyle: ,
                        focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.green))),
                  ),
                  SizedBox(height: 10.0),
                  TextFormField(
                    keyboardType: TextInputType.text,
                      validator: (input) => input.isEmpty ? 'Password cannot be empty' : null,
                      onSaved: (input) => _password = input,
                    decoration: InputDecoration(
                        suffixIcon: IconButton(icon: new Icon(Icons.remove_red_eye),onPressed: _ChangeText ,color: Colors.grey,),
                        
                        labelText: 'PASSWORD ',
                        labelStyle: TextStyle(
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.bold,
                            color: Colors.grey),
                        focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.green))),
                            
                    obscureText: obsureTextValue,
                  ),
                  SizedBox(height: 10.0),
                  TextFormField(
                    keyboardType: TextInputType.text,
                      validator: (input) => input.isEmpty ? 'Phone Number cannot be empty' : null,
                      onSaved: (input) => _phoneNum = input,
                    decoration: InputDecoration(
                        
                        labelText: 'PHONE NO.',
                        labelStyle: TextStyle(
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.bold,
                            color: Colors.grey),
                        focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.green))),
                  ),
                  SizedBox(height: 50.0),

              GestureDetector(
                          onTap: validateAndSubmit,
                          child:  Container(
                      height: 40.0,
                      child: Material(
                        borderRadius: BorderRadius.circular(20.0),
                        shadowColor: Colors.greenAccent,
                        color: Colors.green,
                        elevation: 7.0,
                     
                          child: Center(
                            child: Text(
                              'SIGNUP',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Montserrat'),
                            ),
                          ),
                      
                      )),
                          )
                 
                  
                ],
              )
              ),
          // SizedBox(height: 15.0),
          // Row(
          //   mainAxisAlignment: MainAxisAlignment.center,
          //   children: <Widget>[
          //     Text(
          //       'New to Spotify?',
          //       style: TextStyle(
          //         fontFamily: 'Montserrat',
          //       ),
          //     ),
          //     SizedBox(width: 5.0),
          //     InkWell(
          //       child: Text('Register',
          //           style: TextStyle(
          //               color: Colors.green,
          //               fontFamily: 'Montserrat',
          //               fontWeight: FontWeight.bold,
          //               decoration: TextDecoration.underline)),
          //     )
          //   ],
          // )
        ]
        ) 
          ,)
        
        );
  }
}