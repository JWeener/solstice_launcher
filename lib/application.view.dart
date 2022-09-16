import 'package:device_apps/device_apps.dart';
import 'package:flutter/widgets.dart';

class ApplicationView extends StatelessWidget {
  const ApplicationView({
    Key? key,
    required this.application,
  }) : super(key: key);

  final ApplicationWithIcon application;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.memory(application.icon),
          Text(
            application.appName,
            softWrap: false,
            overflow: TextOverflow.fade,
          ),
        ],
      ),
    );
  }
}
