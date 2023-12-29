
/*


import 'package:flutter/material.dart';
import 'package:smartpark/Login&Registeration_Screens/Fill_Your_Information.dart';

class SignInScreen extends StatefulWidget {
  static const RouteName = "SignInScreen";

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {

  String email = '';
  String password = '';
  String ConfirmPassword='';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.black),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 30),
          ),
          Padding(
            padding: const EdgeInsets.all(50.0),
            child: Image.asset('assets/images/SignUpText.png'),
          ),

          TextField(
            decoration: InputDecoration(
              labelText: 'Email',
              border:
              OutlineInputBorder(borderRadius: BorderRadius.circular(40)),
              labelStyle: TextStyle(
                fontWeight: FontWeight.bold, // Make the label text bold
                fontSize: 25, // Set the font size for the label
              ),
            ),
            onChanged: (value) {
              setState(() {
                email = value;
              });
            },
          ),
          SizedBox(
            height: 35,
          ),
          TextField(
            obscureText: true,
            decoration: InputDecoration(
              labelText: 'Password',
              border:
              OutlineInputBorder(borderRadius: BorderRadius.circular(40)),
              labelStyle: TextStyle(
                fontWeight: FontWeight.bold, // Make the label text bold
                fontSize: 25, // Set the font size for the label
              ),
            ),
            onChanged: (value) {
              setState(() {
                password = value;
              });
            },
          ),
          SizedBox(height: 30),
          TextField(
            obscureText: true,
            decoration: InputDecoration(
              labelText: 'Confirm Password',
              border:
              OutlineInputBorder(borderRadius: BorderRadius.circular(40)),
              labelStyle: TextStyle(
                fontWeight: FontWeight.bold, // Make the label text bold
                fontSize: 25, // Set the font size for the label
              ),
            ),
            onChanged: (value) {
              setState(() {
                password = value;
              });
            },
          ),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {

             Navigator.pushNamed(context, FillYourInformation.RouteName);

              // Perform login logic here using the email and password
              print('Email: $email, Password: $password');
            },
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.black),
              minimumSize: MaterialStateProperty.all(Size(370, 50)),
            ),
            child: Text('SignUp'),
          ),



        ],
      ),
    );
  }
}


 */