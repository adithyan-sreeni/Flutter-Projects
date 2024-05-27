import 'package:flutter/material.dart';

class CategoryIcon extends StatelessWidget {
  final IconData icon;
  final String label;
  final bool selected;
  final double size;
  final VoidCallback onTap;

  const CategoryIcon({
    Key? key,
    required this.icon,
    required this.label,
    this.selected = false,
    this.size = 24.0,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          GestureDetector(
            onTap: onTap,
            child: CircleAvatar(
              backgroundColor: selected ? Colors.blue : Colors.grey,
              child: Icon(icon, size: size),
            ),
          ),
          Text(label),
        ],
      ),
    );
  }
}

class CategorySelector extends StatefulWidget {
  final List<CategoryIcon> categories;

  CategorySelector({required this.categories});

  @override
  _CategorySelectorState createState() => _CategorySelectorState();
}

class _CategorySelectorState extends State<CategorySelector> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: widget.categories.map((category) {
        var categoryIndex = widget.categories.indexOf(category);
        return CategoryIcon(
          icon: category.icon,
          label: category.label,
          selected: selectedIndex == categoryIndex,
          onTap: () {
            setState(() {
              selectedIndex = categoryIndex;
            });
          },
        );
      }).toList(),
    );
  }
}
