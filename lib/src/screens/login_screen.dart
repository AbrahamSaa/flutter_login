import 'package:flutter/material.dart';
import '../mixins/validation_mixin.dart';

class LoginScreen extends StatefulWidget {
  
  createState() {
    // TODO: implement createState
    return LoginScreenState();
  }
}

class LoginScreenState extends State<LoginScreen> with validationMixin{
  final formKey = GlobalKey<FormState>();

  String email;
  String password;

  Widget build(context) {
    return Container(
      margin:EdgeInsets.all(20.0),
      child:Form(
        key: formKey,
        child: Column(
          children: <Widget>[
              emailField(),
              passwordField(),
              Container(margin: EdgeInsets.only(top: 25)),
              submitButton()
          ],
        ),
      ),
    );
  }

  Widget emailField(){
    return TextFormField(
      decoration: InputDecoration(
        labelText: 'Email',
        hintText: 'test@test.com'
      ),
      keyboardType: TextInputType.emailAddress,
      validator: validateEmail,

      onSaved: (String val){
        email = val;
      },
    );
  }

  Widget passwordField(){

    return TextFormField(
      
      obscureText: true,
      decoration: InputDecoration(
        labelText: 'Password',
        hintText: 'password'
      ),

      validator: validatePass,

      onSaved: (String val){
        password = val;
      },
      
    );

  }

  Widget submitButton(){
      return RaisedButton(
        child: Text(
          'Submit', 
          style: TextStyle(
            color: Colors.white
          )
        ),
        onPressed: ()  {
          if(formKey.currentState.validate()){
            formKey.currentState.save();

            print('Your $email and $password');
          }
          
        },
        color: Colors.blueAccent,
      );

  }
}