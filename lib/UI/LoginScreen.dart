import 'package:flutter/material.dart';
import 'package:smart_parking_final/Book_Now/Book_Now.dart';
import 'package:smart_parking_final/widget/Custom_Button.dart';
import '../ForgetPassword/Forget_password_PhoneNumber.dart';
import '../widget/Form_Label_Widget.dart';
import '../widget/custom_Text_FormField.dart';
import 'Fill_Your_Information.dart';
import 'ForgetPassword.dart';
import 'package:google_sign_in/google_sign_in.dart';

class LoginScreen extends StatefulWidget {
  // static const RouteName = "LoginScreen";

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();
  final formkey = GlobalKey<FormState>();

  GoogleSignIn googleSignIn = GoogleSignIn(
    scopes: <String>[
      'email',
      'https://www.googleapis.com/auth/contacts.readonly',
    ],
  );

  Future<void> _handleGoogleSignIn() async {
    try {
      await googleSignIn.signIn();
      // After signing in, perform actions or navigate to relevant screens
    } catch (error) {
      print('Google Sign-In error: $error');
    }
  }

  @override
  Widget build(BuildContext context) {
    MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.black),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context)
                .pop(); // Handle the action when the back arrow is pressed
          },
        ),
      ),
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 12),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18.0, vertical: 18),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 10,
                ),
                Image.asset('assets/images/LoginText.png',
                    alignment: Alignment.center),
                const SizedBox(
                  height: 30,
                ),
                FormLabelWidget(Label: "Email Address"),
                const SizedBox(
                  height: 10,
                  width: 10,
                ),
                CustomTextFormField(
                    Type: TextInputType.emailAddress,
                    validator: (text) {
                      if (text == null || text.trim().isEmpty) {
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
                const SizedBox(
                  height: 20,
                  width: 10,
                ),
                FormLabelWidget(Label: "Password"),
                const SizedBox(
                  height: 10,
                  width: 10,
                ),
                CustomTextFormField(
                    Type: TextInputType.visiblePassword,
                    validator: (text) {
                      if (text == null || text.trim().isEmpty) {
                        return "Please Enter your Password";
                      }
                      if (text.length < 6) {
                        return " Phone number must be more than 6 charc.";
                      }
                    },
                    controller: passwordcontroller,
                    hintText: "Please Enter your Password"),
                const SizedBox(
                  height: 20,
                  width: 10,
                ),
                CustomButton(
                    title: "Login",
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const BookNow(),
                          ));
                    }),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ForgetPasswordByPhoneNumber(),
                          ));
                    },
                    child: const Text("Forget Password ?"),
                  ),
                ),
                Row(
                  children: [
                    const Text('Does not have account?'),
                    TextButton(
                      child: const Text(
                        'Sign up',
                        style: TextStyle(fontSize: 20, color: Colors.red),
                      ),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => FillYourInformation(),
                            ));
                      },
                    )
                  ],
                  mainAxisAlignment: MainAxisAlignment.center,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // need google sign in image not text
                    ElevatedButton(
                      onPressed: _handleGoogleSignIn,
                      child: const Text('Google'),
                    ),

                    const SizedBox(width: 10),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
