import 'package:flutter/material.dart';
import 'package:smart_parking_final/Book_Now/Book_Now.dart';
import 'package:smart_parking_final/ForgetPassword/Forget_password_PhoneNumber.dart';
import 'package:smart_parking_final/UI/LoginScreen.dart';
import 'package:smart_parking_final/widget/Custom_Button.dart';

import '../widget/AppBarDetails.dart';

class ForgetPAssword extends StatelessWidget {
  static const RouteName = "ForgetPassword";

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: appBarWidget(context:context),
      body: Builder(builder: (context) {
        return Container(
          margin: const EdgeInsets.symmetric(horizontal: 12),
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(top: 30),
              ),
              Padding(
                padding: const EdgeInsets.all(50.0),
                child: Image.asset('assets/images/ForgetPassword.png'),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                // Add horizontal padding
                child: Text(
                  "Select which Contact Details we have to use to reset your Password",
                  style: TextStyle(
                    fontSize: 16, // Adjust the font size if needed
                  ),
                ),
              ),
              SizedBox(width: 25, height: 25),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: 20), // Adjust horizontal padding as needed
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context)
                        .pushNamed(ForgetPasswordByPhoneNumber.routename);
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.white60),
                    minimumSize: MaterialStateProperty.all(Size(350, 70)),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Icon(
                        Icons.phone, // Replace with your desired icon
                        color: Colors.black87,
                        size: 20,
                      ),
                      SizedBox(width: 10), // Adjust the width as needed
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Reset by phone number",
                            style: TextStyle(
                              color: Colors.black87,
                              fontSize: 15,
                            ),
                          ),
                          SizedBox(height: 5), // Adjust the height for spacing
                          Text(
                            "0122 - - - - 389",
                            style: TextStyle(
                              color: Colors.black87,
                              fontSize: 15,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(width: 25, height: 25),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: 20), // Adjust horizontal padding as needed
                child: ElevatedButton(
                  onPressed: () {
                    // email
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.white60),
                    minimumSize: MaterialStateProperty.all(Size(350, 70)),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Icon(
                        Icons.email, // Replace with your desired icon
                        color: Colors.black87,
                        size: 20,
                      ),
                      SizedBox(width: 10), // Adjust the width as needed
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Reset by Email address",
                            style: TextStyle(
                              color: Colors.black87,
                              fontSize: 15,
                            ),
                          ),
                          SizedBox(height: 5), // Adjust the height for spacing
                          Text(
                            "AHmedYounis-----@gmail.com",
                            style: TextStyle(
                              color: Colors.black87,
                              fontSize: 15,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              const Spacer(
                flex: 10,
              ),
              Padding(
                  padding: EdgeInsets.only(left: 20, right: 220),
                  // Adjust the left padding as needed
                  child: CustomButton(
                      title: "Continue",
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => LoginScreen(),
                            ));
                      }))
            ],
          ),
        );
      }),
    );
  }
}
/*
ElevatedButton(
                    onPressed: () {
                    },
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.black87),
                      minimumSize: MaterialStateProperty.all(Size(70,70)),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0), // Adjust the value as needed
                        ),
                      ),


                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,

                      children: [
                        Text("Continue",style: TextStyle(
                          fontSize: 20
                        ),
                        ),
                      ],
                    ),
                  ),
 */
