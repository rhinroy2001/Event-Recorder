import 'package:flutter/material.dart';
import 'package:event_recorder/main.dart';
import 'lif_general_fire_safety.dart';

class Info extends StatelessWidget {
  const Info({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('General Information'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 22),
              child: TextFormField(
                decoration: const InputDecoration(
                  //labelStyle: TextStyle(fontSize: 24),
                  border: UnderlineInputBorder(),
                  labelText: 'Date',
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 22),
              child: TextFormField(
                decoration: const InputDecoration(
                  // labelStyle: TextStyle(fontSize: 24),
                  border: UnderlineInputBorder(),
                  labelText: 'Faculty',
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 22),
              child: TextFormField(
                decoration: const InputDecoration(
                  //labelStyle: TextStyle(fontSize: 24),
                  border: UnderlineInputBorder(),
                  labelText: 'Building Room',
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 22),
              child: TextFormField(
                decoration: const InputDecoration(
                  // labelStyle: TextStyle(fontSize: 24),
                  border: UnderlineInputBorder(),
                  labelText: 'Department Division',
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 22),
              child: TextFormField(
                decoration: const InputDecoration(
                  //labelStyle: TextStyle(fontSize: 24),
                  border: UnderlineInputBorder(),
                  labelText: 'Inspector',
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 22),
              child: TextFormField(
                decoration: const InputDecoration(
                  // labelStyle: TextStyle(fontSize: 24),
                  border: UnderlineInputBorder(),
                  labelText: 'Phone',
                ),
              ),
            ),
            Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
              ElevatedButton(
                onPressed: () {
                  main();
                },
                child: const Text('Cancel', // Need a warning pop up
                    style: TextStyle(fontSize: 20)),
              ),
              ElevatedButton(
                onPressed: () {
                  //FireSafety();
                },
                child: const Text('Next', style: TextStyle(fontSize: 20)),
              ),
            ])
          ]),
        ),
      ),
    );
  }
}
