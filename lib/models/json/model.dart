import 'package:json_annotation/json_annotation.dart';

part 'model.g.dart';

@JsonSerializable()
class Employees {
  final String id;
  @JsonKey(name: 'login')
  final String login;
  @JsonKey(name: 'tel')
  final String tel;
  // @JsonKey(name: 'employee_age')
  // final String employeeAge;
  // @JsonKey(name: 'profile_image')
  // final String profileImage;

  // Employees({this.id, this.login, this.tel, this.employeeAge, this.profileImage});
  Employees({this.id, this.login, this.tel});
  factory Employees.fromJson(Map<String, dynamic> json) => _$EmployeesFromJson(json);
  Map<String, dynamic> toJson() => _$EmployeesToJson(this);
}