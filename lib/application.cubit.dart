import 'package:device_apps/device_apps.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'application.service.dart';

class ApplicationCubit extends Cubit<List<Application>> {
  ApplicationCubit({
    required ApplicationService applicationService,
  })  : _applicationService = applicationService,
        super([]);

  final ApplicationService _applicationService;

  Future<void> loadApplications() async {
    final apps = await _applicationService.loadApplications();
    emit(apps);
  }

  List<Application> searchApplications(String query) {
    return _applicationService.searchApplications(
      applications: state,
      query: query,
    );
  }
}
