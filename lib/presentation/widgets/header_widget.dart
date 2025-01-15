import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'widgets.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 68,
      child: LayoutBuilder(
        builder: (context, constraints) => constraints.maxWidth < 900
            ? Padding(
                padding: const EdgeInsets.all(16),
                child: Row(
                  children: [
                    const LogoTextWidget(),
                    IconButton(
                      icon: const Icon(
                        Icons.menu,
                        size: 30,
                      ),
                      onPressed: () {
                        showDialog(
                          context: context,
                          builder: (context) =>
                              LayoutBuilder(builder: (context, constraints) {
                            return Container(
                              padding: const EdgeInsets.all(16),
                              color: const Color(0xffF3F4F6),
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      const LogoTextWidget(),
                                      IconButton(
                                        onPressed: () =>
                                            Navigator.of(context).pop(),
                                        icon: const Icon(
                                          Icons.close,
                                          size: 30,
                                        ),
                                      )
                                    ],
                                  ),
                                  const Padding(
                                    padding: EdgeInsets.all(16),
                                    child: Column(
                                      children: [
                                        OptionHeaderWidget(text: 'About'),
                                        SizedBox(height: 15),
                                        OptionHeaderWidget(text: 'Work'),
                                        SizedBox(height: 15),
                                        OptionHeaderWidget(
                                            text: 'Testimonials'),
                                        SizedBox(height: 15),
                                        OptionHeaderWidget(text: 'Contact'),
                                      ],
                                    ),
                                  ),
                                  const Divider(),
                                  const Padding(
                                    padding: EdgeInsets.symmetric(
                                      vertical: 22,
                                      horizontal: 16,
                                    ),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.stretch,
                                      children: [
                                        SwitchThemeWidget(
                                          isMobile: true,
                                        ),
                                        SizedBox(
                                          height: 32,
                                        ),
                                        DownloadButtonWidget(
                                          isMobile: true,
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            );
                          }),
                        );
                      },
                    ),
                  ],
                ),
              )
            : Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 80, vertical: 16),
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 32),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      LogoTextWidget(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          OptionHeaderWidget(text: 'About'),
                          OptionHeaderWidget(text: 'Work'),
                          OptionHeaderWidget(text: 'Testimonials'),
                          OptionHeaderWidget(text: 'Contact'),
                        ],
                      ),
                      VerticalDivider(
                        color: Color(0xffF3F4F6),
                        thickness: 1,
                        width: 24,
                        endIndent: 5,
                        indent: 5,
                      ),
                      Row(
                        children: [
                          SwitchThemeWidget(),
                          SizedBox(width: 16),
                          DownloadButtonWidget(),
                        ],
                      )
                    ],
                  ),
                ),
              ),
      ),
    );
  }
}
