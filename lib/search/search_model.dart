class SearchMedicenModel {
  final int id;
  final String scientificName;
  final String commercialName;
  final String company;
  final int totalQuantity;
  final String expDate;
  final int price;
  final int classificationId;
  final String createdAt;
  final String updatedAt;

  SearchMedicenModel({
    required this.id,
    required this.scientificName,
    required this.commercialName,
    required this.company,
    required this.totalQuantity,
    required this.expDate,
    required this.price,
    required this.classificationId,
    required this.createdAt,
    required this.updatedAt,
  });

  factory SearchMedicenModel.fromJson(json) {
    return SearchMedicenModel(
      id: json['id'],
      scientificName: json['scientific_name'],
      commercialName: json['commercial_name'],
      company: json['company'],
      totalQuantity: json['total_quantity'],
      expDate: json['exp_date'],
      price: json['price'],
      classificationId: json['classification_id'],
      createdAt: json['created_at'],
      updatedAt: json['updated_at'],
    );
  }
}
