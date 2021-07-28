import 'package:submission_book/data.dart';
import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  final int index;

  DetailsScreen({this.index});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            SliverAppBar(
              backgroundColor: Colors.black,
              expandedHeight: 400.0,
              floating: false,
              pinned: true,
              flexibleSpace: FlexibleSpaceBar(
                background: Stack(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: double.infinity,
                      child: Image.asset(
                        topArticles[index].imageUrl,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ],
                ),
              ),
            )
          ];
        },
        body: Container(
          width: MediaQuery.of(context).size.width,
          height: 300,
          padding: EdgeInsets.all(20),
          child: ListView(
            children: [
              Text(
                topArticles[index].title,
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 24,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                topArticles[index].name,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 17,
                ),
              ),
              Text(
                "${topArticles[index].time} hours ago",
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                topArticles[index].story,
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
