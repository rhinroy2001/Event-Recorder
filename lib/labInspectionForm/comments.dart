import 'package:flutter/material.dart';

class Comments extends StatefulWidget {
  const Comments({super.key, required this.controller});

  final TextEditingController controller;

  @override
  CommentsState createState() {
    return CommentsState();
  }
}

class CommentsState extends State<Comments> {
  //final _formKey = GlobalKey<FormState>();
  TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    // Build a Form widget using the _formKey created above.
    return Form(
        child: Column(
      children: [
        TextField(
          key: Key('comments'),
          controller: controller,
          keyboardType: TextInputType.multiline,
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            hintText: "Comment Box",
          ),
          minLines: 1,
          maxLines: 6,
        ),
      ],
    ));
  }
}
