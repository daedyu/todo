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
      actions: [
        IconButton(
          icon: const Icon(Icons.settings),
          onPressed: () {
            print("object");
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