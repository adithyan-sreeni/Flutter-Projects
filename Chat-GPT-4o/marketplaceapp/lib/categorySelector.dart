import 'package:flutter/material.dart';

class CategoryIcon extends StatefulWidget {
  final IconData icon;
  final String label;
  final bool selected;
  final double size;

  const CategoryIcon({
    super.key,
    required this.icon,
    required this.label,
    this.selected = false,
    this.size = 24.0,
  });

  @override
  State<CategoryIcon> createState() => _CategoryIconState();
}

class _CategoryIconState extends State<CategoryIcon> {
  bool selected = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          GestureDetector(
            onTap: () {
              setState(() {
                selected = !selected;
              });
            },
            child: CircleAvatar(
              backgroundColor: selected ? Colors.teal : Colors.grey[200],
              radius: 35,
              child: Icon(
                widget.icon,
                color: selected ? Colors.white : Colors.black,
              ),
            ),
          ),
          const SizedBox(height: 4),
          Text(widget.label),
        ],
      ),
    );
  }
}
