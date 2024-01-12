import 'package:flutter/material.dart';

class ContextMenu extends StatefulWidget {
  const ContextMenu({super.key});

  @override
  State<ContextMenu> createState() => _ContextMenuState();
}

class _ContextMenuState extends State<ContextMenu> {
  final TextEditingController _newName = TextEditingController();
  List<String> items = [
    'Car',
    'Pan',
    'Laptop',
    'Bag',
    'Watch',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey.shade300,
        elevation: 3,
        title: const Center(child: Text('Context Menu Example',style: TextStyle(color: Colors.black,fontSize: 25,fontWeight: FontWeight.w500),)),
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(5.0),
            child: Card(
              child: ListTile(
                title: Text(items[index]),
                onLongPress: () {
                  _showContextMenu(context,index);
                },
              ),
            ),
          );
        },
      ),
    );
  }

  void _showContextMenu(BuildContext context,int index) {
    final String selectedItem = items[index];
    showMenu<String>(
      context: context,
      position: const RelativeRect.fromLTRB(0, 0, 0, 0),
      items: <PopupMenuEntry<String>>[
        const PopupMenuItem<String>(
          value: 'edit',
          child: ListTile(
            leading: Icon(Icons.edit),
            title: Text('Edit'),
          ),
        ),
        const PopupMenuItem<String>(
          value: 'view',
          child: ListTile(
            leading: Icon(Icons.visibility),
            title: Text('View'),
          ),
        ),
        const PopupMenuItem<String>(
          value: 'delete',
          child: ListTile(
            leading: Icon(Icons.delete),
            title: Text('Delete'),
          ),
        ),
      ],
    ).then((String? selectedValue) {
      // Handle selected option here
      if (selectedValue != null) {
        switch (selectedValue) {
          case 'edit':
            _editItem(selectedItem, index);
            break;
          case 'view':
            _viewItem(selectedItem,index);
            break;
          case 'delete':
            _deleteItem(index);
            break;
          default:
            break;
        }
      }
    });
  }

  void _editItem(String selectedItem, int index) {
    // Perform edit operation on the selected item
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Create a new title',style: TextStyle(color: Colors.red,fontWeight: FontWeight.w500),),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const SizedBox(height: 10),
              TextField(
                controller: _newName,
                decoration: InputDecoration(
                  labelText: 'Enter New Name',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ],
          ),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                setState(() {
                  items[index] = _newName.text;
                });
                Navigator.of(context).pop();
              },
              child: const Text('OK'),
            ),
          ],
        );
      },
    );
  }

  void _viewItem(String selectedItem,int index) {
    showDialog(context: context, builder: (BuildContext context){
      return AlertDialog(
        title: Text(items[index]),
        content: const Text("Items is very good work. This is flexible and easy to use. Item price is ₹500."),
        actions: [
          ElevatedButton(onPressed: (){Navigator.of(context).pop();}, child: const Center(child: Text("Ok"),))
        ],
      );
    });
  }
  void _deleteItem(int index) {
    setState(() {
      items.removeAt(index);
    });
  }

}
