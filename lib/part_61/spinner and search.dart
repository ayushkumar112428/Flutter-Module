import 'package:flutter/material.dart';

class SpinnerAndSearch extends StatefulWidget {
  const SpinnerAndSearch({super.key});

  @override
  State<SpinnerAndSearch> createState() => _SpinnerAndSearchState();
}

class _SpinnerAndSearchState extends State<SpinnerAndSearch> {
  String? _selectedItem;
  List<String> dropDownListData = ["Dart", "Python", "Java", "C++", "C"];

  final TextEditingController _searchController = TextEditingController();
  List<String> itemsData = [
    'Apple',
    'Banana',
    'Cherry',
    'Dates',
    'Elderberry',
    'Fig',
    'Grapes',
    'Honeydew',
    'Jackfruit',
    'Kiwi',
    'Lemon',
    'Mango'
  ];
  List<String> displayList = [];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    displayList = itemsData;
  }

  void filterList(String searchText) {
    setState(() {
      if (searchText.isEmpty) {
        displayList = itemsData;
      } else {
        displayList = itemsData.where((element) {
          return element.toLowerCase().contains(searchText.toLowerCase());
        }).toList();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text("My App")),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            InputDecorator(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15.0)),
                contentPadding: const EdgeInsets.all(10),
              ),
              child: DropdownButton<String>(
                menuMaxHeight: 200,
                value: _selectedItem,
                items: [
                  const DropdownMenuItem(
                    value: null,
                    child: Text(
                      "Select Course",
                    ),
                  ),
                  ...dropDownListData.map<DropdownMenuItem<String>>((data) {
                    return DropdownMenuItem(
                      value: data,
                      child: Text(data),
                    );
                  }).toList(),
                ],
                onChanged: (String? newValue) {
                  if (newValue != null) {
                    setState(() {
                      _selectedItem = newValue;
                    });
                  }
                },
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            TextField(
              controller: _searchController,
              decoration: InputDecoration(
                labelText: 'Search',
                prefixIcon: const Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
              onChanged: filterList,
            ),
            Expanded(
              child: ListView.builder(
                itemCount: displayList.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(displayList[index]),
                    // You can add onTap functionality here for list items
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
