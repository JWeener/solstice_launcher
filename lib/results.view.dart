import 'package:device_apps/device_apps.dart';
import 'package:flutter/widgets.dart';

class ResultsView extends StatelessWidget {
  const ResultsView({
    Key? key,
    required this.applications,
  }) : super(key: key);

  final List<Application> applications;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: GridView.count(
        shrinkWrap: true,
        crossAxisCount: 4,
        children: applications.map((app) => Text(app.appName)).toList(),
      ),
    );
  }
}
