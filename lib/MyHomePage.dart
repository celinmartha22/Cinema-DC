import 'dart:developer';
import 'dart:ui';

import 'package:dicoding_cinema/main.dart';
import 'package:flutter/material.dart';
import 'package:dicoding_cinema/model/movie.dart';
import 'MyDetailPage.dart';

var styleHead = TextStyle(
    fontFamily: 'Satisfy',
    fontSize: 30,
    // fontWeight: FontWeight.bold,
    color: Color(0xFF101743));
var styleSubHead = TextStyle(
    fontFamily: 'Arial',
    fontSize: 22,
    fontWeight: FontWeight.bold,
    color: Color(0xFF101743));
var styleTitleH =
    TextStyle(fontFamily: 'Oxygen', fontSize: 20, fontWeight: FontWeight.bold);
var styleContentH =
    TextStyle(fontFamily: 'Arial', fontSize: 15, fontWeight: FontWeight.normal);

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // final movie movieListH;
  final _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Scrollbar(
          isAlwaysShown: true,
          controller: _scrollController,
          child: LayoutBuilder(
            builder: (context, constraints) {
              if (constraints.maxWidth <= 600) {
                return MobileLayout(
                  scrollControlMobile: _scrollController,
                );
              } else if (constraints.maxWidth <= 950) {
                return WebLayout(
                  trendingSpace: 6,
                  gridX: 2,
                  scrollControlWeb: _scrollController,
                );
              } else {
                return WebLayout(
                  trendingSpace: 8,
                  gridX: 3,
                  scrollControlWeb: _scrollController,
                );
              }
            },
          ),
        ),
      ),
    );
  }
}

class movieNowGrid extends StatelessWidget {
  final int gridMax;
  const movieNowGrid({Key? key, required this.gridMax}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.all(2),
        child: GridView.count(
          childAspectRatio: (4/3),
          crossAxisCount: gridMax,
          children: movieList.map((e) {
            return InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return MyDetailPage(MyMovie: e);
                }));
              },
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                color: Color(0xffe4e6f1),
                child: Padding(
                  padding: EdgeInsets.all(5),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        flex: 1,
                        child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset('images/' + e.image)),
                      ),
                      Expanded(
                          flex: 1,
                          child: Container(
                            padding: EdgeInsets.fromLTRB(10, 0, 2, 0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  e.title,
                                  style: styleTitleH,
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  e.genre,
                                  style: styleContentH,
                                ),
                                SizedBox(
                                  height: 3,
                                ),
                                Row(
                                  children: [
                                    Icon(Icons.access_time, size: 17),
                                    SizedBox(
                                      width: 3,
                                    ),
                                    Text(
                                      e.duration,
                                      style: styleContentH,
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.star_rate_rounded,
                                      size: 18,
                                      color: Colors.yellow[900],
                                    ),
                                    SizedBox(
                                      width: 3,
                                    ),
                                    Text(
                                      e.rating,
                                      style: styleContentH,
                                    ),
                                  ],
                                ),
                                Card(
                                    color: Color(0xFF101743),
                                    child: Container(
                                        padding: EdgeInsets.all(5),
                                        child: Text(
                                          e.age,
                                          style: styleSubContent,
                                        ))),
                              ],
                            ),
                          ))
                    ],
                  ),
                ),
              ),
            );
          }).toList(),
        ));
  }
}

