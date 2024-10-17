import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

void errorDialog(BuildContext context, String errorMessage) {
  showDialog(
    context: context,
    barrierDismissible: false,
    builder: (context) {
      return AlertDialog(
        title: const Text('Error'),
        content: Text(errorMessage),
        actions: [
          TextButton(
              onPressed: () {
                context.pop();
              },
              child: const Text('ok'))
        ],
      );
    },
  );
}
