import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:yazan_project/ui/screen/sign_in_screen.dart';
import 'package:yazan_project/ui/screen/sign_up_screen.dart';
import 'package:yazan_project/ui/widgets/welcome_button.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Positioned(
            top: 0,
            left: 0,
            child: Image.asset('assets/main_top.png',
                width: MediaQuery.of(context).size.width * 0.45),
          ),
          Padding(
            padding: EdgeInsets.only(top: 100, bottom: 50),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    height: 50,
                  ),
                  Image.asset('assets/sign_in.png'),
                  SizedBox(
                    height: 35,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 50,
                      ),
                      WelcomeButton(
                        title: 'تسجيل الدخول',
                        textColor: Colors.white,
                        buttonColor: MaterialStateProperty.all(
                            Theme.of(context).primaryColor),
                        onpress: () {
                          Get.to(() => SignInScreen());
                        },
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      WelcomeButton(
                        title: 'إنشاء حساب',
                        textColor: Colors.black,
                        buttonColor: MaterialStateProperty.all(
                            Theme.of(context).canvasColor),
                        onpress: () {
                          Get.to(SignUpScreen());
                        },
                      ),
                      SizedBox(
                        height: 70,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            child: Image.asset('assets/main_bottom.png',
                width: MediaQuery.of(context).size.width * 0.2),
          ),
        ],
      ),
    );
  }
}

// Container(
// height: 350,
// width: 300,
// decoration: BoxDecoration(
// color: Theme.of(context).primaryColor,
// borderRadius: BorderRadius.circular(60),
// border: Border.all(
// color: Theme.of(context).backgroundColor,
// width: 5)),
// child: Column(
// mainAxisAlignment: MainAxisAlignment.center,
// children: [
// Container(
// height: 80,
// child: Image.asset('assets/logo.png'),
// ),
// Container(
// height: 50,
// ),
// WelcomeButton(
// title: 'تسجيل الدخول',
// onpress: () {
// Get.to(() => HomeScreen());
// },
// ),
// SizedBox(
// height: 20,
// ),
// WelcomeButton(
// title: 'إنشاء حساب',
// onpress: () {},
// ),
// ],
// ),
// ),
