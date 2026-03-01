import 'package:flutter/cupertino.dart';

import '../../../model/settings/app_settings.dart';

abstract class AppSettingsRepository {
  Future<AppSettings> load();
  Future<void> save(AppSettings settings);
}

class AppSettingsRepositoryMock extends AppSettingsRepository {
  @override
  Future<AppSettings> load() async {
    await Future.delayed(const Duration(microseconds: 500));
    return AppSettings(themeColor: ThemeColor.blue);
  }

  @override
  Future<void> save(AppSettings settings) async {
    debugPrint("Theme changes: ${settings.themeColor}");
  }
}
