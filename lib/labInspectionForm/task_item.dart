import 'package:flutter/material.dart';

class TaskItem extends StatefulWidget {
  final String label;

  TaskItem({Key? key, required this.label}) : super(key: key);

  @override
  TaskItemState createState() => TaskItemState();
}

class TaskItemState extends State<TaskItem> {
  bool? value = false;

  @override
  Widget build(BuildContext context) {
    return Flex(
      direction: Axis.horizontal,
      children: [
        Checkbox(
          key: Key('checkbox' + widget.key.toString()),
          onChanged: (newValue) => setState(() => value = newValue),
          value: value,
        ),
        Flexible(fit: FlexFit.loose, child: Text(widget.label))
      ],
    );
  }
}
