class CardModel {
  final String brand;
  final String desc;
  final double priceAfterDiscount;
  final double price;
  final double rating;
  final String image;

  CardModel({
    required this.brand,
    required this.desc,
    required this.priceAfterDiscount,
    required this.price,
    required this.rating,
    required this.image,
  });

  factory CardModel.fromJson(json) {
    return CardModel(
      brand: json['products']['brand'],
      desc: json['products']['description'],
      priceAfterDiscount: json['products']['discountPercentage'],
      price: json['products']['price'],
      rating: json['products']['rating'],
      image: json['products']['images'],
    );
  }
}
