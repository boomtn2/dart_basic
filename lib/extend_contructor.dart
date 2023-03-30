import 'dart:convert';

void main(List<String> arguments) {
  Person person = Person(
      name: "Hieu",
      age: "23",
      address: "Thai Nguyen",
      phoneNumber: "0866424678");

  print(person);

  print(Person(
      name: "Hieu 1", age: "23", address: "TN", phoneNumber: "0866424678"));

  print(Person.vietnamese(name: "VN", sdt: "123456"));
  print(Person.chinese(name: "CN", sdt: "32465"));
  print(Person.name(name: "hieu"));
  //-----------

  Staff staff = Staff.chinese("20", age: "20", name: "Hieu");
  print(staff);
  //------------
  print("List-----------");
  List<Person> listPerson = [
    Staff.chinese("20", age: "20", name: "Hieu"),
    Person(name: "Hieu 1", age: "23", address: "TN", phoneNumber: "0866424678")
  ];

  listPerson.forEach((element) {
    print(element);
  });
}

// ignore_for_file: public_member_api_docs, sort_constructors_first
class Person {
  String name;
  String? age;
  String? address;
  String? phoneNumber;

  String get getName => name;
  set setName(String name) => this.name = name;

  Person({
    this.name = "",
    this.age = "",
    this.address = "",
    this.phoneNumber = "",
  });

  Person.vietnamese({
    required this.name,
    required String sdt,
    this.address,
    this.age,
  }) {
    phoneNumber = '+84$sdt';
  }

  Person.name(
      {required this.name,
      this.age = "",
      this.address = "",
      this.phoneNumber = ""});

  Person.chinese({
    required this.name,
    required String sdt,
    this.address,
    this.age,
  }) {
    phoneNumber = '+00$sdt';
  }

  @override
  String toString() {
    // TODO: implement toString
    return "$name-$age-$address-$phoneNumber";
  }

  factory Person.formJson(Map<String, dynamic> formJson) => Person(
      name: formJson[''].toString(),
      age: formJson[''].toString(),
      address: formJson[''].toString(),
      phoneNumber: formJson[''].toString());

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'age': age,
      'address': address,
      'phoneNumber': phoneNumber,
    };
  }

  factory Person.fromMap(Map<String, dynamic> map) {
    return Person(
      name: map['name'] as String,
      age: map['age'] != null ? map['age'] as String : null,
      address: map['address'] != null ? map['address'] as String : null,
      phoneNumber:
          map['phoneNumber'] != null ? map['phoneNumber'] as String : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory Person.fromJson(String source) =>
      Person.fromMap(json.decode(source) as Map<String, dynamic>);
}

class Staff extends Person {
  final String numberCard;

  Staff.chinese(this.numberCard, {required super.name, required super.age})
      : super();
  // Staff(
  //     {required super.name,
  //     required super.age,
  //     required super.address,
  //     required super.phoneNumber});
  Staff.vietnamese(this.numberCard) : super();

  Staff({this.numberCard = "", super.name});
  @override
  String toString() {
    // TODO: implement toString
    return super.toString() + this.numberCard;
  }
}

class Car {
  String? name;
  Car() {
    name = "";
  }

  Car.all({required this.name});
}

class SuperCar extends Car {}
