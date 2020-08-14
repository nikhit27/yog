import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  Container MyArticles(String imageVal, String heading) {
    return Container(
      width: 150.0,
      child: Card(
        child: Wrap(
          children: <Widget>[
            Image.network(imageVal),
            ListTile(
              title: Text(heading),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'demo',
      theme: ThemeData(
        primaryColor: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "scroll view",
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
        body: Container(
          margin: EdgeInsets.symmetric(vertical: 20.0),
          height: 150,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              MyArticles(
                  "https://cdn.pixabay.com/photo/2016/05/10/21/50/meditation-1384758_1280.jpg",
                  "Yoga"),
              MyArticles(
                  "https://images.unsplash.com/photo-1471520201477-47a62a269a87?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60",
                  "Meditation"),
              MyArticles("https://in.pinterest.com/pin/71424344063519566/",
                  "Pravachan"),
              MyArticles(
                  "https://cdn.pixabay.com/photo/2016/05/10/21/50/meditation-1384758_1280.jpg",
                  "Gita"),
              MyArticles(
                  "https://cdn.pixabay.com/photo/2016/05/10/21/50/meditation-1384758_1280.jpg",
                  "Satsung"),
            ],
          ),
        ),
      ),
    );
  }
}
