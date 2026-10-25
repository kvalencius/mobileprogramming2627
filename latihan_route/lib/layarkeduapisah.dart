import 'package:flutter/material.dart';

class LayarKeduaPisah extends StatelessWidget {
  const LayarKeduaPisah({Key? key, required this.pesan}) : super(key: key);
  final String pesan;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Ini Screen 2'),
        ),
        body: Center(
            child: ElevatedButton(
          child: const Text("Ini screen kedua, tap icon back di app bar"),
          onPressed: () {
            Navigator.of(context).pop();
          }, 
        ),
      ),
    );
  }
}
