import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Align(
          alignment: Alignment.centerLeft, // Atur posisi ke kiri
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start, // Atur alignment untuk children
            children: [
              TeksUtama(
                teks1: 'RUSMIATI',
                teks2: 'Nim: STI202102160 ',
              ),
              TeksUtama(
                teks1: 'LINDA SENJA ANGGRAENI',
                teks2: ' Nim: STI202102168',
              ),
              Container( 
                color: Color.fromARGB(255, 196, 89, 187), 
                child: TeksUtama(
                  teks1: 'AULIYA AHDA WANNURA',
                  teks2: 'Nim: STI202102214 ',
                ),
              ),
              TeksUtama(
                teks1: 'DEA AVILA',
                teks2: 'Nim : STI202102175',
              ),
              TeksUtama(
                teks1: 'WIDYANTIKA',
                teks2: 'Nim: STI202102181',
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class TeksUtama extends StatelessWidget {
  final String teks1;
  final String teks2;

  TeksUtama({required this.teks1, required this.teks2});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start, // Atur alignment untuk children
      children: [
        Text(
          teks1,
          textDirection: TextDirection.ltr,
          style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.bold,
            color: Color.fromARGB(255, 4, 61, 9),
          ),
        ),
        Text(
          teks2,
          textDirection: TextDirection.ltr,
        ),
      ],
    );
  }
}