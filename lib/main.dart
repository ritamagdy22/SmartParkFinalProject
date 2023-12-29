import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smartpark/Book_Now/Book_Now.dart';
import 'package:smartpark/Book_Now/Parking_Details.dart';
import 'package:smartpark/ForgetPassword/Forget_password_PhoneNumber.dart';
import 'package:smartpark/RegisterScreen/BookAndPay.dart';
import 'package:smartpark/RegisterScreen/ExtendParking.dart';
import 'package:smartpark/RegisterScreen/ParkingPlaces.dart';
import 'package:smartpark/RegisterScreen/WelcomeScreen.dart';
import 'package:smartpark/SplashScreen/SplashScreen.dart';
import 'ForgetPassword/Classes/FinalView.dart';
import 'UI/Fill_Your_Information.dart';
import 'UI/ForgetPassword.dart';
import 'UI/LoginScreen.dart';
import 'package:google_fonts/google_fonts.dart';


import 'UI/Fill_Your_Information.dart';
import 'UI/ForgetPassword.dart';
import 'UI/LoginScreen.dart';

void main(){
runApp(MyApp());
}
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: SplashScreen.routename,
      theme: ThemeData(
        textTheme: TextTheme(
          headline1: GoogleFonts.ubuntu(
            fontSize: 25,
            fontWeight: FontWeight.w400,
            color: Colors.black,
          ),
          headline2: GoogleFonts.ubuntu(
            fontSize: 22,
            fontWeight: FontWeight.w500,
            color: Colors.black,
          ),
          headline3: GoogleFonts.ubuntu(
            fontSize: 15,
            fontWeight: FontWeight.w400,
            color: Colors.grey,
          ),
          headline4: GoogleFonts.ubuntu(
            fontSize: 18,
            fontWeight: FontWeight.w500,
            color: Colors.black,
          ),
          headline5: GoogleFonts.ubuntu(
            fontSize: 18,
            fontWeight: FontWeight.w500,
            color: Colors.deepPurpleAccent,
          ),
          subtitle1: GoogleFonts.ubuntu(
            fontSize: 15,
            fontWeight: FontWeight.w500,
            color: Colors.deepPurpleAccent,
          ),
        ),
      ),
      home: FinalView(),

      routes: {
        SplashScreen.routename:(context)=>SplashScreen(),
        WelcomeScreen.RouteName:(context)=>WelcomeScreen(),
        ParkingPlaces.RouteName:(context)=>ParkingPlaces(),
        BookAndPay.RouteName:(context)=>BookAndPay(),
        ExtendParking.RouteName:(context)=>ExtendParking(),
        LoginScreen.RouteName:(context)=>LoginScreen(),
        ForgetPAssword.RouteName:(context)=>ForgetPAssword(),
        ForgetPasswordByPhoneNumber.routename:(context)=>ForgetPasswordByPhoneNumber(),
        FillYourInformation.RouteName:(context)=>FillYourInformation(),
        BookNow.routename:(context)=>BookNow(),
        ParkingDetails.routename:(context)=>ParkingDetails()


      },



    );
  }
}

//        FillYourInformation.RouteName:(context)=>SignInScreen(),