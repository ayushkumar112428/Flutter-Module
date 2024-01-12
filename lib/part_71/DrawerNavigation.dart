import 'package:flutter/material.dart';

class DrawerNavigation extends StatefulWidget {
  const DrawerNavigation({super.key});

  @override
  State<DrawerNavigation> createState() => _DrawerNavigationState();
}

class _DrawerNavigationState extends State<DrawerNavigation> {
  int _currentIndex = 0;

  final List<Widget> _tabs = [
    const GalleryScreen(),
    const AudioScreen(),
    const VideoScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 2,
        title: const Center(
          child: Text("App"),
        ),
      ),
      body: _tabs[_currentIndex],
      drawer: Drawer(
        width: 300,
        child: Column(
          children: [
            DrawerHeader(
              child: const Text("Navigation Bar"),
              decoration: BoxDecoration(
                color: Colors.blueAccent,
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            ListTile(
              title: const Text('Gallery'),
              onTap: () {
                _selectDrawerItem(0);
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Audio'),
              onTap: () {
                _selectDrawerItem(1);
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Video'),
              onTap: () {
                _selectDrawerItem(2);
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }

  void _selectDrawerItem(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
}

class GalleryScreen extends StatelessWidget {
  const GalleryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Gallery Page - Dummy Data'),
    );
  }
}

class AudioScreen extends StatelessWidget {
  const AudioScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Audio Page - Dummy Data'),
    );
  }
}

class VideoScreen extends StatelessWidget {
  const VideoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Video Page - Dummy Data'),
    );
  }
}
