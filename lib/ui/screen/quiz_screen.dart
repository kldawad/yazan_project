import 'package:flutter/material.dart';

class QuizScreen extends StatefulWidget {
  @override
  _QuizScreenState createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  List<Map<dynamic, dynamic>> quiz = [
    {
      'id': 1,
      'question':
          'https://ams3.digitaloceanspaces.com/files-watad-me/uploads/2019/12/1-2.jpg',
      'options': ['أ', 'ب', 'ج', 'د', 'ه'],
      'correctAnswer': 'ب',
    },
    {
      'id': 2,
      'question':
          'https://ams3.digitaloceanspaces.com/files-watad-me/uploads/2019/12/2-2.jpg',
      'options': ['أ', 'ب', 'ج', 'د'],
      'correctAnswer': 'c',
    },
    {
      'id': 3,
      "question":
          'https://ams3.digitaloceanspaces.com/files-watad-me/uploads/2019/12/3-2.jpg',
      'options': ['أ', 'ب', 'ج', 'د'],
      'correctAnswer': 'c',
    },
    {
      'id': 4,
      "question":
          "https://ams3.digitaloceanspaces.com/files-watad-me/uploads/2019/12/7-2.jpg",
      "options": ["أ", "ب", "ج", "د"],
      "correctAnswer": "c",
    },
  ];

  int? value;
  int count = 0;

  final PageController controller = PageController(initialPage: 0);

  Widget getRadio() {
    int number = 0;
    print(number);
    return Radio(
      value: number + 2,
      groupValue: value,
      onChanged: (ind) {
        print(number);
        setState(() {
          value = ind as int?;
        });
      },
    );
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 100,
            ),
            Padding(
              padding: EdgeInsets.only(right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    "${quiz.length}/",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                    ),
                  ),
                  Text(
                    '${quiz[count]['id']}',
                    style: TextStyle(
                      fontSize: 40,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    'سؤال رقم',
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            Divider(
              color: Colors.white,
              indent: 100,
              endIndent: 20,
              height: 20,
            ),
            SizedBox(
              height: 20,
            ),
            Container(
                height: 500,
                width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.fromLTRB(20, 0, 20, 20),
                padding: EdgeInsets.fromLTRB(20, 0, 20, 20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(50),
                ),
                child: PageView.builder(
                    onPageChanged: (value) {
                      setState(() {});
                    },
                    physics: NeverScrollableScrollPhysics(),
                    controller: controller,
                    reverse: true,
                    itemCount: quiz.length,
                    itemBuilder: (context, index) {
                      return Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            child: Image.network(
                              quiz[index]['question'],
                            ),
                          ),
                          ListView.builder(
                              physics: NeverScrollableScrollPhysics(),
                              shrinkWrap: true,
                              itemCount: quiz[index]['options'].length,
                              itemBuilder: (context, number) {
                                return Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Text(quiz[index]['options'][number]),
                                    Radio(
                                      value: number,
                                      groupValue: value,
                                      onChanged: (ind) {
                                        print(number);
                                        setState(() {
                                          value = ind as int?;
                                        });
                                      },
                                    ),
                                  ],
                                );
                              })
                        ],
                      );
                    })),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    setState(() {
                      count++;
                      value = null;
                    });

                    controller.nextPage(
                        duration: Duration(seconds: 1), curve: Curves.ease);
                  },
                  child: Container(
                    height: 80,
                    width: 150,
                    decoration: BoxDecoration(
                      color: Theme.of(context).backgroundColor,
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: Center(
                      child: Text(
                        'السؤال التالي',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      count--;
                    });

                    print(value);
                    controller.previousPage(
                        duration: Duration(seconds: 1), curve: Curves.ease);
                  },
                  child: Container(
                    height: 80,
                    width: 150,
                    decoration: BoxDecoration(
                      color: Theme.of(context).accentColor,
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: Center(
                      child: Text(
                        'السؤال السابق',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
