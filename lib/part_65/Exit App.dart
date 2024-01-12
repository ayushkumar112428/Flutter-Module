import 'package:flutter/material.dart';

class EixtApp extends StatelessWidget {
  const EixtApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Exit"),
      ),
      body: WillPopScope(
        onWillPop: () async {
          return await onBackPressed(context);
        },
        child: const Center(
          child: Text("Press back button to exit"),
        ),
      ),
    );
  }
  Future<bool> onBackPressed(BuildContext context){
    return showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Confirm Exit'),
        content: const Text('Are you sure you want to exit?'),
        actions: <Widget>[
          TextButton(
            onPressed: () {
              Navigator.of(context).pop(false); // Dismiss the dialog and return false
            },
            child: const Text('No'),
          ),
          TextButton(
            onPressed: () {
              Navigator.of(context).pop(true); // Dismiss the dialog and return true
            },
            child: const Text('Yes'),
          ),
        ],
      ),
    ).then((value) => value ?? false);
  }
}
