import 'package:flutter/material.dart';

import '../../core/core.dart';

class FooterWidget extends StatelessWidget {
  const FooterWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final isDarkTheme = Theme.of(context).brightness == Brightness.dark;
    return Container(
      height: 68,
      width: double.infinity,
      color: isDarkTheme ? AppColors.grayDark[50] : AppColors.grayLight[50],
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
