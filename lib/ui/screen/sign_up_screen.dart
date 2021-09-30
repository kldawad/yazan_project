import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:yazan_project/ui/screen/home_screen.dart';
import 'package:yazan_project/ui/screen/sign_in_screen.dart';
import 'package:yazan_project/ui/widgets/custom_text_field.dart';
import 'package:yazan_project/ui/widgets/welcome_button.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
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
                    Image.asset('assets/sign_in.png'),
                    SizedBox(
                      height: 50,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 50,
                          width: 180,
                          decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Google',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 20),
                                ),
                                Icon(
                                  EvaIcons.google,
                                  size: 40,
                                  color: Colors.white,
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          height: 50,
                          width: 180,
                          decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Facebook',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 20),
                                ),
                                CircleAvatar(
                                  backgroundColor: Colors.white,
                                  child: Icon(
                                    EvaIcons.facebook,
                                    size: 40,
                                    color: Colors.blue,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    Divider(
                      height: 50,
                      thickness: 2,
                      indent: 70,
                      endIndent: 70,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CustomTextField(
                          title: 'البريد الاكتروني',
                          hiddenText: false,
                          keyboardType: TextInputType.emailAddress,
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        CustomTextField(
                          title: 'كلمة المرور',
                          hiddenText: true,
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        CustomTextField(
                          title: 'تأكيد كلمة المرور',
                          hiddenText: true,
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        CustomTextField(
                          title: 'إسم المستخدم',
                          hiddenText: true,
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        CustomTextField(
                          title: 'الأسم الأول',
                          hiddenText: true,
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        CustomTextField(
                          title: 'إسم العائلة',
                          hiddenText: true,
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        CustomTextField(
                          title: 'رقم الهاتف',
                          hiddenText: true,
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        WelcomeButton(
                          title: 'إنشاء حساب',
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
                                  Get.to(() => SignInScreen());
                                },
                                child: Text('أنقر هنا لتسجيل الدخول')),
                            Text(' هل تملك حساب بالفعل؟'),
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
