import 'package:flutter/material.dart';

class MainPageHeader extends StatefulWidget {
  const MainPageHeader({super.key});

  @override
  _MainPageHeaderState createState() => _MainPageHeaderState();
}

class _MainPageHeaderState extends State<MainPageHeader> {
  final TextEditingController _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: TextField(
        controller: _searchController,
        decoration: InputDecoration(
          hintText: '검색',
          fillColor: Theme.of(context).bottomNavigationBarTheme.backgroundColor,
          filled: true,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide.none,
          ),
          prefixIcon: const Icon(Icons.search),
        ),
      ),
      actions: [
        IconButton(
          icon: const Icon(Icons.settings),
          onPressed: () {
            // 설정 관련 액션
          },
        ),
      ],
    );
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }
}