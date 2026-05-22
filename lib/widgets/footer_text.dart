import 'package:flutter/material.dart';

Widget footertext({
  required String normalText,
  required String actionText,
  required VoidCallback onTap,
}) {
  return Center(
    child: Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          normalText,
          style: TextStyle(color: Colors.grey.shade600, fontSize: 16),
        ),

        TextButton(
          style: TextButton.styleFrom(
            padding: const EdgeInsets.symmetric(horizontal: 4),
            minimumSize: Size.zero,
            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
          ),
          onPressed: onTap,
          child: Text(
            actionText,
            style: const TextStyle(
              color: Colors.red,
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ],
    ),
  );
}
