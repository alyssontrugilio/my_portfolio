import 'package:flutter/material.dart';
import 'package:my_portfolio/presentation/presentation.dart';

class ResponsiveWidget extends StatelessWidget {
  const ResponsiveWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) =>
          constraints.maxWidth < 900 ? const ScreenPage() : const HomePage(),
    );
  }
}

class ScreenPage extends StatelessWidget {
  const ScreenPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('Tela de celular'),
      ),
    );
  }
}
