import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Custom buttons"),
        ),
        body: Center(
          child: Column(
            children: [
              SelectButton(),
              SizedBox(height: 20,),
              SelectButton(),
            ],
          ),
        ),
      ),
    ));

class SelectButton extends StatefulWidget {
  const SelectButton({super.key});

  @override
  State<SelectButton> createState() => _SelectButtonState();
}

class _SelectButtonState extends State<SelectButton> {
  bool selected = false;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 400,
      height: 100,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: selected ? Colors.blue[500] : Colors.blue[50],
        ),
        onPressed: () {
          setState(() {
            selected = !selected;
          });
        },
        child: Text(
          selected ? "Selected" : "Not selected",
          style: TextStyle(color: selected ? Colors.white : Colors.black),
        ),
      ),
    );
  }
}
