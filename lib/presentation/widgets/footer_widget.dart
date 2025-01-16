import 'package:flutter/material.dart';

class FooterWidget extends StatelessWidget {
  const FooterWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 68,
      width: double.infinity,
      color: Colors.black,
      child: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 1920),
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Feito com muito '),
              Icon(
                Icons.favorite,
                color: Colors.red,
                size: 14,
              ),
              Text(' e '),
              Icon(
                Icons.coffee,
                color: Colors.brown,
                size: 14,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
