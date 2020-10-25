import 'package:flutter/material.dart';
import './main.dart';
import 'package:url_launcher/url_launcher.dart';

class DetailScreen extends StatelessWidget {
  final Article articlDetails;

  DetailScreen({this.articlDetails});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text(articlDetails.title)),
      ),
      body: ListView(
        padding: EdgeInsets.all(10),
        children: [
          Text(
            articlDetails.description,
            textDirection: TextDirection.rtl,
            textAlign: TextAlign.right,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 24,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 200,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(articlDetails.image.url),
                      fit: BoxFit.cover),
                  boxShadow: [BoxShadow(color: Colors.black, blurRadius: 5)],
                  border: Border.all(color: Colors.black, width: 1)),
            ),
          ),
          Text(
            articlDetails.content,
            textDirection: TextDirection.rtl,
            textAlign: TextAlign.right,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          RaisedButton(
              padding: EdgeInsets.all(5),
              color: Colors.deepPurple,
              child: Text('رابط الخبر'),
              textColor: Colors.white,
              onPressed: () {
                launch(articlDetails.source);
              }),
        ],
      ),
    );
  }
}
