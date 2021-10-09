import 'package:flutter/material.dart';

class ItemWidget extends StatelessWidget {
  final String title;
  final int count;
  const ItemWidget({
    Key? key,
    required this.title,
    required this.count,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          count.toString(),
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 15,
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        Text(
          title,
          style: const TextStyle(
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
