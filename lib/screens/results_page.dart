import 'package:flutter/material.dart';
import 'package:simpleprojet/screens/questions_page.dart';

class ResultsPage extends StatelessWidget {
  final List<String> answers;

  const ResultsPage({Key? key, required this.answers}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Résultats'),
      ),
      body: Column(
        children: <Widget>[
          ...List.generate(answers.length, (index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('Question ${index + 1}: ${answers[index]}'),
            );
          }),
        ],
      ),
    );
  }
}
