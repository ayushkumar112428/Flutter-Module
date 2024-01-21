import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart' as launcher;

class Mylauncher extends StatelessWidget {
  const Mylauncher({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Lancher"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            launcherButtion(title: "Phone Call", icon: Icons.phone, onPressed: (){
              Uri url = Uri.parse('tel:+918200446981');
              launcher.launchUrl(url);
            }),
            launcherButtion(title: "Launch URL", icon: Icons.link, onPressed: (){
              launcher.launchUrl(Uri.parse("https://github.com/ayushkumar112428"));
            },),
            launcherButtion(title: "Email", icon: Icons.email, onPressed: (){
              Uri url = Uri.parse("mailto:");
              launcher.launchUrl(url);
            }),
            launcherButtion(title: "SMS", icon: Icons.sms, onPressed: (){
              Uri url = Uri.parse("sms:+918200446981");
              launcher.launchUrl(url);
            }),
          ],
        ),
      ),
    );
  }

  Widget launcherButtion({
    required String title,
    required IconData icon,
    required Function() onPressed,
  }) {
    return ElevatedButton(
      onPressed: onPressed,
      child: Row(
        children: [Icon(icon), Text(title)],
      ),
    );
  }
}
