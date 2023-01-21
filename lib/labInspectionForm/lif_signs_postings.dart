import 'package:flutter/material.dart';
import 'package:event_recorder/main.dart';
import 'lif_general_info.dart';
import 'lif_chemical_hygiene_plan.dart';

class SignsPostings extends StatelessWidget {
  const SignsPostings({Key? key}) : super(key: key);

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
      "name": "Lab specific emergency contact list not updated or posted",
      "isChecked": false
    },
    {
      "name": "Emergency Produres not posted by the laboratory phone",
      "isChecked": false
    },
    {
      "name":
          "Laboratory refrigerators/freezer/microwaves not labeled \"Not for Food Use /\"Not for Flammable Liquid Storage",
      "isChecked": false,
    },
    {
      "name": "Cabinets and/or storage areas not labeled properly",
      "isChecked": false
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Signs and Postings'),
      ),
      floatingActionButton:
          Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
        /* FloatingActionButton(
            child: const Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            }), */
        FloatingActionButton(
            child: const Icon(Icons.arrow_forward),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const ChemicalHygienePlan()),
              );
            }),
      ]),
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
