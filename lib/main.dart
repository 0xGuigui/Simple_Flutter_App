import 'package:flutter/material.dart';
import 'package:simpleprojet/screens/welcome_page.dart';
import 'package:simpleprojet/screens/questions_page.dart';
import 'package:simpleprojet/screens/results_page.dart';

void main() {
  runApp(MaterialApp(
    routes:
    {
      '/': (context) => WelcomePage(),
      '/questions': (context) => QuestionnairePage(),
      '/results': (context) => ResultsPage(answers: const [],),
    },
  ));
}