dynamic checkNullOrEmpty(dynamic data) {
  if (data == null || data.isEmpty) {
    return 'null';
  } else {
    return data;
  }
}

bool toBoolean(String str, [bool strict = false]) {
  if (strict == true) {
    return str == '1' || str == 'true';
  }
  return str != '0' && str != 'false' && str != '';
}
