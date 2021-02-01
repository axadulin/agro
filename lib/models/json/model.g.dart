// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Employees _$EmployeesFromJson(Map<String, dynamic> json) {
  return Employees(
    id: json['id'] as String,
    login: json['login'] as String,
    tel: json['tel'] as String
    // employeeAge: json['employee_age'] as String,
    // profileImage: json['profile_image'] as String,
  );
}

Map<String, dynamic> _$EmployeesToJson(Employees instance) => <String, dynamic>{
      'id': instance.id,
      'login': instance.login,
      'tel': instance.tel
      // 'employee_age': instance.employeeAge,
      // 'profile_image': instance.profileImage,
    };
