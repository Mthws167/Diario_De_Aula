import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Color.fromARGB(0, 1, 255, 56)
      ),
      home: Scaffold(
        appBar: AppBar(
        ),
        body: YearList(),
      ),
    );
  }
}

class YearList extends StatelessWidget {
  final List<String> years = ['4º ano', '3º ano', '2º ano', '1º ano'];

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
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.green,
              borderRadius: BorderRadius.circular(15),
            ),
            child: Text(
              years[index],
              style: const TextStyle(
                color: Colors.white,
                fontSize: 18,
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
