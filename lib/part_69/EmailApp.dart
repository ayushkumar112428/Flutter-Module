import 'package:flutter/material.dart';

class EmailApp extends StatefulWidget {
  const EmailApp({super.key});

  @override
  State<EmailApp> createState() => _EmailAppState();
}

class _EmailAppState extends State<EmailApp> {
  int _currentIndex = 0;
  final List<Widget> _screens = [
    const InboxScreen(),
    const SentScreen(),
    const DraftsScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        elevation: 3,
        title: const Center(child: Text("GIML",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500,fontSize: 25),)),
      ),
      body: _screens[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index){
          setState(() {
            _currentIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.inbox),
            label: 'Inbox',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.send),
            label: 'Sent',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.drafts),
            label: 'Drafts',
          ),
        ],
      ),
    );
  }
}

class InboxScreen extends StatelessWidget {
  const InboxScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 20,
      itemBuilder: (context, index) {
        return ListTile(
          leading: const CircleAvatar(
            child: Text('A'),
          ),
          title: Text('Sender ${index+1}'),
          subtitle: Text('Subject ${index+1}'),
          trailing: const Text('Today'),
        );
      },
    );
  }
}

class SentScreen extends StatelessWidget {
  const SentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Sent Items'),
    );
  }
}

class DraftsScreen extends StatelessWidget {
  const DraftsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Drafts'),
    );
  }
}