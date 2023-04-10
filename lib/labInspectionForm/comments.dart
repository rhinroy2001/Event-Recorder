import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'data.dart';

class Comments extends StatefulWidget {
  const Comments({Key? key}) : super(key: key);

  @override
  CommentsState createState() {
    return CommentsState();
  }
}

class CommentsState extends State<Comments> {
  //final _formKey = GlobalKey<FormState>();
  TextEditingController controller = TextEditingController();

  @override
  void initState() {
    super.initState();
    controller.addListener(() {
      if (widget.key == Key("firesafety")) {
        data.fireSafetyController.text = controller.text;
      }
      if (widget.key == Key("signsandpostings")) {
        data.signsAndPostingsController.text = controller.text;
      }

      if (widget.key == Key("chemicalhygiene")) {
        data.chemicalHygieneController.text = controller.text;
      }
      if (widget.key == Key("labpractices")) {
        data.labPracticesController.text = controller.text;
      }
      if (widget.key == Key("chemicaluse")) {
        data.chemicalUseController.text = controller.text;
      }
      if (widget.key == Key("safetyequipment")) {
        data.safetyEquipmentController.text = controller.text;
      }
      if (widget.key == Key("hazardouswaste")) {
        data.hazardousWasteController.text = controller.text;
      }
      if (widget.key == Key("personalprotection")) {
        data.personalProtectionController.text = controller.text;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    // Build a Form widget using the _formKey created above.
    return Form(
        child: Column(
      children: [
        TextFormField(
          key: Key('comments'),
          controller: controller,
          keyboardType: TextInputType.multiline,
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            hintText: "Comment Box",
          ),
          minLines: 1,
          maxLines: 6,
          onEditingComplete: () {
            SystemChannels.textInput.invokeMethod('TextInput.hide');
          },
        ),
      ],
    ));
  }
}
