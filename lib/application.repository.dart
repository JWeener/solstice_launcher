import 'package:device_apps/device_apps.dart';

class ApplicationRepository {
  List<ApplicationWithIcon>? _applications;

  Future<List<ApplicationWithIcon>> getApplications() async {
    _applications ??= (await DeviceApps.getInstalledApplications(
      onlyAppsWithLaunchIntent: true,
      includeAppIcons: true,
      includeSystemApps: true,
    ))
        .cast<ApplicationWithIcon>();
    return _applications!;
  }
}
