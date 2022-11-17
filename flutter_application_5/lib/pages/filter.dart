import 'package:dropdown_plus/dropdown_plus.dart';
import 'package:flutter/material.dart';

class FilterBy extends StatefulWidget {
  const FilterBy({super.key});

  @override
  State<FilterBy> createState() => _FilterByState();
}

class _FilterByState extends State<FilterBy> {
  final List<Map<String, dynamic>> _roles = [
    {"name": "Dr.Fred Mask", "desc": "Heart Surgen"},
    {"name": "Dr.Stella Kane","desc": "Bone Specialist"},
    {"name": "Dr.Zac Wolff","desc": "Eyes Specialist"},
    {"name": "Dr.Jewels Kane","desc": "Brain Specialist"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
         backgroundColor: Color.fromARGB(255, 87, 30, 193),
        title: Text('Filter',
         style: TextStyle(color: Colors.orange, fontWeight: FontWeight.bold),
         ),
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            TextDropdownFormField(
              options: ["16 Nov", "17 Nov","18 Nov","19 Nov"],
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  suffixIcon: Icon(Icons.arrow_drop_down),
                  labelText: "Date"),
              dropdownHeight: 220,
            ),
            SizedBox(
              height: 16,
            ),
            DropdownFormField<Map<String, dynamic>>(
              onEmptyActionPressed: () async {},
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  suffixIcon: Icon(Icons.arrow_drop_down),
                  labelText: "Doctors"),
              onSaved: (dynamic str) {},
              onChanged: (dynamic str) {},
              validator: (dynamic str) {},
              displayItemFn: (dynamic item) => Text(
                (item ?? {})['name'] ?? '',
                style: TextStyle(fontSize: 16),
              ),
              findFn: (dynamic str) async => _roles,
              selectedFn: (dynamic item1, dynamic item2) {
                if (item1 != null && item2 != null) {
                  return item1['name'] == item2['name'];
                }
                return false;
              },
              filterFn: (dynamic item, str) =>
                  item['name'].toLowerCase().indexOf(str.toLowerCase()) >= 0,
              dropdownItemFn: (dynamic item, int position, bool focused,
                      bool selected, Function() onTap) =>
                  ListTile(
                title: Text(item['name']),
                subtitle: Text(
                  item['desc'] ?? '',
                ),
                tileColor:
                    focused ? Color.fromARGB(19, 217, 5, 5) : Colors.transparent,
                onTap: onTap,
              ),
            ),
            SizedBox(
              height: 16,
            ),
            TextDropdownFormField(
              options: ["Tooth", "Brain","Heart","Bone"],
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  suffixIcon: Icon(Icons.arrow_drop_down),
                  labelText: "Departements"),
              dropdownHeight: 220,
            )
          ],
        ),
      ),
    );
  }
}