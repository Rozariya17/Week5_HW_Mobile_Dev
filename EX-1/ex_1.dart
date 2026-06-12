import 'package:flutter/material.dart';

void main() => runApp(
  MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      appBar: AppBar(title: const Text("Custom buttons")),
      body: Center(
        child: Column(
          children: [SelectButton(), SizedBox(height: 20), SelectButton()],
        ),
      ),
    ),
  ),
);

class SelectButton extends StatefulWidget {
  const SelectButton({super.key});

  @override
  State<SelectButton> createState() => _SelectButtonState();
}

class _SelectButtonState extends State<SelectButton> {
  bool selected = false;

  String get selectedLabel => selected ? "Selected" : "Not selected";

  Color get textColor => selected ? Colors.white : Colors.black;

  Color get backgroundcolor => selected ? Colors.blue.shade500 : Colors.blue.shade50;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 400,
      height: 100,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: backgroundcolor,
        ),
        onPressed: () {
          setState(() {
            selected = !selected;
          });
        },
        child: Text(selectedLabel, style: TextStyle(color: textColor)),
      ),
    );
  }
}
