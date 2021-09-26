import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF18141F),
      body: Stack(
        children: [
          Container(
            height: 450,
            decoration: BoxDecoration(
              color: Color(0xFF74120C),
              borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(100),
                  bottomLeft: Radius.circular(100)),
            ),
          ),
          Column(
            children: [
              SizedBox(
                height: 30,
              ),
              Image.asset('assets/1.png'),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 50),
                child: Container(
                  height: 260,
                  width: 500,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Color(0xFF74120C),
                        offset: Offset(2, 6),
                        spreadRadius: 1,
                        blurRadius: 6,
                      ),
                    ],
                    color: Color(0xFF828497),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: 15,
                        ),
                        CircleAvatar(
                          backgroundColor: Color(0xFF74120C),
                          radius: 40,
                        ),
                        Text(
                          'الأستاذ يزن العقرباوي',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'مدرس مادة الرياضيات الادبي و الفندقي',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 10,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Divider(
                          color: Color(0xFF828497),
                          height: 25,
                          indent: 25,
                          endIndent: 25,
                        ),
                        Text(
                          'خبرة ٩ سنوات في تدريس مادة التوجيهي و خبرة ٥ سنوات في تدريس مادة الاونلاين على موقع وتد مدرس في عدة مدارس و مراكز ثقافية دورات علمية و أكاديمية في طريقة إيصال المعلومة و التواصل مع الطلاب و أساليب تدريس الرياضيات',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 10,
                            fontWeight: FontWeight.bold,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              GridView.count(
                padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                children: [
                  Container(
                    height: 800,
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      elevation: 5,
                      shadowColor: Color(0xFF828497),
                      margin: EdgeInsets.all(10),
                      child: Image.network(
                        'https://placeimg.com/640/480/any',
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  Container(
                    height: 800,
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      elevation: 5,
                      shadowColor: Color(0xFF828497),
                      margin: EdgeInsets.all(10),
                      child: Image.network(
                        'https://placeimg.com/640/480/any',
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  Container(
                    height: 800,
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      elevation: 5,
                      shadowColor: Color(0xFF828497),
                      margin: EdgeInsets.all(10),
                      child: Image.network(
                        'https://placeimg.com/640/480/any',
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  Container(
                    height: 800,
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      elevation: 5,
                      shadowColor: Color(0xFF828497),
                      margin: EdgeInsets.all(10),
                      child: Image.network(
                        'https://placeimg.com/640/480/any',
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          Positioned(
            top: -30,
            left: -30,
            child: CircleAvatar(
              radius: 75,
              backgroundColor: Color(0xFF828497),
              child: Column(
                children: [
                  SizedBox(
                    height: 75,
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.menu,
                      size: 40,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
