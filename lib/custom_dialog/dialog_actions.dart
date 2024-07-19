import 'package:flutter/material.dart';

class DialogActions extends StatelessWidget {
  const DialogActions({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          TextButton(
            onPressed: () {},
            child: const Text('Cancel'),
          ),
          const SizedBox(width: 16),
          TextButton(
            onPressed: () {},
            child: const Text('Save'),
          ),
        ],
      ),
    );
  }
}
