import 'package:flutter/material.dart';
import 'package:flutterecomm/model/trending_model.dart';
import 'package:flutterecomm/model/best_selling_model.dart';
import 'package:flutterecomm/data/data.dart';
import 'package:flutterecomm/model/top_categories_model.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<TrendingModel> trendingData = new List();
  List<BestSellingModel> bestSellingData = new List();
  List<TopCategoriesModel> topCategoriesData = new List();

  @override
  void initState() {
    trendingData = getTrendingData();
    bestSellingData = getBestSellingData();
    topCategoriesData = getTopCategoriesData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: <Widget>[
            Container(
              margin: EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height: 16,
                  ),
                  Material(
                    elevation: 4,
                    shadowColor: Colors.grey.withOpacity(0.3),
                    borderRadius: BorderRadius.circular(4),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(4),
                      ),
                      padding: EdgeInsets.symmetric(horizontal: 16),
                      height: 55,
                      child: Row(
                        children: <Widget>[
                          Expanded(
                            child: TextField(
                              decoration: InputDecoration(
                                hintText: "Search",
                                border: InputBorder.none,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 16,
                          ),
                          InkWell(
                            onTap: () {
                              print("Search icon clicked");
                            },
                            child: Icon(Icons.search),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 45,
                  ),
                  Row(
                    children: <Widget>[
                      Text(
                        "Trending Today",
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 24,
                          color: Color(0xff000000),
                        ),
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Text(
                        "1st April",
                        style: TextStyle(color: Colors.grey),
                      ),
                    ],
                  ),
                  Container(
                    height: 190,
                    child: ListView.builder(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemCount: trendingData.length,
                      itemBuilder: (context, index) {
                        return TrendingTile(
                          imgAssetPath: trendingData[index].imgAssetPath,
                          price: trendingData[index].price,
                          productName: trendingData[index].productName,
                          storeName: trendingData[index].storeName,
                          starRating: trendingData[index].starRating,
                          noOfReviews: trendingData[index].noOfReviews,
                        );
                      },
                    ),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Row(
                    children: <Widget>[
                      Text(
                        "Best Selling",
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 24,
                          color: Color(0xff000000),
                        ),
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Text(
                        "This week",
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                      Spacer(),
                      Text(
                        "See all",
                        style: TextStyle(
                          color: Color(0xff557AC7),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Container(
                    height: 210,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: bestSellingData.length,
                      itemBuilder: (context, index) {
                        return BestSellingTile(
                          imgAssetPath: bestSellingData[index].imgAssetPath,
                          price: bestSellingData[index].price,
                          title: bestSellingData[index].title,
                          starRating: bestSellingData[index].starRating,
                          noOfReviews: bestSellingData[index].noOfReviews,
                        );
                      },
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        "Top Categories",
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 24,
                          color: Color(0xff000000),
                        ),
                      ),
                      Text(
                        "See all",
                        style: TextStyle(
                          color: Color(0xff557AC7),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Container(
                    height: 100,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: topCategoriesData.length,
                      itemBuilder: (context, index) {
                        return TopCategoriesTile(
                          imgAssetPath: topCategoriesData[index].imgAssetPath,
                          color1: topCategoriesData[index].color1,
                          color2: topCategoriesData[index].color2,
                          label: topCategoriesData[index].label,
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

/// Top Categories

class TopCategoriesTile extends StatelessWidget {
  final String label;
  final String color1;
  final String color2;
  final String imgAssetPath;

  TopCategoriesTile(
      {@required this.imgAssetPath,
      @required this.color1,
      @required this.color2,
      @required this.label});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(right: 12),
            padding: EdgeInsets.all(8),
            height: 50,
            width: 80,
            decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
                Color(int.parse("0xff$color1")),
                Color(int.parse("0xff$color2"))
              ]),
              borderRadius: BorderRadius.circular(5),
            ),
            child: Image.asset(imgAssetPath),
          ),
          SizedBox(
            height: 6,
          ),
          Text(label),
        ],
      ),
    );
  }
}

/// Best Selling

class BestSellingTile extends StatelessWidget {
  final String imgAssetPath;
  final String price;
  final String title;
  final int starRating;
  final int noOfReviews;

  BestSellingTile(
      {@required this.imgAssetPath,
      @required this.noOfReviews,
      @required this.title,
      @required this.price,
      @required this.starRating});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 140,
      margin: EdgeInsets.only(
        right: 16,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Stack(
            children: <Widget>[
              Image.asset(
                imgAssetPath,
                width: 120,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 6, vertical: 4),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      const Color(0xff8EA2FF).withOpacity(0.5),
                      const Color(0xff557AC7).withOpacity(0.5)
                    ],
                  ),
                  borderRadius: BorderRadius.circular(5.0),
                ),
                margin: EdgeInsets.only(top: 8, left: 8),
                child: Text(price),
              )
            ],
          ),
          SizedBox(
            height: 16,
          ),
          Text(title),
          SizedBox(
            height: 8,
          ),
          Row(
            children: <Widget>[
              RatingStars(
                starRating: starRating,
                heightOfStar: 13.0,
                gapOfStar: 3.0,
              ),
              SizedBox(
                width: 6,
              ),
              Text("($noOfReviews)")
            ],
          )
        ],
      ),
    );
  }
}

/// Trending tile

class TrendingTile extends StatelessWidget {
  String imgAssetPath;
  String price;
  String productName;
  String storeName;
  int starRating;
  int noOfReviews;

  TrendingTile(
      {this.noOfReviews,
      this.starRating,
      this.storeName,
      this.productName,
      this.price,
      this.imgAssetPath});

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 8,
      borderRadius: BorderRadius.circular(3),
      shadowColor: Colors.grey.withOpacity(0.2),
      child: Container(
        height: 170,
        margin: EdgeInsets.only(right: 16),
        padding: EdgeInsets.only(right: 16),
        child: Row(
          children: <Widget>[
            Container(
              child: Stack(
                children: <Widget>[
                  Image.asset(
                    imgAssetPath,
                    height: 170,
                    width: 130,
                    fit: BoxFit.fill,
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 8, top: 8),
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          const Color(0xff8EA2FF).withOpacity(0.5),
                          const Color(0xff557AC7).withOpacity(0.5),
                        ],
                      ),
                    ),
                    width: 44,
                    height: 35,
                    child: Center(
                      child: Text(
                        price,
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              width: 17,
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    productName,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Text(
                    storeName,
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black38,
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Row(
                    children: <Widget>[
                      RatingStars(starRating: starRating),
                      SizedBox(
                        width: 8,
                      ),
                      Text(
                        "($noOfReviews)",
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.black38,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  // Button
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 24, vertical: 11),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      gradient: LinearGradient(
                        colors: [
                          const Color(0xff8EA2FF),
                          const Color(0xff557AC7),
                        ],
                      ),
                    ),
                    child: Text(
                      "Add to Cart",
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

/// Star Ratings

class RatingStars extends StatelessWidget {
  final int starRating;
  double heightOfStar;
  double gapOfStar;
  RatingStars({this.starRating, this.heightOfStar, this.gapOfStar});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: <Widget>[
          Image.asset(
            starRating >= 1 ? "assets/star.png" : "assets/stargrey.png",
            height: heightOfStar ?? 15.0,
          ),
          SizedBox(
            width: gapOfStar ?? 4.0,
          ),
          Image.asset(
            starRating >= 2 ? "assets/star.png" : "assets/stargrey.png",
            height: heightOfStar ?? 15.0,
          ),
          SizedBox(
            width: gapOfStar ?? 4.0,
          ),
          Image.asset(
            starRating >= 3 ? "assets/star.png" : "assets/stargrey.png",
            height: heightOfStar ?? 15.0,
          ),
          SizedBox(
            width: gapOfStar ?? 4.0,
          ),
          Image.asset(
            starRating >= 4 ? "assets/star.png" : "assets/stargrey.png",
            height: heightOfStar ?? 15.0,
          ),
          SizedBox(
            width: gapOfStar ?? 4.0,
          ),
          Image.asset(
            starRating == 5 ? "assets/star.png" : "assets/stargrey.png",
            height: heightOfStar ?? 15.0,
          ),
        ],
      ),
    );
  }
}
