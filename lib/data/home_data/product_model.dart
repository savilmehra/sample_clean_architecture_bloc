class ProductModel {
  final String? image;
  final int? price;
  final int? discountedPrice;
  final String? currency;
  final int? discount;
  final String? title;
  final String? brand;
  final String? description;
  final ProductInfo? productInfo;
  final List<Specification>? specification;

  ProductModel(
      {required this.image,
      required this.price,
      this.title,
      required this.discountedPrice,
      required this.currency,
      required this.discount,
      this.brand,
      this.description,
      this.productInfo,
      this.specification});

  factory ProductModel.fromJson(Map<dynamic, dynamic> json) => ProductModel(
      image: json["image_url"],
      price: json["price"],
      title: json["title"],
      discountedPrice: json["discountedPrice"],
      currency: json["currency"],
      discount: json["discount"],
      brand: json['brand'],
      description: json['description'],
      productInfo: json['product_details'] != null
          ? ProductInfo.fromJson(json['product_details'])
          : null,
      specification: json['Specification'] != null
          ? List.generate(json['Specification'].length,
              (index) => Specification.fromJson(json['Specification'][index]))
          : null);
}

class ProductInfo {
  String? materialComposition;
  String? fitType;
  String? sleeveType;
  String? collarStyle;
  String? length;
  String? neckStyle;
  String? countryOfOrigin;

  ProductInfo(
      {this.materialComposition,
      this.fitType,
      this.sleeveType,
      this.collarStyle,
      this.length,
      this.neckStyle,
      this.countryOfOrigin});

  ProductInfo.fromJson(Map<dynamic, dynamic> json) {
    materialComposition = json['Material composition'];
    fitType = json[' Fit type'];
    sleeveType = json[' Sleeve type'];
    collarStyle = json['Collar style'];
    length = json['Length'];
    neckStyle = json['Neck style'];
    countryOfOrigin = json['Country of Origin'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['Material composition'] = materialComposition;
    data[' Fit type'] = fitType;
    data[' Sleeve type'] = sleeveType;
    data['Collar style'] = collarStyle;
    data['Length'] = length;
    data['Neck style'] = neckStyle;
    data['Country of Origin'] = countryOfOrigin;
    return data;
  }
  Map<String, dynamic> toJsonFromModel(ProductInfo productInfo) {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['Material composition'] = productInfo.materialComposition;
    data[' Fit type'] = productInfo.fitType;
    data[' Sleeve type'] =  productInfo.sleeveType;
    data['Collar style'] =  productInfo.collarStyle;
    data['Length'] =  productInfo.length;
    data['Neck style'] = productInfo. neckStyle;
    data['Country of Origin'] = productInfo. countryOfOrigin;
    return data;
  }
}

class Specification {
  String? image;
  String? description;

  Specification({this.image, this.description});

  Specification.fromJson(Map<dynamic, dynamic> json) {
    image = json['image'];
    description = json['description'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['image'] = image;
    data['description'] = description;
    return data;
  }
}
