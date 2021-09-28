import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:yazan_project/ui/screen/sign_up_screen.dart';
import 'package:yazan_project/ui/widgets/custom_text_field.dart';
import 'package:yazan_project/ui/widgets/welcome_button.dart';

import 'home_screen.dart';

class SignInScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        physics: NeverScrollableScrollPhysics(),
        child: Stack(
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
                      height: 0,
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
                        CustomTextField(
                          title: 'البريد الاكتروني',
                          icon: Icon(Icons.mail),
                          hiddenText: false,
                          keyboardType: TextInputType.emailAddress,
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        CustomTextField(
                          title: 'كلمة المرور',
                          icon: Icon(Icons.lock),
                          hiddenText: true,
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        WelcomeButton(
                          title: 'تسجيل الدخول',
                          textColor: Colors.white,
                          buttonColor: MaterialStateProperty.all(
                              Theme.of(context).primaryColor),
                          onpress: () {
                            Get.to(() => HomeScreen());
                          },
                        ),
                        SizedBox(
                          height: 25,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            TextButton(
                                onPressed: () {
                                  Get.to(() => SignUpScreen());
                                },
                                child: Text('أنقر هنا لإنشاء حساب')),
                            Text('لا تملك حساب؟'),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
