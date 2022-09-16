import 'package:device_apps/device_apps.dart';
import 'package:solstice_launcher/application.repository.dart';

class ApplicationService {
  ApplicationService({
    required ApplicationRepository applicationRepository,
  }) : _applicationRepository = applicationRepository;

  final ApplicationRepository _applicationRepository;

  Future<List<Application>> loadApplications() async {
    List<Application> applications =
        await _applicationRepository.getApplications();
    applications.sort((a, b) => a.appName.compareTo(b.appName));
    return applications;
  }

  List<Application> searchApplications({
    required List<Application> applications,
    required String query,
  }) {
    return applications
        .where((application) => application.appName
            .toLowerCase()
            .replaceAll(' ', '')
            .contains(query.toLowerCase().replaceAll(' ', '')))
        .toList();
  }
}
