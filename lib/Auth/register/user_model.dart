class UserModel {
  final String name;
  final String phone;
  final String address;
  final String password;

  UserModel(
      {required this.name,
      required this.phone,
      required this.address,
      required this.password});

  Map<String, String> toJson() {
    return {
      'name': name,
      'phone_number': phone,
      'password': password,
      'address': address,
    };
  }
}
