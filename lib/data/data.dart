import 'package:flutterecomm/model/trending_model.dart';
import 'package:flutterecomm/model/best_selling_model.dart';
import 'package:flutterecomm/model/top_categories_model.dart';

List<TrendingModel> getTrendingData() {
  List<TrendingModel> trendingData = new List();
  TrendingModel trendingModel = new TrendingModel();

  // 1
  trendingModel.imgAssetPath = "assets/legotaj.jpeg";
  trendingModel.price = "\$389";
  trendingModel.productName = "Lego Taj Mahal";
  trendingModel.storeName = "lego.com";
  trendingModel.starRating = 4;
  trendingModel.noOfReviews = 701;
  trendingData.add(trendingModel);

  trendingModel = new TrendingModel();
  // 2
  trendingModel.imgAssetPath = "assets/legofriends.jpg";
  trendingModel.price = "\$129";
  trendingModel.productName = "Lego Central Perk";
  trendingModel.storeName = "amazon.com";
  trendingModel.starRating = 5;
  trendingModel.noOfReviews = 1124;
  trendingData.add(trendingModel);

  trendingModel = new TrendingModel();

  // 3
  trendingModel.imgAssetPath = "assets/legomack.jpeg";
  trendingModel.price = "\$279";
  trendingModel.productName = "Lego Mack Anthem";
  trendingModel.storeName = "ebay.com";
  trendingModel.starRating = 4;
  trendingModel.noOfReviews = 8;
  trendingData.add(trendingModel);

  trendingModel = new TrendingModel();

  // 4
  trendingModel.imgAssetPath = "assets/legoharrypotter.jpg";
  trendingModel.price = "\$39";
  trendingModel.productName = "Lego Harry Potter";
  trendingModel.storeName = "target.com";
  trendingModel.starRating = 4;
  trendingModel.noOfReviews = 332;
  trendingData.add(trendingModel);

  return trendingData;
}

List<BestSellingModel> getBestSellingData() {
  List<BestSellingModel> bestSellingData = new List();
  BestSellingModel bestSellingModel = new BestSellingModel();

  // 1
  bestSellingModel.imgAssetPath = "assets/productImage.png";
  bestSellingModel.price = "\$20";
  bestSellingModel.title = "Special Gift Card";
  bestSellingModel.starRating = 5;
  bestSellingModel.noOfReviews = 444;
  bestSellingData.add(bestSellingModel);

  bestSellingModel = new BestSellingModel();

  // 2
  bestSellingModel.imgAssetPath = "assets/productImage.png";
  bestSellingModel.price = "\$20";
  bestSellingModel.title = "Special Gift Card";
  bestSellingModel.starRating = 5;
  bestSellingModel.noOfReviews = 444;
  bestSellingData.add(bestSellingModel);

  bestSellingModel = new BestSellingModel();

  // 3
  bestSellingModel.imgAssetPath = "assets/productImage.png";
  bestSellingModel.price = "\$20";
  bestSellingModel.title = "Special Gift Card";
  bestSellingModel.starRating = 5;
  bestSellingModel.noOfReviews = 444;
  bestSellingData.add(bestSellingModel);

  bestSellingModel = new BestSellingModel();

  // 4
  bestSellingModel.imgAssetPath = "assets/productImage.png";
  bestSellingModel.price = "\$20";
  bestSellingModel.title = "Special Gift Card";
  bestSellingModel.starRating = 5;
  bestSellingModel.noOfReviews = 444;
  bestSellingData.add(bestSellingModel);

  bestSellingModel = new BestSellingModel();

  // 5
  bestSellingModel.imgAssetPath = "assets/productImage.png";
  bestSellingModel.price = "\$20";
  bestSellingModel.title = "Special Gift Card";
  bestSellingModel.starRating = 5;
  bestSellingModel.noOfReviews = 444;
  bestSellingData.add(bestSellingModel);

  bestSellingModel = new BestSellingModel();

  // 6
  bestSellingModel.imgAssetPath = "assets/productImage.png";
  bestSellingModel.price = "\$20";
  bestSellingModel.title = "Special Gift Card";
  bestSellingModel.starRating = 5;
  bestSellingModel.noOfReviews = 444;
  bestSellingData.add(bestSellingModel);

  bestSellingModel = new BestSellingModel();

  return bestSellingData;
}

List<TopCategoriesModel> getTopCategoriesData() {
  List<TopCategoriesModel> topCategoriesData = new List();
  TopCategoriesModel topCategoriesModel = new TopCategoriesModel();

  //1
  topCategoriesModel.imgAssetPath = "assets/categorie.png";
  topCategoriesModel.color1 = "8EA2FF";
  topCategoriesModel.color2 = "557AC7";
  topCategoriesModel.label = "Regular Gift";
  topCategoriesData.add(topCategoriesModel);

  topCategoriesModel = new TopCategoriesModel();

  //2
  topCategoriesModel.imgAssetPath = "assets/boxgift.png";
  topCategoriesModel.color1 = "50F9B4";
  topCategoriesModel.color2 = "38CAE9";
  topCategoriesModel.label = "Box Gift";
  topCategoriesData.add(topCategoriesModel);

  topCategoriesModel = new TopCategoriesModel();

  //3
  topCategoriesModel.imgAssetPath = "assets/choclate.png";
  topCategoriesModel.color1 = "FFB397";
  topCategoriesModel.color2 = "F46AA0";
  topCategoriesModel.label = "Regular Gift";
  topCategoriesData.add(topCategoriesModel);

  topCategoriesModel = new TopCategoriesModel();

  //4
  topCategoriesModel.imgAssetPath = "assets/categorie.png";
  topCategoriesModel.color1 = "8EA2FF";
  topCategoriesModel.color2 = "557AC7";
  topCategoriesModel.label = "Regular Gift";
  topCategoriesData.add(topCategoriesModel);

  topCategoriesModel = new TopCategoriesModel();

  //5
  topCategoriesModel.imgAssetPath = "assets/categorie.png";
  topCategoriesModel.color1 = "8EA2FF";
  topCategoriesModel.color2 = "557AC7";
  topCategoriesModel.label = "Regular Gift";
  topCategoriesData.add(topCategoriesModel);

  topCategoriesModel = new TopCategoriesModel();

  return topCategoriesData;
}
