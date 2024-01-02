class ShowOrderInfo {
  int? medicineId;
  int? neededQuantity;

  ShowOrderInfo({this.medicineId, this.neededQuantity});

  ShowOrderInfo.fromJson(Map<String, dynamic> json) {
    medicineId = json['medicine_id'];
    neededQuantity = json['needed_quantity'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['medicine_id'] = medicineId;
    data['needed_quantity'] = neededQuantity;
    return data;
  }
}
