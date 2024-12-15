import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  const ReusableCard({
    super.key,
    this.cardChild,
    required this.colour,
    this.onPress,
  });

  final Color colour;
  final Widget? cardChild;
  final Function()? onPress; // Marked as nullable.

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress, // Safe as onPress is nullable.
      child: Container(
        margin: const EdgeInsets.all(15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: colour,
        ),
        child: cardChild,
      ),
    );
  }
}
