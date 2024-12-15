import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  final IconData icon;
  final Function() onPressed; // Accepts a callback for actions like setState

  const RoundedButton({
    super.key,
    required this.icon,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: TextButton(
        style: TextButton.styleFrom(
          backgroundColor: const Color(0xff4c4f5e),
          shape: const CircleBorder(),
          minimumSize: const Size(60, 60),
        ),
        onPressed: onPressed, // Executes the passed function
        child: Icon(
          icon,
          color: Colors.white,
        ),
      ),
    );
  }
}
