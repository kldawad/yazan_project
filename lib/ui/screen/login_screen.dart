import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF18141F),
      body: Stack(
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
                Padding(
                  padding: EdgeInsets.only(right: 30),
                  child: Text(
                    'البريد الإلكتروني',
                    style: TextStyle(
                      color: Color(0xFF74120C),
                      fontSize: 20,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 20, left: 20),
                  child: TextField(
                    onChanged: (value) {},
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Padding(
                  padding: EdgeInsets.only(right: 20),
                  child: Text(
                    'كلمة المرور',
                    style: TextStyle(
                      color: Color(0xFF74120C),
                      fontSize: 20,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 20, left: 20),
                  child: TextField(
                    onChanged: (value) {},
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Center(
                  child: ElevatedButton(
                    style: ButtonStyle(
                      elevation: MaterialStateProperty.all(10),
                      shadowColor: MaterialStateProperty.all(Color(0xFF74120C)),
                      backgroundColor: MaterialStateProperty.all(
                        Color(0xFF828497),
                      ),
                      shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                    ),
                    onPressed: () {},
                    child: Container(
                      padding: EdgeInsets.fromLTRB(30, 10, 30, 10),
                      child: Text(
                        'تسجيل الدخول',
                        style: TextStyle(
                          fontSize: 20,
                          color: Color(0xFF74120C),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
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
    );
  }
}
