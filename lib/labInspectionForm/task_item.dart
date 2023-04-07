import 'package:flutter/material.dart';

import 'data.dart';

class TaskItem extends StatefulWidget {
  final String label;

  TaskItem({Key? key, required this.label}) : super(key: key);

  @override
  TaskItemState createState() => TaskItemState();
}

class TaskItemState extends State<TaskItem> {
  bool value = false;

  void update(bool value) {
    if (widget.key == Key("1")) {
      data.one = value;
    }
    if (widget.key == Key("2")) {
      data.two = value;
    }
    if (widget.key == Key("3")) {
      data.three = value;
    }
    if (widget.key == Key("4")) {
      data.four = value;
    }
    if (widget.key == Key("5")) {
      data.five = value;
    }
    if (widget.key == Key("6")) {
      data.six = value;
    }
    if (widget.key == Key("7")) {
      data.seven = value;
    }
    if (widget.key == Key("8")) {
      data.eight = value;
    }
    if (widget.key == Key("9")) {
      data.nine = value;
    }
    if (widget.key == Key("10")) {
      data.ten = value;
    }
    if (widget.key == Key("11")) {
      data.eleven = value;
    }
    if (widget.key == Key("12")) {
      data.twelve = value;
    }
    if (widget.key == Key("13")) {
      data.thirteen = value;
    }
    if (widget.key == Key("14")) {
      data.fourteen = value;
    }
    if (widget.key == Key("15")) {
      data.fifteen = value;
    }
    if (widget.key == Key("16")) {
      data.sixteen = value;
    }
    if (widget.key == Key("17")) {
      data.seventeen = value;
    }
    if (widget.key == Key("18")) {
      data.eighteen = value;
    }
    if (widget.key == Key("19")) {
      data.nineteen = value;
    }
    if (widget.key == Key("20")) {
      data.twenty = value;
    }
    if (widget.key == Key("21")) {
      data.twentyone = value;
    }
    if (widget.key == Key("22")) {
      data.twentytwo = value;
    }
    if (widget.key == Key("23")) {
      data.twentythree = value;
    }
    if (widget.key == Key("24")) {
      data.twentyfour = value;
    }
    if (widget.key == Key("25")) {
      data.twentyfive = value;
    }
    if (widget.key == Key("26")) {
      data.twentysix = value;
    }
    if (widget.key == Key("27")) {
      data.twentyseven = value;
    }
    if (widget.key == Key("28")) {
      data.twentyeight = value;
    }
    if (widget.key == Key("29")) {
      data.twentynine = value;
    }
    if (widget.key == Key("30")) {
      data.thirty = value;
    }
    if (widget.key == Key("31")) {
      data.thirtyone = value;
    }
    if (widget.key == Key("32")) {
      data.thirtytwo = value;
    }
    if (widget.key == Key("33")) {
      data.thirtythree = value;
    }
    if (widget.key == Key("34")) {
      data.thirtyfour = value;
    }
    if (widget.key == Key("35")) {
      data.thirtyfive = value;
    }
    if (widget.key == Key("36")) {
      data.thirtysix = value;
    }
    if (widget.key == Key("37")) {
      data.thirtyseven = value;
    }
    if (widget.key == Key("38")) {
      data.thirtyeight = value;
    }
    if (widget.key == Key("39")) {
      data.thirtynine = value;
    }
    if (widget.key == Key("40")) {
      data.forty = value;
    }
    if (widget.key == Key("41")) {
      data.fortyone = value;
    }
    if (widget.key == Key("42")) {
      data.fortytwo = value;
    }
    if (widget.key == Key("43")) {
      data.fortythree = value;
    }
    if (widget.key == Key("44")) {
      data.fortyfour = value;
    }
    if (widget.key == Key("45")) {
      data.fortyfive = value;
    }
    if (widget.key == Key("46")) {
      data.fortysix = value;
    }
    if (widget.key == Key("47")) {
      data.fortyseven = value;
    }
    if (widget.key == Key("48")) {
      data.fortyeight = value;
    }
    if (widget.key == Key("49")) {
      data.fortynine = value;
    }
    if (widget.key == Key("50")) {
      data.fifty = value;
    }
    if (widget.key == Key("51")) {
      data.fiftyone = value;
    }
    if (widget.key == Key("52")) {
      data.fiftytwo = value;
    }
    if (widget.key == Key("53")) {
      data.fiftythree = value;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Flex(
      direction: Axis.horizontal,
      children: [
        Checkbox(
          key: Key('checkbox' + widget.key.toString()),
          onChanged: (newValue) => setState(() {
            value = newValue!;
            update(value);
          }),
          value: value,
        ),
        Flexible(fit: FlexFit.loose, child: Text(widget.label))
      ],
    );
  }
}
