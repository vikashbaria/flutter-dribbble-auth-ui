import 'package:flutter/material.dart';

Widget socialButton({
  required String title,
  required String imagePath,
  required VoidCallback onTap,
  required String type,
}) {
  return GestureDetector(
    onTap: onTap,

    child: Container(
      padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 20),

      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey.shade300),
        borderRadius: BorderRadius.circular(28),
        color: Colors.transparent,
      ),

      child: Row(
        children: [
          const SizedBox(width: 14),
          Image.asset(imagePath, width: 24, height: 24),

          Expanded(
            child: Center(
              child: Text(
                title,
                style: const TextStyle(
                  fontSize: 16,
                  color: Colors.blueGrey,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),

          // same width as image for perfect center alignment
          const SizedBox(width: 24),
        ],
      ),
    ),
  );
}
