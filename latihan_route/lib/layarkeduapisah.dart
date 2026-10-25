import 'package:flutter/material.dart';

class LayarKeduaPisah extends StatelessWidget {
  const LayarKeduaPisah({Key? key, required this.pesan});
  final String pesan;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Ini Screen 2')),
      body: Center(
        child: ElevatedButton(
          child: Text(
            pesan.isEmpty
                ? "screen kedua, tap icon back di app bar"
                : "Ini screen kedua pisah,ada Pesan : $pesan",
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
    );
  }
}