class movieNowList extends StatelessWidget {
  // const movieNowList({ Key? key }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
        child: ListView.builder(
      scrollDirection: Axis.vertical,
      itemCount: movieList.length,
      itemBuilder: (context, i) {
        final movie movieListH = movieList[i];
        return InkWell(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return MyDetailPage(MyMovie: movieListH);
            }));
          },
          child: Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            color: Color(0xffe4e6f1),
            child: Padding(
              padding: EdgeInsets.all(5),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    flex: 1,
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset('images/' + movieList[i].image)),
                  ),
                  Expanded(
                      flex: 3,
                      child: Container(
                        padding: EdgeInsets.fromLTRB(10, 0, 2, 0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              movieList[i].title,
                              style: styleTitleH,
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              movieList[i].genre,
                              style: styleContentH,
                            ),
                            SizedBox(
                              height: 3,
                            ),
                            Row(
                              children: [
                                Icon(Icons.access_time, size: 17),
                                SizedBox(
                                  width: 3,
                                ),
                                Text(
                                  movieList[i].duration,
                                  style: styleContentH,
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.star_rate_rounded,
                                  size: 18,
                                  color: Colors.yellow[900],
                                ),
                                SizedBox(
                                  width: 3,
                                ),
                                Text(
                                  movieList[i].rating,
                                  style: styleContentH,
                                ),
                              ],
                            ),
                            Card(
                                color: Color(0xFF101743),
                                child: Container(
                                    padding: EdgeInsets.all(5),
                                    child: Text(
                                      movieList[i].age,
                                      style: styleSubContent,
                                    ))),
                          ],
                        ),
                      ))
                ],
              ),
            ),
          ),
        );
      },
    ));
  }
}

class movieTrendingList extends StatelessWidget {
  final ScrollController scrollControl;
  const movieTrendingList({Key? key, required this.scrollControl})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: ListView.builder(
      controller: scrollControl,
      scrollDirection: Axis.horizontal,
      itemCount: movieList.length,
      itemBuilder: (context, i) {
        final movie movieListH = movieList[i];
        return Padding(
          padding: EdgeInsets.all(5),
          child: Container(
            child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset('images/' + movieList[i].image)),
          ),
        );
      },
    ));
  }
}

class WebLayout extends StatelessWidget {
  final int trendingSpace;
  final int gridX;
  final ScrollController scrollControlWeb;
  const WebLayout(
      {Key? key,
      required this.trendingSpace,
      required this.gridX,
      required this.scrollControlWeb})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xfff1f2f8),
      padding: EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
              flex: 2,
              child: Container(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(Icons.local_movies_rounded,
                      color: Color(0xFF101743), size: 30),
                  Text(
                    "Cinema DC",
                    style: styleHead,
                  ),
                ],
              ))),
          Expanded(
              flex: 1,
              child: Container(child: Text("Trending", style: styleSubHead))),
          Expanded(
            flex: trendingSpace,
            child: Scrollbar(
                isAlwaysShown: true,
                controller: scrollControlWeb,
                child: movieTrendingList(scrollControl: scrollControlWeb)),
          ),
          SizedBox(
            height: 10,
          ),
          Expanded(
              flex: 1,
              child:
                  Container(child: Text("May you like", style: styleSubHead))),
          Expanded(
              flex: 12,
              child: LayoutBuilder(
                builder: (context, constraints) {
                  return movieNowGrid(
                    gridMax: gridX,
                  );
                },
              )),
        ],
      ),
    );
  }
}

class MobileLayout extends StatelessWidget {
  final ScrollController scrollControlMobile;
  const MobileLayout({Key? key, required this.scrollControlMobile})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scrollbar(
      isAlwaysShown: true,
      controller: scrollControlMobile,
      child: Container(
        color: Color(0xfff1f2f8),
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
                flex: 2,
                child: Container(
                    child: Row(
                  children: [
                    Icon(
                      Icons.local_movies_rounded,
                      color: Color(0xFF101743),
                      size: 30,
                    ),
                    Text(
                      "Cinema DC",
                      style: styleHead,
                    ),
                  ],
                ))),
            Expanded(
                flex: 1,
                child: Container(child: Text("Trending", style: styleSubHead))),
            Expanded(
              flex: 4,
              child: Scrollbar(
                  isAlwaysShown: true,
                  controller: scrollControlMobile,
                  child: movieTrendingList(scrollControl: scrollControlMobile)),
            ),
            SizedBox(
              height: 10,
            ),
            Expanded(
                flex: 1,
                child: Container(
                    child: Text("May you like", style: styleSubHead))),
            Expanded(
                flex: 12,
                child: LayoutBuilder(
                  builder: (context, constraints) {
                    return movieNowList();
                  },
                )),
          ],
        ),
      ),
    );
  }
}
