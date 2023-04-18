import 'package:dicoding_cinema/MyHomePage.dart';
import 'package:flutter/material.dart';
import 'package:dicoding_cinema/model/movie.dart';

var styleTitle =
    TextStyle(fontFamily: 'Arial', fontSize: 24, fontWeight: FontWeight.bold, color: Color(0xFF101743));
var styleSubTitle =
    TextStyle(fontFamily: 'Arial', fontSize: 16, fontWeight: FontWeight.bold);
var styleContent =
    TextStyle(fontFamily: 'Arial', fontSize: 14, fontWeight: FontWeight.normal);
var styleSubContent = TextStyle(
    fontFamily: 'Arial',
    fontSize: 12,
    fontWeight: FontWeight.bold,
    color: Colors.white);
var styleSubContent2 =
    TextStyle(fontFamily: 'Arial', fontSize: 12, fontWeight: FontWeight.w400);
var styleContentBold =
    TextStyle(fontFamily: 'Arial', fontSize: 14, fontWeight: FontWeight.bold);

class MyDetailPage extends StatelessWidget {
  final movie MyMovie;
  const MyDetailPage({Key? key, required this.MyMovie}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Scaffold(
          body: SingleChildScrollView(
            child: LayoutBuilder(
              builder: (context, constraints) {
                if (constraints.maxWidth <= 600) {
                  return DetailMobileLayout(
                      MyMovieM: MyMovie, coverHeight: 300);
                } else if (constraints.maxWidth <= 950) {
                  return DetailMobileLayout(
                      MyMovieM: MyMovie, coverHeight: 500);
                } else {
                  return DetailMobileLayout(
                      MyMovieM: MyMovie, coverHeight: 500);
                }
              },
            ),
          ),
        );
      },
    );
  }
}

class BookmarkButton extends StatefulWidget {
  const BookmarkButton({Key? key}) : super(key: key);

  @override
  State<BookmarkButton> createState() => _BookmarkButtonState();
}

class _BookmarkButtonState extends State<BookmarkButton> {
  bool isBookmark = false;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        setState(() {
          isBookmark = !isBookmark;
        });
      },
      icon: Icon(isBookmark ? Icons.bookmark : Icons.bookmark_border),
      color: Colors.white,
    );
  }
}

class RatingMovie extends StatelessWidget {
  final String value;
  const RatingMovie({Key? key, required this.value}) : super(key: key);

  Widget buildStar(BuildContext context, int index) {
    Icon icon;
    final double rating = double.parse(value.substring(0, 2)) / 2;
    if (index >= rating) {
      icon = new Icon(
        Icons.star_border,
        color: Colors.yellow[800],
      );
    } else if (index > rating - 1 && index < rating) {
      icon = new Icon(
        Icons.star_half,
        color: Colors.yellow[800],
      );
    } else {
      icon = new Icon(
        Icons.star,
        color: Colors.yellow[800],
      );
    }
    return icon;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(right: 3),
      child: Row(
        children: List.generate(
          5,
          (index) => buildStar(context, index),
        ),
      ),
    );
  }
}

class DetailMobileLayout extends StatelessWidget {
  final movie MyMovieM;
  final double coverHeight;
  const DetailMobileLayout(
      {Key? key, required this.MyMovieM, required this.coverHeight})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Stack(
            children: [
              Container(
                height: coverHeight,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('images/' + MyMovieM.image_detail),
                        fit: BoxFit.cover,
                        alignment: Alignment.topCenter)),
                child: Container(
                  decoration: BoxDecoration(
                      gradient: LinearGradient(colors: [
                    Colors.white,
                    Colors.white.withOpacity(0.8),
                    Colors.white.withOpacity(0.3),
                    Colors.transparent
                  ], begin: Alignment.bottomCenter, end: Alignment.topCenter)),
                ),
              ),
              SafeArea(
                child: Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: Icon(
                          Icons.arrow_back_rounded,
                          color: Colors.white,
                        )),
                    BookmarkButton(),
                  ],
                ),
              ),
            ],
          ),
          Container(
            color: Colors.white,
            padding: EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                    child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      flex: 5,
                      child: Text(
                        MyMovieM.title,
                        style: styleTitle,
                      ),
                    ),
                    Flexible(
                      flex: 1,
                      child: Card(
                          color: Color(0xFF101743),
                          child: Container(
                              padding: EdgeInsets.all(5),
                              child: Text(
                                MyMovieM.age,
                                style: styleSubContent,
                              ))),
                    ),
                  ],
                )),
                Container(
                    padding: EdgeInsets.fromLTRB(0, 5, 0, 0),
                    child: Row(
                      children: [
                        Text(
                          MyMovieM.genre,
                          style: styleContentBold,
                        ),
                        Text('  |  '),
                        Text(
                          MyMovieM.duration,
                          style: styleContentBold,
                        ),
                      ],
                    )),
                Container(
                  padding: EdgeInsets.fromLTRB(0, 5, 0, 0),
                  child: Row(
                    children: [
                      RatingMovie(value: MyMovieM.rating),
                      Text(
                        MyMovieM.rating,
                        style: styleSubContent2,
                      ),
                    ],
                  ),
                ),
                Container(
                    padding: EdgeInsets.only(top: 10),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Producer',
                          style: styleSubTitle,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Expanded(child: Text(MyMovieM.producer))
                      ],
                    )),
                Container(
                    padding: EdgeInsets.only(top: 10),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Director',
                          style: styleSubTitle,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Expanded(child: Text(MyMovieM.director))
                      ],
                    )),
                Container(
                    padding: EdgeInsets.only(top: 10),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Writers',
                          style: styleSubTitle,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Expanded(child: Text(MyMovieM.writer))
                      ],
                    )),
                Container(
                    padding: EdgeInsets.only(top: 10),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Production',
                          style: styleSubTitle,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Expanded(child: Text(MyMovieM.production))
                      ],
                    )),
                Divider(
                  color: Colors.black,
                  height: 20,
                  thickness: 0.2,
                ),
                Container(
                    padding: EdgeInsets.fromLTRB(0, 5, 0, 5),
                    child: Text(
                      'Casts',
                      style: styleSubTitle,
                    )),
                Container(child: Text(MyMovieM.casts)),
                Divider(
                  color: Colors.black,
                  height: 20,
                  thickness: 0.2,
                ),
                Container(
                    padding: EdgeInsets.only(top: 10),
                    child: Text(
                      'Synopsis',
                      style: styleSubTitle,
                    )),
                Container(
                    padding: EdgeInsets.only(top: 4),
                    child: Text(MyMovieM.synopsis)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
