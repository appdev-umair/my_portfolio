import 'package:flutter/material.dart';
import 'package:my_portfolio/screens/sections/certificates.dart';
import 'package:my_portfolio/screens/sections/contact.dart';
import 'package:my_portfolio/screens/sections/home.dart';
import 'package:my_portfolio/screens/sections/projects.dart';

class MyPortfolio extends StatefulWidget {
  const MyPortfolio({super.key});
  @override
  State<MyPortfolio> createState() => _MyPortfolioState();
}

class _MyPortfolioState extends State<MyPortfolio> {
  final ScrollController _scrollController = ScrollController();

  void _scrollToPage(int page) {
    // Calculate the offset to scroll to based on the page number.
    double offset = page * MediaQuery.of(context).size.height;
    _scrollController.animateTo(
      offset,
      duration: const Duration(
          milliseconds: 300), // You can adjust the duration as needed.
      curve: Curves.ease,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Appdev Umair"),
        actions: [
          TextButton(
            onPressed: () {
              _scrollToPage(0); // Scroll to the first section (Page 1).
            },
            child: const Text("Home"),
          ),
          TextButton(
            onPressed: () {
              _scrollToPage(1); // Scroll to the second section (Page 2).
            },
            child: const Text("Projects"),
          ),
          TextButton(
            onPressed: () {
              _scrollToPage(2); // Scroll to the second section (Page 2).
            },
            child: const Text("Certificates"),
          ),
          TextButton(
            onPressed: () {
              _scrollToPage(3); // Scroll to the second section (Page 2).
            },
            child: const Text("Contact"),
          ),
        ],
      ),
      body: ListView(
        controller: _scrollController,
        children: const [
          // Section 1 (Page 1)
          Home(),
          // Section 2 (Page 2)
          Projects(),
          // Section 3 (Page 3)
          Certificates(),
          // Section 4(Page 4)
          Contact(),
        ],
      ),
    );
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }
}
