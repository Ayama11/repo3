class GategoryModel {
  final int id;
  final String name;

  GategoryModel({
    required this.id,
    required this.name,
  });
  factory GategoryModel.fromJson(jsonData) {
    return GategoryModel(
      id: jsonData['id'],
      name: jsonData['name'],
    );
  }
}
