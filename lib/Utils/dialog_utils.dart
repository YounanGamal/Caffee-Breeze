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
            CircularProgressIndicator(),
            SizedBox(
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
            posAction?.call();
            Navigator.pop(context);
          },
          child: Text(
            posActionTitle,
            style: TextStyle(color: Colors.black),
          )));
    }
    if (negActionTitel != null) {
      actions.add(TextButton(
        onPressed: () {
          negAction?.call();
          Navigator.pop(context);
        },
        child: Text(
          negActionTitel,
          style: TextStyle(
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
