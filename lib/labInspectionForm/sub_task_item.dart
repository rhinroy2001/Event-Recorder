import 'package:flutter/material.dart';
import 'data.dart';

class SubTaskItem extends StatefulWidget {
  final String label;

  SubTaskItem({Key? key, required this.label}) : super(key: key);

  @override
  SubTaskItemState createState() => SubTaskItemState();
}

class SubTaskItemState extends State<SubTaskItem> {
  bool value = false;

  void update(bool value) {
    if (widget.key == Key("18a")) {
      data.eighteenA = value;
    }
    if (widget.key == Key("18b")) {
      data.eighteenB = value;
    }
    if (widget.key == Key("33a")) {
      data.thirtythreeA = value;
    }
    if (widget.key == Key("33b")) {
      data.thirtythreeB = value;
    }
    if (widget.key == Key("33c")) {
      data.thirtythreeC = value;
    }
    if (widget.key == Key("40a")) {
      data.fortyA = value;
    }
    if (widget.key == Key("40b")) {
      data.fortyB = value;
    }
    if (widget.key == Key("44a")) {
      data.fortyfourA = value;
    }
    if (widget.key == Key("44b")) {
      data.fortyfourB = value;
    }
    if (widget.key == Key("44c")) {
      data.fortyfourC = value;
    }
    if (widget.key == Key("44d")) {
      data.fortyfourD = value;
    }
    if (widget.key == Key("45a")) {
      data.fortyfiveA = value;
    }
    if (widget.key == Key("45b")) {
      data.fortyfiveB = value;
    }
    if (widget.key == Key("46a")) {
      data.fortysixA = value;
    }
    if (widget.key == Key("46b")) {
      data.fortysixB = value;
    }
    if (widget.key == Key("46c")) {
      data.fortysixC = value;
    }
    if (widget.key == Key("47a")) {
      data.fortysevenA = value;
    }
    if (widget.key == Key("47b")) {
      data.fortysevenB = value;
    }
    if (widget.key == Key("47c")) {
      data.fortysevenC = value;
    }
    if (widget.key == Key("47d")) {
      data.fortysevenD = value;
    }
    if (widget.key == Key("48a")) {
      data.fortyeightA = value;
    }
    if (widget.key == Key("48b")) {
      data.fortyeightB = value;
    }
    if (widget.key == Key("48c")) {
      data.fortyeightC = value;
    }
    if (widget.key == Key("49a")) {
      data.fortynineA = value;
    }
    if (widget.key == Key("49b")) {
      data.fortynineB = value;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Flex(
      direction: Axis.horizontal,
      children: [
        SizedBox(width: 25),
        Checkbox(
            key: Key('checkbox' + widget.key.toString()),
            onChanged: (newValue) => setState(() {
                  value = newValue!;
                  update(value);
                }),
            value: value),
        Flexible(fit: FlexFit.loose, child: Text(widget.label)),
      ],
    );
  }
}
