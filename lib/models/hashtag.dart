import 'dart:convert';

class HashtagModel {
  int? id;
  String? name;
  HashtagModel({
    this.id,
    this.name,
  });

  HashtagModel copyWith({
    int? id,
    String? name,
  }) {
    return HashtagModel(
      id: id ?? this.id,
      name: name ?? this.name,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
    };
  }

  factory HashtagModel.fromMap(Map<String, dynamic> map) {
    return HashtagModel(
      id: map['id'],
      name: map['name'],
    );
  }

  String toJson() => json.encode(toMap());

  factory HashtagModel.fromJson(String source) =>
      HashtagModel.fromMap(json.decode(source));

  @override
  String toString() => 'HashtagModel(id: $id, name: $name)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is HashtagModel && other.id == id && other.name == name;
  }

  @override
  int get hashCode => id.hashCode ^ name.hashCode;
}
