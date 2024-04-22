import 'package:flutter/material.dart';
import 'package:tech_mcq_app/widgets/custom_drawer.dart';

class Home_Screen extends StatelessWidget {
  const Home_Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        title: const Text('Quez App'),
        titleSpacing: 0,
      ),
      drawer: Custom_Drawer(),
    );
  }
}
