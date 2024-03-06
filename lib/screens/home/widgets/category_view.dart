import 'package:flutter/material.dart';

class CategoryView extends StatefulWidget {
  const CategoryView({super.key});

  @override
  State<CategoryView> createState() => _CategoryViewState();
}

class _CategoryViewState extends State<CategoryView> {
  final List<String> categories = [
    "Trabalho",
    "Estudos",
    "Casa",
  ];

  int _category = 0;

  void _selectForward() {
    _category++;
    if (_category == categories.length) {
      _category = 0;
    }

    setState(() {});
  }

  void _selectBackward() {
    _category--;
    if (_category == -1) {
      _category = categories.length - 1;
    }

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
          onPressed: _selectBackward,
          icon: const Icon(
            Icons.arrow_back_ios_new_rounded,
            color: Colors.blueAccent,
          ),
        ),
        Text(
          categories[_category].toUpperCase(),
          style: const TextStyle(
            color: Colors.black87,
            fontSize: 18,
          ),
        ),
        IconButton(
          onPressed: _selectForward,
          icon: const Icon(
            Icons.arrow_forward_ios_rounded,
            color: Colors.blueAccent,
          ),
        ),
      ],
    );
  }
}
