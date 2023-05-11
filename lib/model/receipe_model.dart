class Receipe {
  String? alias;
  int? randomNumber;
  List<Products>? products;
  String? doctorName;
  String? updatedAt;
  String? createdAt;

  Receipe(
      {this.alias,
      this.randomNumber,
      this.products,
      this.doctorName,
      this.updatedAt,
      this.createdAt});

  Receipe.fromJson(Map<String, dynamic> json) {
    alias = json['alias'];
    randomNumber = json['random_number'];
    if (json['products'] != null) {
      products = <Products>[];
      json['products'].forEach((v) {
        products!.add(new Products.fromJson(v));
      });
    }
    doctorName = json['doctor_name'];
    updatedAt = json['updated_at'];
    createdAt = json['created_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['alias'] = this.alias;
    data['random_number'] = this.randomNumber;
    if (this.products != null) {
      data['products'] = this.products!.map((v) => v.toJson()).toList();
    }
    data['doctor_name'] = this.doctorName;
    data['updated_at'] = this.updatedAt;
    data['created_at'] = this.createdAt;
    return data;
  }
}

class Products {
  String? scientificName;
  String? commercialName;
  int? concentrate;
  String? quantity;
  bool? taken;

  Products(
      {this.scientificName,
      this.commercialName,
      this.concentrate,
      this.quantity,
      this.taken});

  Products.fromJson(Map<String, dynamic> json) {
    scientificName = json['scientific_name'];
    commercialName = json['commercial_name'];
    concentrate = json['concentrate'];
    quantity = json['quantity'] as String;
    taken = json['taken'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['scientific_name'] = this.scientificName;
    data['commercial_name'] = this.commercialName;
    data['concentrate'] = this.concentrate;
    data['quantity'] = this.quantity;
    data['taken'] = this.taken;
    return data;
  }
}
