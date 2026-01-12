import 'package:flutter/material.dart';
class MyRadio extends StatefulWidget {
  const MyRadio({super.key});

  @override
  State<MyRadio> createState() => _MyRadioState();
}

class _MyRadioState extends State<MyRadio> {
  List<String> radioOptions=["najma","siham","safiya"];
  String? selectedRadiooption;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Radio Button Example"),),
      body: Column(
        children: [
          Column(
            children: radioOptions.map((option){
              return RadioListTile<String>(
                title: Text(option),
                value: option,
                groupValue: selectedRadiooption,
                onChanged: (String? value){
                  setState(() {
                    selectedRadiooption=value;
                  });
                },
              );
            }).toList(),
          ),
          Text("selected Radio Option: $selectedRadiooption",
              style: TextStyle(fontSize: 16)),
        ],
      ),
    );
  }
}
