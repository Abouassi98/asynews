import 'package:flutter/material.dart';
import 'main.dart';
import 'detailScreen.dart';

class Articles extends StatelessWidget {
  final List<Article> listarticles;
  final String title;
  Articles({this.listarticles, this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            title,
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: listarticles.length,
        itemBuilder: (context, i) => Container(
          padding: EdgeInsets.all(5),
          child: InkWell(
                      child: Card(
              child: ListTile(
                contentPadding: EdgeInsets.all(5),
                title: Text(
                  listarticles[i].title,
                  textDirection: TextDirection.rtl,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                trailing: CircleAvatar(
                  radius: 30,
                  backgroundImage: NetworkImage(listarticles[i].image.url),
                ),
              ),
            ),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => DetailScreen(articlDetails: listarticles[i],)));
                },
          ),
        ),
      ),
    );
  }
}
