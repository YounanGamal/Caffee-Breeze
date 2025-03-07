import 'package:flutter/material.dart';

class DialogUtils {
  static void showLoadingDialog(BuildContext context, String message,
      {bool isDismissible = false}) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        backgroundColor: Theme.of(context).primaryColor,
        shadowColor: Colors.blue,
        content: Row(
          children: [
            const CircularProgressIndicator(),
            const SizedBox(
              width: 30,
            ),
            Text(message),
          ],
        ),
      ),
      barrierDismissible: isDismissible,
    );
  }

  static void hideDialog(BuildContext context) {
    Navigator.pop(context);
  }

  static void showMessage(
    BuildContext context,
    String message, {
    String? posActionTitle,
    String? negActionTitel,
    VoidCallback? posAction,
    VoidCallback? negAction,
  }) {
    List<Widget> actions = [];
    if (posActionTitle != null) {
      actions.add(TextButton(
          onPressed: () {
            Navigator.pop(context);
            posAction?.call();
          },
          child: Text(
            posActionTitle,
            style: const TextStyle(color: Colors.black),
          )));
    }
    if (negActionTitel != null) {
      actions.add(TextButton(
        onPressed: () {
          Navigator.pop(context);
          negAction?.call();
        },
        child: Text(
          negActionTitel,
          style: const TextStyle(
              color: Colors.black), // Change this to your desired color
        ),
      ));
    }
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        backgroundColor: Theme.of(context).primaryColor,
        content: Text(message),
        actions: actions,
      ),
    );
  }
}
