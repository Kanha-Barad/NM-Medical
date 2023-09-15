class Promotion {
  final String img;
  final String promoCode;
  final String locationName;
  final String oldPrice;
  final String newPrice;
  final String serviceName;

  Promotion({
    required this.img,
    required this.promoCode,
    required this.locationName,
    required this.oldPrice,
    required this.newPrice,
    required this.serviceName,
  });

  factory Promotion.fromJson(Map<String, dynamic> json) {
    return Promotion(
      img: json['APP_PROMOTION_IMG'],
      promoCode: json['PROMO_CODE'],
      locationName: json['LOCATION_NAME'],
      oldPrice: json['OLD_PRICE'],
      newPrice: json['NEW_PRICE'],
      serviceName: json['SERVICE_NAME'],
    );
  }
}
