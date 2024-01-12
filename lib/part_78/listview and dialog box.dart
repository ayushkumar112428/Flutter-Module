import 'package:flutter/material.dart';

class ListviewAndDialogBox extends StatefulWidget {
  const ListviewAndDialogBox({super.key});

  @override
  State<ListviewAndDialogBox> createState() => _ListviewAndDialogBoxState();
}

class _ListviewAndDialogBoxState extends State<ListviewAndDialogBox> {
  final List<String> names = ["Ayush", "Ronak"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 3,
        title: const Center(child: Text("App"),),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.builder(itemCount: names.length,itemBuilder: (context,index){
          return Card(
            child: ListTile(
              title: Text(names[index]),
              onTap: (){
                _showDialog(names[index]);
              },
              onLongPress: (){
                _showPopupMenu(context, names[index], index);
              },
            ),
          );
        }),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          _addName();
        },
        child: const Icon(Icons.add),
      ),
    );
  }
  void _addName() async {
    final newName = await showDialog(
      context: context,
      builder: (BuildContext context) {
        String enteredName = '';
        return AlertDialog(
          title: const Text('Enter Name'),
          content: TextField(
            onChanged: (value) {
              enteredName = value;
            },
            decoration: const InputDecoration(hintText: 'Enter name'),
          ),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('Cancel'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop(enteredName);
              },
              child: const Text('Add'),
            ),
          ],
        );
      },
    );
    if (newName != null && newName.isNotEmpty) {
      setState(() {
        names.add(newName);
      });
    }
  }

  void _showDialog(String name) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Selected Name'),
          content: Text(name),
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

  void _showPopupMenu(BuildContext context, String name, int index) async {
    final result = await showMenu(
      context: context,
      position: const RelativeRect.fromLTRB(0, 100, 0, 0),
      items: [
        const PopupMenuItem(
          value: 'edit',
          child: Text('Edit Item'),
        ),
        const PopupMenuItem(
          value: 'delete',
          child: Text('Delete Item'),
        ),
      ],
      elevation: 8.0,
    );

    if (result == 'edit') {
      String? editedName = await _editName(name);
      if (editedName != null && editedName.isNotEmpty) {
        setState(() {
          names[index] = editedName;
        });
      }
    } else if (result == 'delete') {
      _confirmDelete(index);
    }
  }

  Future<String?> _editName(String oldName) async {
    return await showDialog<String>(
      context: context,
      builder: (BuildContext context) {
        String newName = oldName;
        return AlertDialog(
          title: const Text('Edit Name'),
          content: TextField(
            onChanged: (value) {
              newName = value;
            },
            controller: TextEditingController(text: oldName),
            decoration: const InputDecoration(hintText: 'Enter edited name'),
          ),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('Cancel'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop(newName);
              },
              child: const Text('Update'),
            ),
          ],
        );
      },
    );
  }

  void _confirmDelete(int index) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Confirm Delete'),
          content: const Text('Are you sure you want to delete this item?'),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('No'),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  names.removeAt(index);
                });
                Navigator.of(context).pop();
              },
              child: const Text('Yes'),
            ),
          ],
        );
      },
    );
  }
}
