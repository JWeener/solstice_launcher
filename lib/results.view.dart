import 'package:device_apps/device_apps.dart';
import 'package:flutter/widgets.dart';
import 'package:solstice_launcher/application.view.dart';

class ResultsView extends StatelessWidget {
  const ResultsView({
    Key? key,
    required this.applications,
  }) : super(key: key);

  final List<ApplicationWithIcon> applications;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(left: 8, right: 8, top: 4, bottom: 4),
        child: GridView.count(
          shrinkWrap: true,
          crossAxisCount: 5,
          childAspectRatio: .8,
          children: applications
              .map((app) => ApplicationView(application: app))
              .toList(),
        ),
      ),
    );
  }
}
