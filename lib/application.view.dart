import 'package:device_apps/device_apps.dart';
import 'package:flutter/widgets.dart';
import 'package:text_scroll/text_scroll.dart';

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
          TextScroll(
            application.appName,
            mode: TextScrollMode.bouncing,
            velocity: const Velocity(pixelsPerSecond: Offset(50, 0)),
            delayBefore: const Duration(seconds: 1),
            pauseBetween: const Duration(seconds: 2),
          ),
        ],
      ),
    );
  }
}
