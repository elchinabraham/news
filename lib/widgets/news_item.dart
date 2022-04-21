import 'package:flutter/material.dart';
import 'package:news/models/utils.dart';
import 'package:news/screens/news_screen.dart';

class NewsItem extends StatelessWidget {
  final String title;
  const NewsItem({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Card(
        color: Utils.mainColor,
        clipBehavior: Clip.antiAlias,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(9.0),
          ),
        ),
        elevation: 5,
        child: Column(
          children: [
            SizedBox(
              width: double.infinity,
              height: 180,
              child: Stack(
                children: <Widget>[
                  Container(
                    width: double.infinity,
                    height: 200,
                    child: Image.network(
                      'https://cdn.oxu.az/uploads/W1siZiIsIjIwMjIvMDQvMTMvMTIvMjUvMTMvNWYyNjExZGUtOTRlMS00MDQyLWI0YzYtZGVjYmFiYTJmMTQzL1doYXRzQXBwIEltYWdlIDIwMjItMDQtMTMgYXQgMTEuMDguMDIgKDEpLmpwZWciXSxbInAiLCJlbmNvZGUiLCJqcGciLCItcXVhbGl0eSA4MCJdLFsicCIsInRodW1iIiwiNjIweDQxMyMiXV0?sha=4b201032df2d17ea',
                      fit: BoxFit.fitWidth,
                    ),
                    // child: Image.asset(
                    //   'assets/images/twitter.png',
                    //   fit: BoxFit.fitWidth,
                    // ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(5.0),
                    alignment: Alignment.bottomCenter,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: <Color>[
                          Colors.black.withAlpha(0),
                          Colors.black12,
                          Colors.black26
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.fromLTRB(20, 15, 20, 5),
              child: Text(
                'Jurnalistlər arasında Zəfər Kuboku keçiriləcək',
                style: TextStyle(
                  color: Utils.textColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
            ),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.fromLTRB(20, 5, 20, 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Icon(
                        Icons.remove_red_eye,
                        color: Utils.iconColor,
                      ),
                      const SizedBox(width: 5),
                      Text(
                        '36',
                        style: TextStyle(
                          color: Utils.textColor,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Icon(
                        Icons.date_range,
                        color: Utils.iconColor,
                      ),
                      const SizedBox(width: 5),
                      Text(
                        '2022.04.13',
                        style: TextStyle(
                          color: Utils.textColor,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Icon(
                        Icons.source,
                        color: Utils.iconColor,
                      ),
                      const SizedBox(width: 5),
                      Text(
                        'oxu.az',
                        style: TextStyle(
                          color: Utils.textColor,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
      onTap: () {
        Navigator.of(context, rootNavigator: true).pushNamed(
          NewsScreen.routeName,
          arguments: {'id': 1, 'title': title},
        );
      },
    );
  }
}
