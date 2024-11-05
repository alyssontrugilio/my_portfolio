import 'package:flutter/material.dart';

import '../../../core/core.dart';
import 'icon_tech_widget.dart';

class ToolsWidget extends StatelessWidget {
  const ToolsWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      width: 1100,
      child: Wrap(
        spacing: 15,
        children: [
          IconTechWidget(
            icon: AppAssets.flutter,
            title: 'Flutter',
          ),
          SizedBox(width: 15),
          IconTechWidget(
            icon: AppAssets.git,
            title: 'Git',
          ),
          SizedBox(width: 15),
          IconTechWidget(
            icon: AppAssets.js,
            title: 'JavaScript',
          ),
          SizedBox(width: 15),
          IconTechWidget(
            icon: AppAssets.nextJs,
            title: 'Next.js',
          ),
          SizedBox(width: 15),
          IconTechWidget(
            icon: AppAssets.nodeJs,
            title: 'Node.js',
          ),
          SizedBox(width: 15),
          IconTechWidget(
            icon: AppAssets.postman,
            title: 'Postman',
          ),
          SizedBox(width: 15),
          IconTechWidget(
            icon: AppAssets.typeScript,
            title: 'TypeScript',
          ),
          SizedBox(width: 15),
          IconTechWidget(
            icon: AppAssets.react,
            title: 'React',
          ),
        ],
      ),
    );
  }
}
