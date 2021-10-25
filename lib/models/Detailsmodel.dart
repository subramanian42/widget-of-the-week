class Details {
  String name;
  int age;
  String gender;

  Details({
    required this.name,
    required this.age,
    required this.gender,
  });

  factory Details.fromJSON(Map<String, dynamic> json) => Details(
        name: json['name'],
        age: json['age'],
        gender: json['gender'],
      );
}
