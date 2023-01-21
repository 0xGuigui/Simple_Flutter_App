import 'package:flutter/material.dart';
import 'package:simpleprojet/screens/questions_page.dart';

class WelcomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Expanded(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  const Text('Bienvenue sur le questionnaire'),
                  const SizedBox(height: 20),
                  const Text('Cliquez sur le bouton pour commencer'),
                  const SizedBox(height: 20),
                  ElevatedButton(
                    child: const Text('Commencer'),
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => QuestionnairePage(),
                      ));
                    },
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child: Container(
              color: Colors.grey[200],
              padding: const EdgeInsets.all(8),
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Text(
                  'Build with Flutter by Guilhem Jéhanno, optimised for iPhone 14 Pro',
                  style: TextStyle(
                    color: Colors.grey[800],
                    fontSize: 12,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}