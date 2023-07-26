// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class Sinup {
  Sinup(
    this.name,
    this.email,
    this.password, 
    
  );

  final String name;
  final String email;
  final String password;


  Sinup copyWith({
    String? name,
    String? email,
    String? password,
  }) {
    return Sinup(
      name ?? this.name,
      email ?? this.email,
      password ?? this.password,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'email': email,
      'password': password,
    };
  }

  factory Sinup.fromMap(Map<String, dynamic> map) {
    return Sinup(
      map['name'] as String,
      map['email'] as String,
      map['password'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory Sinup.fromJson(String source) => Sinup.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'Sinup(name: $name, email: $email, password: $password)';

  @override
  bool operator ==(covariant Sinup other) {
    if (identical(this, other)) return true;
  
    return 
      other.name == name &&
      other.email == email &&
      other.password == password;
  }

  @override
  int get hashCode => name.hashCode ^ email.hashCode ^ password.hashCode;
}
