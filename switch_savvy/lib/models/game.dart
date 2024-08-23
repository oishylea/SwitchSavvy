class Game {
  String name;
  String price;
  String imagePath;
  String horizontalPoster;
  String desc;
  String preview1;
  String preview2;
  String preview3;
  String rating;
  int quantity;

  Game({
    required this.name,
    required this.price,
    required this.imagePath,
    required this.horizontalPoster,
    required this.desc,
    required this.preview1,
    required this.preview2,
    required this.preview3,
    required this.rating,
    this.quantity = 1,
  });

  String get _name =>name;
  String get _price => price;
  String get _imagePath => imagePath;
  String get _horizontalPoster => horizontalPoster;
  String get _desc=> desc;
  String get _preview1 => preview1;
  String get _preview2 => preview2;
  String get _preview3 => preview3;
  String get _rating => rating;

}