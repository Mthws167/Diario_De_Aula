import 'package:diario_aula/view/main_drawer.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class FeedbackScreen extends StatefulWidget {
  @override
  _FeedbackScreenState createState() => _FeedbackScreenState();
}

class _FeedbackScreenState extends State<FeedbackScreen> {
  bool _checkboxValue = false;
  String _feedback = '';
  String _autoAvaliacao = '';
  DateTime _selectedDate = DateTime.now();

  _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: _selectedDate,
      firstDate: DateTime(2000),
      lastDate: DateTime(2101),
    );
    if (picked != null && picked != _selectedDate)
      setState(() {
        _selectedDate = picked;
      });
  }

  @override
  Widget build(BuildContext context) {
    Color myHexColor = const Color(0xFF00BF63);
    return Scaffold(
      appBar: AppBar(
        title: Text('Solicitar Feedback'),
        backgroundColor: myHexColor,
      ),
      drawer: MainDrawer(),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Text(
                    'Aula:',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(width: 10),
                  ElevatedButton(
                    onPressed: () => _selectDate(context),
                    child: Text(DateFormat('dd/MM/yyyy')
                        .format(_selectedDate)), // Formate a data aqui
                    style: ElevatedButton.styleFrom(
                      primary: myHexColor, // Cor do botão da data
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Text('Objetivos de Aula:', style: TextStyle(fontSize: 16)),
              Row(
                children: <Widget>[
                  Checkbox(
                    value: _checkboxValue,
                    onChanged: (bool? value) {
                      setState(() {
                        _checkboxValue = value!;
                      });
                    },
                  ),
                  Expanded(
                    child: Text('Compreender SOLID'),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Text('Feedback:', style: TextStyle(fontSize: 16)),
              TextField(
                onChanged: (text) {
                  _feedback = text;
                },
                decoration: InputDecoration(
                  hintText: 'Digite o feedback',
                  border: OutlineInputBorder(),
                ),
                maxLines: 5,
              ),
              SizedBox(height: 20),
              Row(
                children: <Widget>[
                  Text('Auto-avaliação:', style: TextStyle(fontSize: 16)),
                  SizedBox(width: 10),
                  Container(
                    width: 50,
                    child: TextField(
                      onChanged: (text) {
                        _autoAvaliacao = text;
                      },
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 30),
              Center(
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text('Solicitar'),
                  style: ElevatedButton.styleFrom(
                    primary: myHexColor,
                    minimumSize: Size(200, 50),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
