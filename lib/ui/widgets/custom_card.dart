import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  final String url, title;
  CustomCard({required this.url, required this.title});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      elevation: 5,
      shadowColor: Theme.of(context).primaryColor,
      margin: EdgeInsets.all(10),
      child: InkWell(
        borderRadius: BorderRadius.circular(10),
        splashColor: Colors.blue.withAlpha(30),
        onTap: () {},
        child: Column(
          children: [
            Container(
              height: 180,
              width: 200,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10)),
                image: DecorationImage(
                  image: NetworkImage(url),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              title,
              style: TextStyle(
                color: Colors.white,
                fontFamily: 'Cairo',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
