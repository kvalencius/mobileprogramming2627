import 'package:flutter/material.dart';
import 'package:latihan_route/layarkeduapisah.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Test Route',
      //atribut home dihapus!
      routes: {
        '/': (context) => const MyHome(),
        '/layar2': (context) => const LayarKeduaPisah(
          pesan: "haloo ini pesan dari screen 1",
        ),
      },
    );
  }
}

class MyHome extends StatefulWidget {
  const MyHome({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return MyHomeState();
  }
}

class MyHomeState extends State<MyHome> {
  String _hasil = "";

  set hasil(String hasil) {
    _hasil = hasil;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Test Route')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              child: const Text('Ke screen Kedua'),
              onPressed: () {
                Navigator.of(context).pushNamed("/layar2");
              },
            ),
            Text(" Hasil: $_hasil"),
          ],
        ),
      ),
    );
  }
}
