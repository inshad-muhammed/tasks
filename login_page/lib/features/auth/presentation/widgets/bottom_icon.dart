import 'package:flutter/material.dart';

class BottomIcon extends StatelessWidget {
  final VoidCallback function;
  final String label;
  final String imageAddress;
  const BottomIcon({
    super.key,
    required this.function,
    required this.label,
    required this.imageAddress,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: function,
      child: Column(
        children: [
          Image.asset(imageAddress),
          Text(
            label,

            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.white70, height: 1),
          ),
        ],
      ),
    );
  }
}
