import 'package:submission_book/data.dart';
import 'package:submission_book/details.dart';
import 'package:flutter/material.dart';

class WorldSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          padding: EdgeInsets.all(10),
          margin: EdgeInsets.only(right: 5),
          width: MediaQuery.of(context).size.width,
          child: ListView(
            children: [
              Text(
                "Top Seller",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 24,
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.24,
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: topArticles.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (ctx, i) => GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (ctx) => DetailsScreen(
                            index: i,
                          ),
                        ),
                      );
                    },
                    child: Container(
                      margin: EdgeInsets.all(5),
                      width: MediaQuery.of(context).size.width * 0.37,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(topArticles[i].imageUrl),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Container(
                        height: double.infinity,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          gradient: LinearGradient(
                            colors: [
                              Colors.transparent,
                              Colors.black.withOpacity(0.9)
                            ],
                            begin: Alignment.topCenter,
                            stops: [0.5, 1],
                            end: Alignment.bottomCenter,
                          ),
                        ),
                        padding: EdgeInsets.all(10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Spacer(),
                            Text(
                              topArticles[i].title,
                              maxLines: 2,
                              overflow: TextOverflow.fade,
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "${topArticles[i].time} hours ago",
                              style: TextStyle(
                                color: Colors.white.withOpacity(0.5),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Text(
                "List Books",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 24,
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.52,
                child: ListView.builder(
                  itemCount: topArticles.length,
                  scrollDirection: Axis.vertical,
                  itemBuilder: (ctx, i) {
                    return new Container(
                        margin: EdgeInsets.all(5),
                        width: MediaQuery.of(context).size.width * 0.7,
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: topArticles[i].color,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: new GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (ctx) => DetailsScreen(
                                  index: i,
                                ),
                              ),
                            );
                          },
                          child: Row(
                            children: [
                              Container(
                                height: 60,
                                width: 50,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                ),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(20),
                                  child: Image.asset(
                                    topArticles[i].imageUrl,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Container(
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      topArticles[i].name,
                                      style: TextStyle(
                                        color: Colors.white,
                                      ),
                                    ),
                                    Text(
                                      topArticles[i].title,
                                      maxLines: 2,
                                      overflow: TextOverflow.fade,
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 18,
                                      ),
                                    ),
                                    Text(
                                      "${topArticles[i].time} hours ago",
                                      style: TextStyle(
                                        color: Colors.white.withOpacity(0.7),
                                      ),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ));
                  },
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
