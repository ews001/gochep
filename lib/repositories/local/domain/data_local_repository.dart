import 'package:gochep/repositories/local/data/data_local.dart';

import 'entities/settings_model.dart';

class DataLocalRepository {
  final DataLocalApi _api;

  DataLocalRepository({required DataLocalApi api}) : _api = api;

  Future<List<SettingsModel>> settings() async {
    var allSettingsFromData = await _api.getSettings();
    var settingList =
        allSettingsFromData.map((e) => SettingsModel.fromJson(e)).toList();

    return settingList;
  }

  Future<void> setFistOpenedAtFalse() => _api.setFistOpenedAtFalse();
}
