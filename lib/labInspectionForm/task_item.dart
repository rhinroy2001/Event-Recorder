import 'package:flutter/material.dart';

import 'data.dart';

class TaskItem extends StatefulWidget {
  final String label;
  bool? isChecked;

  TaskItem({Key? key, required this.label, required this.isChecked})
      : super(key: key);

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
          onChanged: (newValue) => setState(() {
            value = newValue;
            widget.isChecked = newValue;
          }),
          value: value,
        ),
        Flexible(fit: FlexFit.loose, child: Text(widget.label))
      ],
    );
  }
}
