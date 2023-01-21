import 'package:flutter/material.dart';
import 'package:simpleprojet/screens/results_page.dart';

class QuestionnairePage extends StatefulWidget {
  @override
  _QuestionnairePageState createState() => _QuestionnairePageState();
}

class _QuestionnairePageState extends State<QuestionnairePage> {
  final _formKey = GlobalKey<FormState>();
  List<String> questions = [
    'Quel est votre nom?',
    'Quel est votre couleur préférée?',
    'Quel est votre animal préféré?'
  ];
  List<TextEditingController> answers = [
    TextEditingController(),
    TextEditingController(),
    TextEditingController(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Questionnaire'),
      ),
      body: Form(
        key: _formKey,
        child: Column(
          children: <Widget>[
            ...List.generate(questions.length, (index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  controller: answers[index],
                  decoration: InputDecoration(
                    labelText: questions[index],
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Veuillez remplir ce champ';
                    }
                    return null;
                  },
                ),
              );
            }),
            ElevatedButton(
              child: const Text('Envoyer'),
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => ResultsPage(
                      answers: answers.map((e) => e.text).toList(),
                    ),
                  ));
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
