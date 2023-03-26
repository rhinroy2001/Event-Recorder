import 'package:flutter/material.dart';

class ConfirmTask extends StatefulWidget {
  final String label;

  ConfirmTask({Key? key, required this.label}) : super(key: key);

  @override
  ConfirmTaskState createState() => ConfirmTaskState();
}

class ConfirmTaskState extends State<ConfirmTask> {
  bool? value = false;

  @override
  Widget build(BuildContext context) {
    return Flex(
      direction: Axis.horizontal,
      children: [
        Flexible(
          fit: FlexFit.loose,
          child: Row(
            children: [
              //SizedBox(width: 25),
              Checkbox(
                  onChanged: (newValue) => setState(() => value = newValue),
                  value: value,
                  key: Key('checkbox' + widget.key.toString())),
              Text(widget.label, style: TextStyle(fontWeight: FontWeight.bold)),
            ],
          ),
        )
      ],
    );
  }
}
