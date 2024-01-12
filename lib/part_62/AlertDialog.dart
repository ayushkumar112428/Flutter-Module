import 'package:flutter/material.dart';

class AlertDialogs extends StatelessWidget {
  const AlertDialogs({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text("Alert Dialog")),
      ),
      body: Center(
        child: SizedBox(
          height: 50,
          width: 150,
          child: ElevatedButton(
            onPressed: (){
              showAlertDialog(context);
            },
            child: const Center(
              child: Text("Click"),),
          ),
        ),
      ),
    );
  }
  void showAlertDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Alert Dialog Title',style: TextStyle(color: Colors.red,fontWeight: FontWeight.w500),),
          content: const Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text('This is a simple alert dialog.'),
              SizedBox(height: 10),
              Row(
                children: <Widget>[
                  Icon(
                    Icons.info,
                    color: Colors.blue,
                  ),
                  SizedBox(width: 10),
                  Text(
                    'Additional Information',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ],
          ),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('OK'),
            ),
          ],
        );
      },
    );
  }
}
