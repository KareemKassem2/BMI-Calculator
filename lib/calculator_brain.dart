import 'dart:math';

import 'package:flutter/material.dart';

class CalculatorBrain {
  CalculatorBrain({required this.height, required this.weight});

  final int height;
  final int weight;

  double? _bmi;

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi!.toStringAsFixed(1);
  }

  String getReuslt() {
    if (_bmi! >= 40) {
      return 'Obesity Class 3 (Severe)';
    } else if (_bmi! >= 35) {
      return 'Obesity Class 2';
    } else if (_bmi! >= 30) {
      return 'Obesity Class 1';
    } else if (_bmi! >= 25) {
      return 'Overweight';
    } else if (_bmi! > 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String getInterapetaion() {
    if (_bmi! >= 40) {
      return "Are you planning to orbit the Earth? You're heavy enough for a satellite 😁";
    } else if (_bmi! >= 35) {
      return "Ever considered being a sumo wrestler? You've got the qualifications 😔";
    } else if (_bmi! >= 30) {
      return "If you walk any faster, the ground might sue you for damages 😔";
    } else if (_bmi! >= 25) {
      return 'I know 5 fat persons, you are 4 of them 😁';
    } else if (_bmi! > 18.5) {
      return 'You are perfect 😎';
    } else {
      return 'When you wore yellow yesterday, I thought you were a pencil 😔';
    }
  }

  Color getColor() {
    if (_bmi! >= 40) {
      return Colors.deepPurple; // Severe Obesity
    } else if (_bmi! >= 35) {
      return Colors.brown; // Obesity Class 2
    } else if (_bmi! >= 30) {
      return Colors.orange; // Obesity Class 1
    } else if (_bmi! >= 25) {
      return Colors.red; // Overweight
    } else if (_bmi! > 18.5) {
      return Colors.green; // Normal
    } else {
      return Colors.yellow; // Underweight
    }
  }
}
