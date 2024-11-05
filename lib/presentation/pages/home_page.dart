import 'package:flutter/material.dart';

import 'widgets/widgets.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xFF252525),
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                HomeWidget(),
              ],
            ),
          ),
          Column(
            children: [
              Center(
                child: MenuHeaderWidget(),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
