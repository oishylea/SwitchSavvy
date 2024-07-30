class Game {
  String name;
  String price;
  String imagePath;
  String horizontalPoster;
  String desc;
  String rating;

  Game({
    required this.name,
    required this.price,
    required this.imagePath,
    required this.horizontalPoster,
    required this.desc,
    required this.rating
  });

  String get _name =>name;
  String get _price => price;
  String get _imagePath => imagePath;
  String get _horizontalPoster => horizontalPoster;
  String get _desc=> desc;
  String get _rating => rating;
}