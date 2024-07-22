import 'package:flutter/material.dart';

class Tag extends StatelessWidget {
  const Tag({super.key, required this.label});
  final String label;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.grey.withOpacity(0.1),
      ),
      child: Text(
        label,
        style: const TextStyle(color: Colors.black54),
      ),
    );
  }
}
