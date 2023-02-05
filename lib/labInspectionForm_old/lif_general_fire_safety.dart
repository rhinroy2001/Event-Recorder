import 'package:flutter/material.dart';
import 'package:event_recorder/main.dart';
import 'lif_general_info.dart';

class FireSafety extends StatelessWidget {
  const FireSafety({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Hide the debug banner
      debugShowCheckedModeBanner: false,
      title: 'Lab Safety Inspection Form',
      theme: ThemeData(
          // use Material 3
          useMaterial3: true),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // Generate a list of task
  List<Map> tasks = [
    {
      "name": "Aisles and walkways not free of tripping hazards",
      "isChecked": false
    },
    {
      "name":
          "High shelves and/or cabinet tops have items which may fall and injure someone",
      "isChecked": false
    },
    {
      "name":
          "Empty containers, boxes and broken equipment not promptly discarded ",
      "isChecked": false,
    },
    {
      "name": "Emergency exit or egress route blocked or poorly accessible",
      "isChecked": false
    },
    {
      "name": "Power cord found in poor condition or not tie wrapped",
      "isChecked": false
    },
    {
      "name": "Energized electric panel uncovered and/or blocked",
      "isChecked": false
    },
    {
      "name": "Portable elctric heater used in the laboratory",
      "isChecked": false
    },
    {
      "name":
          "Failure to remedate non-hazardous chemical release within a timely manner",
      "isChecked": false
    },
    {"name": "Laboratory doors propped open", "isChecked": false},
    {
      "name": "Items stored within 18 inches of the ceiling",
      "isChecked": false
    },
    {
      "name": "Workers do not use a safe platform for climbing",
      "isChecked": false
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('General Fire Safety'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            // The checkboxes will be here
            Column(
                children: tasks.map((item) {
              return CheckboxListTile(
                  value: item["isChecked"],
                  title: Text(item["name"]),
                  onChanged: (newValue) {
                    setState(() {
                      item["isChecked"] = newValue;
                    });
                  });
            }).toList()),

            // Display the result here
            /* const SizedBox(height: 10),
            const Divider(),
            const SizedBox(height: 10),
            Wrap(
              children: tasks.map((item) {
                if (item["isChecked"] == true) {
                  return Card(
                    elevation: 3,
                    color: Colors.amber,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(item["name"]),
                    ),
                  );
                }

                return Container();
              }).toList(),
            ) */
          ]),
        ),

      ),
    );
  }
}
