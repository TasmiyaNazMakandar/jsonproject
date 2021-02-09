import 'dart:convert';

List<Employee> employeeFromJson(String str) =>
    List<Employee>.from(json.decode(str).map((x) => Employee.fromJson(x)));

String employeeToJson(List<Employee>data) =>
    json.encode(List<dynamic>.from(data.map((x)=> x.toJson())));

class Employee {
  int id;
  String name;
  String username;
  String email;
  Address address;
  String phone;
  String website;

  Employee(
      {this.id,
        this.name,
        this.username,
        this.email,
        this.address,
        this.phone,
        this.website,
        });

  Employee.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    username = json['username'];
    email = json['email'];
    address =
    json['address'] != null ? new Address.fromJson(json['address']) : null;
    phone = json['phone'];
    website = json['website'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['username'] = this.username;
    data['email'] = this.email;
    if (this.address != null) {
      data['address'] = this.address.toJson();
    }
    data['phone'] = this.phone;
    data['website'] = this.website;
    return data;
  }
}

class Address {
  String street;
  String suite;
  String city;
  String zipcode;

  Address({this.street, this.suite, this.city, this.zipcode});

  Address.fromJson(Map<String, dynamic> json) {
    street = json['street'];
    suite = json['suite'];
    city = json['city'];
    zipcode = json['zipcode'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['street'] = this.street;
    data['suite'] = this.suite;
    data['city'] = this.city;
    data['zipcode'] = this.zipcode;
    return data;
  }
}


// class Employee
// {
//   int id;
//   String email;
//   String username;
//   String name;
//   String phone;
//   Address address;
//
//   Employee(
//       {
//         this.id,
//         this.email,
//         this.username,
//         this.name,
//         this.phone,
//         this.address
//       }
//       );
//
//   factory Employee.fromJson(Map<String,dynamic>json) => Employee(
//       id: json["id"],
//       email: json["email"],
//       username: json["username"],
//       name: json["name"],
//       phone:json['phone'],
//       address:  json['address'] != null ? new Address.fromJson(json['address']) : null,
//   );
//
//   Map<String,dynamic>toJson() =>
//       {
//         "id":id,
//         "email":email,
//         "username":username,
//         "name":name,
//         "phone":phone,
//         "address": this.address.toJson(),
//       };
// }
//
// class Address {
//   String street;
//   String suite;
//   String city;
//   String zipcode;
//
//   Address({this.street, this.suite, this.city, this.zipcode,});
//
//   factory Address.fromJson(Map<String, dynamic> json) => Address(
//     street: json['street'],
//     suite: json['suite'],
//     city: json['city'],
//     zipcode: json['zipcode'],
//   );
//
//   Map<String,dynamic>toJson() =>
//       {
//         "street":street,
//         "suite":suite,
//         "city":city,
//         "zipcode":zipcode,
//       };
// }

// class Geo {
//   String lat;
//   String lng;
//
//   Geo({this.lat, this.lng});
//
//   Geo.fromJson(Map<String, dynamic> json) {
//     lat = json['lat'];
//     lng = json['lng'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['lat'] = this.lat;
//     data['lng'] = this.lng;
//     return data;
//   }
// }