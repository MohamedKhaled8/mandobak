class ProductModel {
    ProductModel({
      required  this.scientificName,
      required  this.commercialName,
      required  this.concentrate,
      required  this.quantity,
      required  this.taken,
    });

    String scientificName;
    String commercialName;
    int concentrate;
    int quantity;
    bool taken;

    factory ProductModel.fromMap(Map<String, dynamic> json) => ProductModel(
        scientificName: json["scientific_name"],
        commercialName: json["commercial_name"],
        concentrate: json["concentrate"],
        quantity: json["quantity"],
        taken: json["taken"],
    );

    Map<String, dynamic> toMap() => {
        "scientific_name": scientificName,
        "commercial_name": commercialName,
        "concentrate": concentrate,
        "quantity": quantity,
        "taken": taken,
    };
}