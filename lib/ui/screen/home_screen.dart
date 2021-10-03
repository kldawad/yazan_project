import 'package:flutter/material.dart';
import 'package:yazan_project/ui/screen/quiz_screen.dart';
import 'package:yazan_project/ui/widgets/custom_card.dart';
import 'package:yazan_project/ui/widgets/story_circle_avatar.dart';

// Todo: story shadow
// Todo: appBar appearance
// Todo: text Theme
// Todo: custom fonts and icons

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<String> names = ['khaled', 'rami', 'hosam', 'noha'];
  List<Color> colors = [
    Colors.teal,
    Colors.pink,
    Colors.yellow,
    Colors.green,
    Colors.blue,
    Colors.amber
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).accentColor,
      ),
      backgroundColor: Colors.white,
      drawer: Drawer(
        child: Column(
          children: [
            SizedBox(
              height: 100,
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text('Press Here'),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: 450,
                  decoration: BoxDecoration(
                    color: Theme.of(context).primaryColor,
                    borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(100),
                        bottomLeft: Radius.circular(100)),
                  ),
                ),
                Positioned(
                    top: -30,
                    right: -50,
                    child: CircleAvatar(
                      radius: 70,
                      backgroundColor: Colors.white,
                    )),
                Column(
                  children: [
                    Image.asset('assets/1.png'),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 50),
                      child: Container(
                        height: 260,
                        width: 500,
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              offset: Offset(0, 6),
                              spreadRadius: 1,
                              blurRadius: 6,
                            ),
                          ],
                          color: Theme.of(context).accentColor,
                          borderRadius: BorderRadius.circular(40),
                        ),
                        child: Padding(
                          padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                height: 50,
                                child: Image.asset('assets/logo.png'),
                              ),
                              Container(
                                height: 10,
                              ),
                              Text(
                                'الأستاذ يزن العقرباوي',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 25,
                                  fontFamily: 'Cairo',
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                'مدرس مادة الرياضيات الادبي و الفندقي',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12,
                                  fontFamily: 'Cairo',
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Divider(
                                height: 15,
                                indent: 25,
                                endIndent: 25,
                              ),
                              Text(
                                'خبرة ٩ سنوات في تدريس مادة التوجيهي و خبرة ٥ سنوات في تدريس مادة الاونلاين على موقع وتد مدرس في عدة مدارس و مراكز ثقافية دورات علمية و أكاديمية في طريقة إيصال المعلومة و التواصل مع الطلاب و أساليب تدريس الرياضيات',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 10,
                                  fontFamily: 'Cairo',
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
                  ],
                ),
              ],
            ),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(),
                    Padding(
                      padding: EdgeInsets.only(right: 20),
                      child: Text(
                        'القصص',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontFamily: 'Cairo',
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.end,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(width: 15),
                    StoryCircleAvatar(
                      image: NetworkImage(
                        'https://images.squarespace-cdn.com/content/v1/560a4c4be4b0774c42e0cd81/1443700257061-24DLQG9GZ1407VCVEVML/mansmiling.jpg?format=2500w',
                      ),
                    ),
                    SizedBox(width: 15),
                    StoryCircleAvatar(
                      image: NetworkImage(
                        'https://iso.500px.com/wp-content/uploads/2015/04/portraitist_cover.jpeg',
                      ),
                    ),
                    SizedBox(width: 15),
                    StoryCircleAvatar(
                      image: NetworkImage(
                          'https://media.istockphoto.com/photos/happy-laughing-man-picture-id544358212?k=20&m=544358212&s=612x612&w=0&h=aWtM7z1UWMKK7MNysUQZy5INHEnFfTevudKpQV10gGs='),
                    ),
                    SizedBox(width: 15),
                    StoryCircleAvatar(
                      image: NetworkImage(
                          'https://rimstechnology.com/wp-content/uploads/2015/08/photo-1438761681033-6461ffad8d80.jpg'),
                    ),
                    SizedBox(width: 15),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(),
                Padding(
                  padding: EdgeInsets.only(right: 20),
                  child: Text(
                    'الطلاب الأوائل',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontFamily: 'Cairo',
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.end,
                  ),
                ),
              ],
            ),
            Container(
              height: 300,
              child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: colors.length,
                  itemBuilder: (context, index) {
                    return Container(
                      margin:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                      height: 90,
                      width: 320,
                      decoration: BoxDecoration(
                          color: colors[index],
                          borderRadius: BorderRadius.circular(30),
                          boxShadow: [
                            BoxShadow(
                              offset: Offset(2, 3),
                              spreadRadius: 2,
                              blurRadius: 5,
                              color: Colors.black,
                            )
                          ]),
                      child: Padding(
                        padding: EdgeInsets.all(10),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                SizedBox(
                                  width: 10,
                                ),
                                Column(
                                  children: [
                                    Text(
                                      'علاء محمد',
                                      style: TextStyle(
                                          fontFamily: 'Cairo',
                                          color: Colors.white,
                                          fontSize: 30),
                                    ),
                                    Text(
                                      "المعدل: 99.2",
                                      style: TextStyle(
                                          fontFamily: 'Cairo',
                                          color: Colors.white,
                                          fontSize: 20),
                                    ),
                                  ],
                                ),
                                CircleAvatar(
                                  radius: 50,
                                  backgroundImage: NetworkImage(
                                    'https://i.pinimg.com/originals/35/97/e3/3597e3639c0ba51f2924f1b656dbe415.jpg',
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              """ ما شاء الله استاذ رائع ومتميز, جبت عندو علامة كاملة, بنصحكم فيه والنتائج كانت واضحة من امتحانات التجريبي ، كنت الأكثر تفوقا بالصيفي  والكل سألني عن السر ، وقلت بكل ثقة الاستاذ يزن العقرباوي""",
                              style: TextStyle(
                                fontFamily: 'Cairo',
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ),
                    );
                  }),
            ),
            Divider(
              height: 20,
              color: Theme.of(context).primaryColor,
              indent: 70,
              endIndent: 70,
              thickness: 2,
            ),
            GridView.count(
              childAspectRatio: 3 / 4,
              physics: NeverScrollableScrollPhysics(),
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
              crossAxisCount: 2,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              children: [
                CustomCard(
                    ontap: () {
                      Navigator.push(
                          context,
                          PageRouteBuilder(transitionsBuilder:
                              (context, animation, animationTime, child) {
                            animation = CurvedAnimation(
                                parent: animation, curve: Curves.fastOutSlowIn);
                            return ScaleTransition(
                              alignment: Alignment.center,
                              scale: animation,
                              child: child,
                            );
                          }, pageBuilder: (BuildContext context,
                              Animation<double> animation,
                              Animation<double> secondaryAnimation) {
                            return QuizScreen();
                          }));
                    },
                    title: 'إمتحانات محوسبة',
                    url:
                        'https://images.all-free-download.com/images/graphiclarge/student_background_studying_woman_sketch_cartoon_sketch_6843822.jpg'),
                CustomCard(
                    title: 'الدوسية',
                    url:
                        'https://thumbs.dreamstime.com/z/education-knowledge-mathematics-science-concept-tiny-male-character-learning-stationery-college-university-student-175865628.jpg'),
                CustomCard(
                    title: 'المراكز الثقافية',
                    url:
                        'https://image.shutterstock.com/shutterstock/photos/2025641873/display_1500/stock-vector-creative-ideas-and-technologies-concept-young-smiling-woman-female-character-going-with-laptop-2025641873.jpg'),
                CustomCard(
                    title: 'الدروس المجانية',
                    url:
                        'https://image.shutterstock.com/shutterstock/photos/2025641876/display_1500/stock-vector-great-creative-idea-and-innovation-concept-young-smiling-woman-cartoon-character-standing-showing-2025641876.jpg'),
              ],
            ),
            Divider(
              height: 20,
              color: Theme.of(context).primaryColor,
              indent: 70,
              endIndent: 70,
              thickness: 2,
            ),
          ],
        ),
      ),
    );
  }
}
