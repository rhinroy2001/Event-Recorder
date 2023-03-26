import 'package:flutter/material.dart';

class SubTaskItem extends StatefulWidget {
  final String label;

  SubTaskItem({Key? key, required this.label}) : super(key: key);

  @override
  SubTaskItemState createState() => SubTaskItemState();
}

class SubTaskItemState extends State<SubTaskItem> {
  bool? value = false;

  @override
  Widget build(BuildContext context) {
    return Flex(
      direction: Axis.horizontal,
      children: [
        SizedBox(width: 25),
        Checkbox(
            key: Key('checkbox' + widget.key.toString()),
            onChanged: (newValue) => setState(() => value = newValue),
            value: value),
        Flexible(fit: FlexFit.loose, child: Text(widget.label)),
      ],
    );
  }
}
