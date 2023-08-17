import 'package:diario_aula/view/detalhes_aula.dart';
import 'package:flutter/material.dart';

import 'main_drawer.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Color myHexColor = const Color(0xFF00BF63);
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
        backgroundColor: myHexColor,
      ),
      drawer: MainDrawer(),
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
              'Fulano da Silva Vicente',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Expanded(child: DateList()),
        ],
      ),
    );
  }
}

class DateList extends StatelessWidget {
  final List<String> dates = ['17/08/2023', '24/08/2023', '31/08/2023'];
  Color myHexColor = const Color(0xFF00BF63);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: dates.length,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            // TODO: Import or define DateDetailsPage
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => DateDetailsPage(dates[index]),
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
                dates[index],
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
