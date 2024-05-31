import 'package:flutter/material.dart';

class StateTeksUtama extends State<TeksUtama> {
  var listNama = [
    'Esta', 'Andi', 'Sari', 'Rudi',
    'Nurul', 'Huda', 'Lendis', 'Fabri'
  ];
  var listWarna = [
    Colors.red, Colors.purple, Colors.teal, Colors.lime,
    Colors.indigo, Colors.deepPurple, Colors.cyan,
    Colors.blue, Colors.yellow
  ];
  int index = 0;

  void incrementIndex () {
    setState(() {
      index++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 20, horizontal: 50),
      margin: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 235, 208, 231),
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Color.fromARGB(255, 110, 114, 116).withOpacity(0.3),
            spreadRadius: 5,
            blurRadius: 5,
            offset: Offset(30, 30), // Geser bayangan ke pojok kanan bawah
          ),
        ],
      ),
      child: Column(
        children: [
          Text(
            'Apa kabar',
            textDirection: TextDirection.ltr,
          ),
          Text(
            listNama[index % listNama.length],
            textDirection: TextDirection.ltr,
            style: TextStyle(
              fontSize: 45,
              fontWeight: FontWeight.bold,
              color: listWarna[index % listWarna.length],
            ),
          )
        ],
      ),
    );
  }
}

class TeksUtama extends StatefulWidget {
  final state = StateTeksUtama();

  @override
  State<StatefulWidget> createState() => state;
}

void main() {
  TeksUtama teksUtama = TeksUtama();

  runApp(
    MaterialApp(
      title: 'Halo Dunia',
      theme: ThemeData(
        primaryColor: Color.fromARGB(255, 157, 103, 163), // Warna latar belakang AppBar
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Halo Dunia',
            style: TextStyle(color: Colors.white), // Teks warna putih
          ),
          backgroundColor: Color.fromARGB(255, 157, 103, 163), // Warna latar belakang AppBar
        ),
        body: Center(
          child: Column(
            children: [
              teksUtama
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          tooltip: 'Random',
          child: Icon(Icons.refresh, color: Colors.white), // Ikon warna putih
          onPressed: teksUtama.state.incrementIndex,
          backgroundColor: Color.fromARGB(255, 157, 103, 163), // Warna biru pada tombol
        ),
      ),
    ),
  );
}
