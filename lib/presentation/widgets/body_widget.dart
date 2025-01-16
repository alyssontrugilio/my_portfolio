import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:my_portfolio/core/app_text_style.dart';

import '../../core/core.dart';

class BodyWidget extends StatelessWidget {
  const BodyWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final isDarkTheme = Theme.of(context).brightness == Brightness.dark;
    return Center(
      child: ConstrainedBox(
        constraints: const BoxConstraints(maxWidth: 1920),
        child: Padding(
            padding: const EdgeInsets.only(left: 112, right: 112, top: 96),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ConstrainedBox(
                  constraints: const BoxConstraints(
                    maxWidth: 768,
                    maxHeight: 400,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Text(
                        'Hi, I’m Sagar',
                        style: AppTextStyle.h1Desktop.copyWith(
                          color: isDarkTheme
                              ? AppColors.grayDark[900]
                              : AppColors.grayLight[900],
                        ),
                      ),
                      const SizedBox(height: 8),
                      const Flexible(
                        child: TextWidget(
                          text:
                              "I'm a full stack developer (React.js & Node.js) with a focus on creating (and occasionally designing) exceptional digital experiences that are fast, accessible, visually appealing, and responsive. Even though I have been creating web applications for over 7 years, I still love it as if it was something new.",
                        ),
                      ),
                      const SizedBox(height: 48),
                      Row(
                        children: [
                          Icon(
                            Icons.location_on_outlined,
                            color: isDarkTheme
                                ? AppColors.grayDark[600]
                                : AppColors.grayLight[600],
                          ),
                          const SizedBox(width: 8),
                          const TextWidget(text: 'Ahmedabad, India'),
                        ],
                      ),
                      const SizedBox(width: 8),
                      const Row(
                        children: [
                          SizedBox(width: 8),
                          Icon(
                            Icons.circle,
                            color: AppColors.emeraldDefault,
                            size: 8,
                          ),
                          SizedBox(width: 8),
                          TextWidget(text: ' Available for new projects'),
                        ],
                      ),
                      const SizedBox(height: 84),
                      const Row(
                        children: [
                          Icon(Icons.abc),
                          SizedBox(width: 4),
                          Icon(Icons.abc),
                          SizedBox(width: 4),
                          Icon(Icons.abc)
                        ],
                      )
                    ],
                  ),
                ),
                SizedBox(
                  width: 320,
                  height: 360,
                  child: Stack(
                    children: [
                      Positioned(
                        bottom: 0,
                        right: 0,
                        child: Container(
                          decoration: BoxDecoration(
                            color: AppColors.grayDark[200],
                            border: const Border.fromBorderSide(
                              BorderSide(
                                width: 5,
                                color: Colors.black,
                              ),
                            ),
                          ),
                          width: 280,
                          height: 320,
                        ),
                      ),
                      Positioned(
                        top: 0,
                        left: 0,
                        child: Container(
                          decoration: const BoxDecoration(
                            border: Border.fromBorderSide(
                              BorderSide(
                                width: 5,
                                color: Colors.black,
                              ),
                            ),
                          ),
                          width: 280,
                          height: 320,

                          // child: Image.network(
                          //   fit: BoxFit.cover,
                          //   'https://avatars.githubusercontent.com/u/106694351?v=4',
                          // ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            )),
      ),
    );
  }
}

class TextWidget extends StatelessWidget {
  final String text;
  const TextWidget({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    final isDarkTheme = Theme.of(context).brightness == Brightness.dark;
    return Text(
      text,
      style: AppTextStyle.body2All.copyWith(
        color: isDarkTheme ? AppColors.grayDark[600] : AppColors.grayLight[600],
      ),
      softWrap: true,
      overflow: TextOverflow.visible,
    );
  }
}
