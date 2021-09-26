import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:yazan_project/ui/screen/home_screen.dart';
import 'package:yazan_project/ui/widgets/custom_text_field.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF18141F),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  SizedBox(
                    height: 410,
                  ),
                  Center(
                    child: Text(
                      'تسجيل الدخول',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  CustomTextField(
                    title: 'البريد الإلكتروني',
                    keyboardType: TextInputType.emailAddress,
                    hiddenText: false,
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  CustomTextField(
                    title: 'كلمة المرور',
                    hiddenText: true,
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Center(
                    child: ElevatedButton(
                      style: ButtonStyle(
                        elevation: MaterialStateProperty.all(10),
                        shadowColor: MaterialStateProperty.all(
                          Color(0xFF828497),
                        ),
                        backgroundColor: MaterialStateProperty.all(
                          Color(0xFF74120C),
                        ),
                        shape: MaterialStateProperty.all(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                      ),
                      onPressed: () {
                        Get.to(() => HomeScreen());
                      },
                      child: Container(
                        padding: EdgeInsets.fromLTRB(30, 10, 30, 10),
                        child: Text(
                          'تسجيل الدخول',
                          style: TextStyle(
                            fontSize: 20,
                            color: Color(0xFF828497),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextButton(
                        onPressed: () {},
                        style: ButtonStyle(),
                        child: Text(
                          'أنقر هنا لإنشاء حساب جديد',
                          style: TextStyle(
                            color: Color(0xFF828497),
                          ),
                        ),
                      ),
                      Text(
                        'لا تملك حساب؟ ',
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  )
                ],
              ),
            ),
            Positioned(
              top: 100,
              left: 50,
              child: Icon(
                Icons.circle_rounded,
                color: Colors.white,
                size: 100,
              ),
            ),
            Positioned(
              right: -100,
              top: 50,
              width: 400,
              height: 400,
              child: Image.asset('assets/1.png'),
            ),
            Positioned(
              height: 50,
              width: MediaQuery.of(context).size.width,
              top: 360,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: Divider(
                  thickness: 2,
                  color: Color(0xFF74120C),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
