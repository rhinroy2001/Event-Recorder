import 'package:flutter/material.dart';
import 'lif_general_info.dart';
import 'lif_chemical_hygiene_plan.dart';
import 'lif_chemical_use_storage.dart';
import 'lif_lab_practices.dart';

void labInspection() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Event Recorder',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: DefaultTabController(
        length: 9,
        child: Scaffold(
          appBar: AppBar(
            bottom: const TabBar(
              tabs: [
                Tab(text: 'General Information'), // General Information
                Tab(text: 'General Fire Safety'), // General Fire Safety
                Tab(text: 'Signs and Posting'), // Signs and Posting
                Tab(text: 'Laboratory Practices'), // Laboratory Practices
                Tab(text: 'Chemical Hygiene Plan'), // Chemical Hygiene Plan
                Tab(text: 'Chemical Use and Storage'), // Chem Use & Storage
                Tab(text: 'Safety Equipment'), // Safety Equipment
                Tab(text: 'Hazardous Waste Compliance'), // HazWasteCompliance
                Tab(text: 'Personal Protection'), // Personal Protection
              ],
            ),
            title: const Text('Lab Inspection Form'),
          ),
          body: const TabBarView(
            // TODO: Replace Icon items with the correct calls to the corresponding tab
            children: [
              Info(), // General Information
              Icon(Icons.directions_transit), // General Fire Safety
              Icon(Icons.directions_transit), // Signs and Posting
              LabPractices(), // Laboratory Practices
              ChemicalHygienePlan(), // Chemical Hygiene Plan
              ChemicalUseStorage(), // Chemical Use and Storage
              Icon(Icons.directions_transit), // Safety Equipment
              Icon(Icons.directions_transit), // Hazardous Waste Compliance
              Icon(Icons.directions_transit), // Personal Protection
            ],
          ),
        ),
      ),
    );
  }
}

class LabForm extends StatefulWidget {
  const LabForm({super.key, required this.title});
  final String title;

  @override
  State<LabForm> createState() => _LabForm();
}

class _LabForm extends State<LabForm> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: const Info(),
    );
  }
}
