class ModelItemModel {
  final String name;
  final int age;
  ModelItemModel({required this.age, required this.name});

  factory ModelItemModel.fromMap(Map<String, dynamic> json) =>
      ModelItemModel(name: json["name"], age: json["age"]);

  Map<String, dynamic> toMap() => {"name": name, "age": age};
}
