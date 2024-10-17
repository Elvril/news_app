import 'package:flutter/material.dart';
import 'package:news_app/utils/styles.dart';

class NetworkErrorDialog extends StatelessWidget {
  const NetworkErrorDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
      content: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            "Whoops!",
            style: Styles.textStyle16,
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 16),
          Text(
            "No internet connection found.",
            style: Styles.textStyle14.copyWith(color: Colors.red),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 8),
          Center(
            child: Text(
              "Check your connection and try again.",
              style: Styles.textStyle12,
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
