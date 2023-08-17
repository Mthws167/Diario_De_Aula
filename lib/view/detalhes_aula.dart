import 'package:flutter/material.dart';

class DateDetailsPage extends StatelessWidget {
  final String date;

  DateDetailsPage(this.date);

  @override
  Widget build(BuildContext context) {
    Color myHexColor = const Color(0xFF00BF63);
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(40.0),
        child: AppBar(
          backgroundColor: myHexColor,
        ),
      ),
      body: DateDetails(date),
    );
  }
}

class DateDetails extends StatefulWidget {
  final String date;

  DateDetails(this.date);

  @override
  _DateDetailsState createState() => _DateDetailsState();
}

class _DateDetailsState extends State<DateDetails> {
  final List<String> objectives = ['Objetivo 1', 'Objetivo 2', 'Objetivo 3'];
  String feedback = '';
  String concept = 'D'; // Definir um valor inicial padrão
  Color myHexColor = const Color(0xFF00BF63);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Detalhes da Data: ${widget.date}',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text('Objetivos de Aula:', style: TextStyle(fontSize: 18)),
            Column(
              children: objectives
                  .map((objective) => Row(
                        children: [
                          Checkbox(value: false, onChanged: (value) {
                            if (value == true){
                              value = false;
                            }else{
                              value = true;
                            }
                          }),
                          Text(objective),
                        ],
                      ))
                  .toList(),
            ),
            SizedBox(height: 10),
            Text('Feedback:', style: TextStyle(fontSize: 18)),
            TextField(
              onChanged: (value) {
                feedback = value;
              },
              decoration: InputDecoration(
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 10),
            Text('Conceito:', style: TextStyle(fontSize: 18)),
            DropdownButtonFormField<String>(
              onChanged: (value) {
                setState(() {
                  concept = value!;
                });
              },
              value: concept,
              items: ['A', 'B', 'C', 'D']
                  .map((grade) => DropdownMenuItem<String>(
                        value: grade,
                        child: Text(grade),
                      ))
                  .toList(),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                // TODO: Save data and dismiss the page
                Navigator.pop(context);
              },
              child: Text('Salvar'),
              style: ButtonStyle(
                  backgroundColor:
                      MaterialStateColor.resolveWith((states) => myHexColor),
                  fixedSize: MaterialStateProperty.resolveWith(
                      (states) => Size(0, 20))),
            ),
          ],
        ),
      ),
    );
  }
}
