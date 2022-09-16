import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:solstice_launcher/application.cubit.dart';
import 'package:solstice_launcher/application.repository.dart';
import 'package:solstice_launcher/application.service.dart';
import 'package:solstice_launcher/results.view.dart';
import 'package:solstice_launcher/search.page.dart';
import 'package:solstice_launcher/search.view.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Solstice Launcher',
      theme: ThemeData(
        primarySwatch: Colors.amber,
      ),
      home: Scaffold(
        body: BlocProvider(
          create: (context) => ApplicationCubit(
            applicationService: ApplicationService(
              applicationRepository: ApplicationRepository(),
            ),
          )..loadApplications(),
          lazy: false,
          child: const SearchPage(),
        ),
      ),
    );
  }
}
