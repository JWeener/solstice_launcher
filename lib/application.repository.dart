import 'package:device_apps/device_apps.dart';

class ApplicationRepository {
  List<Application>? _applications;

  Future<List<Application>> getApplications() async {
    _applications ??= await DeviceApps.getInstalledApplications(
      onlyAppsWithLaunchIntent: true,
      includeAppIcons: true,
      includeSystemApps: true,
    );
    return _applications!;
  }
}
