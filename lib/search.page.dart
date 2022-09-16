import 'package:device_apps/device_apps.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:solstice_launcher/application.cubit.dart';
import 'package:solstice_launcher/results.view.dart';
import 'package:solstice_launcher/search.view.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  List<ApplicationWithIcon> filteredApplications = [];

  void updateFilteredApplications(query) {
    setState(() {
      filteredApplications =
          context.read<ApplicationCubit>().searchApplications(query);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
          child: ResultsView(applications: filteredApplications),
        ),
        SearchView(onSearch: updateFilteredApplications),
      ],
    );
  }
}
