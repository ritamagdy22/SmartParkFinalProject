import 'package:flutter/material.dart';
import 'package:smartpark/widget/Custom_Button.dart';
import '../widget/Form_Label_Widget.dart';
import '../widget/custom_Text_FormField.dart';
import 'Fill_Your_Information.dart';
import 'ForgetPassword.dart';

class LoginScreen extends StatefulWidget {
  static const RouteName = "LoginScreen";


  @override
  State<LoginScreen> createState() => _LoginScreenState();
}
class _LoginScreenState extends State<LoginScreen> {

  TextEditingController emailcontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();
  final formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {

    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.black),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context)
                .pop(); // Handle the action when the back arrow is pressed
          },
        ),
      ),
      body: Container(

        margin: const EdgeInsets.symmetric(horizontal: 12),
        width: size.width,
        height: size.height,
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
              SizedBox(height: 10, width: 10,),
            Image.asset('assets/images/LoginText.png'),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: SingleChildScrollView(
                    child: Form(
                      key: formkey,
                      child: Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                          SizedBox(height: 30, width: 10,),
                        FormLabelWidget(Label: "Email Address"),
                        SizedBox(height: 10, width: 10,),
                        CustomTextFormField(
                            Type: TextInputType.emailAddress,
                            validator: (text) {
                              if (text == null || text
                                  .trim()
                                  .isEmpty) {
                                return "Please Enter your Email";
                              }
                              var emailvalid = RegExp(
                                  r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                                  .hasMatch(text);
                              if (!emailvalid) {
                                return "Email not valid";
                              }
                            },
                            controller: emailcontroller,
                            hintText: "Please Enter Your Email"),
                        SizedBox(height: 20, width: 10,),
                        FormLabelWidget(Label: "Password"),
                        SizedBox(height: 10, width: 10,),
                        CustomTextFormField(
                            Type: TextInputType.visiblePassword,
                            validator: (text) {
                              if (text == null || text
                                  .trim()
                                  .isEmpty) {
                                return "Please Enter your Password";
                              }
                              if (text.length < 6) {
                                return " Phone number must be more than 6 charc.";
                              }
                            },
                            controller: passwordcontroller,
                            hintText: "Please Enter your Password"),
                        SizedBox(height: 20, width: 10,),


                        CustomButton(title: "Login", onPressed: () {
                      Navigator.pushNamed(
                      context, FillYourInformation.RouteName);
                      },),


                        SizedBox(height: 20,),
                        Container(child: InkWell(
                          onTap: () {
                            Navigator.of(context).pushNamed(
                                ForgetPAssword.RouteName);
                          },
                          child: Text("Forget Password ?"),
                        ),),
                        Row(children: [
                           Text('Does not have account?'),
                          TextButton(
                            child:  Text(
                              'Sign up',
                              style: TextStyle(fontSize: 20,
                              color: Colors.red
                              ),
                            ),
                            onPressed: () {
                              Navigator.of(context).pushNamed(
                                  FillYourInformation.RouteName);
                            },

                          )
                        ],

                          mainAxisAlignment: MainAxisAlignment.center,

                        ),
                        ]
                      ),
                    )

                ),
              ),
            ),
          )
          ],
        ),
            ),),
      )
    ,
    );
  }
}


/*
onPressed: () {
                          Navigator.pushNamed(
                              context, FillYourInformation.RouteName);
                        },
 */

/*
 ElevatedButton(
                        onPressed: () {
                          Navigator.pushNamed(
                              context, FillYourInformation.RouteName);
                        },
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(
                              Colors.black),
                          minimumSize: MaterialStateProperty.all(
                              Size(370, 50)),
                        ),
                        child: Text('Login'),
                      ),
 */