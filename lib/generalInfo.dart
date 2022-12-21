import 'package:flutter/material.dart';

class Info extends StatelessWidget {
  const Info({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 22),
          child: TextFormField(
            decoration: const InputDecoration(
              labelStyle: TextStyle(fontSize: 24),
              border: UnderlineInputBorder(),
              labelText: 'Date',
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 22),
          child: TextFormField(
            decoration: const InputDecoration(
              labelStyle: TextStyle(fontSize: 24),
              border: UnderlineInputBorder(),
              labelText: 'Faculty',
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 22),
          child: TextFormField(
            decoration: const InputDecoration(
              labelStyle: TextStyle(fontSize: 24),
              border: UnderlineInputBorder(),
              labelText: 'Building Room',
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 22),
          child: TextFormField(
            decoration: const InputDecoration(
              labelStyle: TextStyle(fontSize: 24),
              border: UnderlineInputBorder(),
              labelText: 'Department Division',
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 22),
          child: TextFormField(
            decoration: const InputDecoration(
              labelStyle: TextStyle(fontSize: 24),
              border: UnderlineInputBorder(),
              labelText: 'Inspector',
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 22),
          child: TextFormField(
            decoration: const InputDecoration(
              labelStyle: TextStyle(fontSize: 24),
              border: UnderlineInputBorder(),
              labelText: 'Phone',
            ),
          ),
        ),
      ],
    );
  }
}
