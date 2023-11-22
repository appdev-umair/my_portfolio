import 'package:flutter/material.dart';
import 'package:my_portfolio/screens/my_porfolio.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(useMaterial3: true),
      home: const MyPortfolio(),
    ),
  );
}
