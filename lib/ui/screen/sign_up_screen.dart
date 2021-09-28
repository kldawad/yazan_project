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
                      height: 35,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.mail,
                          size: 50,
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Icon(
                          Icons.mail,
                          size: 50,
                        ),
                      ],
                    ),
                    Divider(
                      height: 20,
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
