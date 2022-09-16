import 'package:flutter/material.dart';

class SearchView extends StatelessWidget {
  const SearchView({
    Key? key,
    this.onSearch,
  }) : super(key: key);

  final void Function(String)? onSearch;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: TextField(
        onChanged: onSearch,
        decoration: const InputDecoration(
          border: UnderlineInputBorder(),
          hintText: 'Search apps',
        ),
      ),
    );
  }
}
