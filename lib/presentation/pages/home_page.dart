import 'package:flutter/material.dart';

import '../widgets/widgets.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) {
          return const Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              HeaderWidget(),
              Expanded(
                child: SingleChildScrollView(
                  child: BodyWidget(),
                ),
              ),
              FooterWidget(),
            ],
          );
        },
      ),
    );
  }
}
