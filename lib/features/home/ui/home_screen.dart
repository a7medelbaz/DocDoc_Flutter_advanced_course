import 'package:doc_doc/features/home/ui/widgets/home_top_bar.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
      body: SafeArea(
        child: Container(
          width: double.infinity,
          margin: EdgeInsetsGeometry.fromLTRB(20, 20, 20, 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [HomeTopBar()],
          ),
        ),
      ),
    );
  }
}
