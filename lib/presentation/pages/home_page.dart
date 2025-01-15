import 'package:flutter/material.dart';

import '../widgets/widgets.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: const <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text(
                'Menu',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              title: Text('About'),
            ),
            ListTile(
              title: Text('Work'),
            ),
            ListTile(
              title: Text('Testimonials'),
            ),
            ListTile(
              title: Text('Contact'),
            ),
          ],
        ),
      ),
      body: const SingleChildScrollView(
        child: Column(
          children: [
            HeaderWidget(),
            BodyWidget(),
            FooterWidget(),
          ],
        ),
      ),
    );
  }
}
