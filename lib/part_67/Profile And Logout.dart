import 'package:flutter/material.dart';

class ProfileLogout extends StatefulWidget {
  const ProfileLogout({Key? key}) : super(key: key);

  @override
  State<ProfileLogout> createState() => _ProfileLogoutState();
}

class _ProfileLogoutState extends State<ProfileLogout> {
  String _texts = "Welcome"; // Use _texts as a private variable to hold the displayed text

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
        actions: [
          PopupMenuButton<String>(
            onSelected: (String value) {
              setState(() {
                // Update _texts based on the selected value
                switch (value) {
                  case 'profile':
                    _texts = "Profile";
                    break;
                  case 'settings':
                    _texts = "Settings";
                    break;
                  case 'like':
                    _texts = "Like";
                    break;
                  case 'logout':
                    _texts = "Logout";
                    break;
                  default:
                    break;
                }
              });
            },
            itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
              const PopupMenuItem<String>(
                value: 'profile',
                child: ListTile(
                  leading: Icon(Icons.account_circle),
                  title: Text('Profile'),
                ),
              ),
              const PopupMenuItem<String>(
                value: 'settings',
                child: ListTile(
                  leading: Icon(Icons.settings),
                  title: Text('Settings'),
                ),
              ),
              const PopupMenuItem<String>(
                value: 'like',
                child: ListTile(
                  leading: Icon(Icons.thumb_up),
                  title: Text('Like'),
                ),
              ),
              const PopupMenuItem<String>(
                value: 'logout',
                child: ListTile(
                  leading: Icon(Icons.logout),
                  title: Text('Logout'),
                ),
              ),
            ],
          ),
        ],
      ),
      body: Center(
        child: Text(_texts), // Display the selected option in the center
      ),
    );
  }
}
