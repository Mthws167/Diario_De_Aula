import 'package:flutter/material.dart';
import 'dart:ui';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Color myHexColor = const Color(0xFF00BF63);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(20.0), // here the desired height
          child: AppBar(
            backgroundColor: myHexColor,
          ),
        ),
        body: Column(
          children: [
             Container(
              alignment: Alignment.center,
              child: const Text(
                '',
                style: TextStyle(fontSize: 20),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                'Turmas',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Expanded(child: YearList()),
          ],
        ),
      ),
    );
  }
}

class YearList extends StatelessWidget {
  final List<String> years = ['4º ano', '3º ano', '2º ano', '1º ano'];
  Color myHexColor = const Color(0xFF00BF63);
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: years.length,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => DetailScreen(year: years[index]),
              ),
            );
          },
          child: Container(
            margin: const EdgeInsets.all(10),
            padding: const EdgeInsets.all(5),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(30),
              border: Border.all(width: 5, color: myHexColor),
            ),
            child: Center(
              child: Text(
                years[index],
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}

class DetailScreen extends StatelessWidget {
  final String year;

  DetailScreen({required this.year});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detalhes do Ano Escolar'),
      ),
      body: Center(
        child: Text(
          'Detalhes do ano: $year',
          style: const TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}