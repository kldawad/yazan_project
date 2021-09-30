import 'package:flutter/material.dart';

enum QuestionNum { question0, question1, question2, question3 }

class QuizScreen extends StatefulWidget {
  @override
  _QuizScreenState createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  QuestionNum? _questionNum;

  List<Map<dynamic, dynamic>> quiz = [
    {
      'question':
          'https://ams3.digitaloceanspaces.com/files-watad-me/uploads/2019/12/1-2.jpg',
      'options': ['أ', 'ب', 'ج', 'د', 'ه'],
      'correctAnswer': 'ب',
    },
    {
      'question':
          'https://ams3.digitaloceanspaces.com/files-watad-me/uploads/2019/12/2-2.jpg',
      'options': ['أ', 'ب', 'ج', 'د'],
      'correctAnswer': 'c',
    },
    {
      "question":
          'https://ams3.digitaloceanspaces.com/files-watad-me/uploads/2019/12/3-2.jpg',
      'options': ['أ', 'ب', 'ج', 'د'],
      'correctAnswer': 'c',
    },
    {
      "question":
          "https://ams3.digitaloceanspaces.com/files-watad-me/uploads/2019/12/7-2.jpg",
      "options": ["أ", "ب", "ج", "د"],
      "correctAnswer": "c",
    },
  ];

  final PageController controller = PageController(initialPage: 0);

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
              height: 200,
            ),
            Padding(
              padding: EdgeInsets.only(right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    "10/",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                    ),
                  ),
                  Text(
                    '1',
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
                height: 400,
                width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.fromLTRB(20, 0, 20, 20),
                padding: EdgeInsets.fromLTRB(20, 0, 20, 20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(50),
                ),
                child: PageView.builder(
                    onPageChanged: (value) {},
                    physics: NeverScrollableScrollPhysics(),
                    controller: controller,
                    reverse: true,
                    itemCount: quiz.length,
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          Container(
                            child: Image.network(
                              quiz[index]['question'],
                            ),
                          ),
                          for (int i = 0;
                              i < quiz[index]['options'].length;
                              i++)
                            ListTile(
                              title: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(),
                                  Text(
                                    quiz[index]['options'][i],
                                  ),
                                ],
                              ),
                              trailing: Radio<QuestionNum>(
                                value: QuestionNum.question2,
                                groupValue: _questionNum,
                                onChanged: (value) {
                                  setState(() {
                                    _questionNum = value;
                                  });
                                },
                              ),
                            ),
                        ],
                      );
                    })),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    // print(quiz[0]['question']);
                    // print(quiz[0]['options'][0]);
                    print(quiz[1]['options'].length);
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
