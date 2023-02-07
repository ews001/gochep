import 'package:gochep/utils/functions.dart';

class SettingsModel {
  final String id;
  final String value;

  SettingsModel({required this.id, required this.value});

  factory SettingsModel.fromJson(Map<String, dynamic> json) {
    return SettingsModel(
        id: checkNullOrEmpty(json['id']),
        value: checkNullOrEmpty(json['value']));
  }
}
