import 'package:flutter/material.dart';

class BallotOption extends StatefulWidget {
  final String candidateName;
  final Function(bool isSelected) onSelect;

  BallotOption({required this.candidateName, required this.onSelect});

  @override
  _BallotOptionState createState() => _BallotOptionState();
}

class _BallotOptionState extends State<BallotOption> {
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(widget.candidateName),
      leading: Checkbox(
        value: isSelected,
        onChanged: (value) {
          setState(() {
            isSelected = value!;
            widget.onSelect(isSelected);
          });
        },
      ),
    );
  }
}
