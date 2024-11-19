import 'package:flutter/material.dart';

class MainPageSearchbar extends StatefulWidget {
  const MainPageSearchbar({super.key});

  @override
  State<MainPageSearchbar> createState() => _MainPageSearchbarState();
}

class _MainPageSearchbarState extends State<MainPageSearchbar> {
  final TextEditingController _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: _searchController,
      decoration: InputDecoration(
        hintText: "검색",
        fillColor: Theme.of(context).bottomNavigationBarTheme.backgroundColor,
        filled: true,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide.none
        ),
        prefixIcon: const Icon(Icons.search),
      ),
      style: const TextStyle(
        fontWeight: FontWeight.w400,
        fontSize: 17.0,
        height: 1.0
      ),
    );
  }
}
