import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../core/core.dart';
import '../bloc/bloc.dart';
import 'widgets.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final isDarkTheme = Theme.of(context).brightness == Brightness.dark;

    return ColoredBox(
      color:
          isDarkTheme ? AppColors.grayDarkDefault : AppColors.grayLightDefault,
      child: SizedBox(
        width: double.infinity,
        height: 68,
        child: Center(
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 1920),
            child: LayoutBuilder(
              builder: (context, constraints) => constraints.maxWidth < 900
                  ? const _MobileHeaderWidget()
                  : const _DesktopHeaderWidget(),
            ),
          ),
        ),
      ),
    );
  }
}

class _DesktopHeaderWidget extends StatelessWidget {
  const _DesktopHeaderWidget();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 112, vertical: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const LogoTextWidget(),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              OptionHeaderWidget(text: 'About'),
              OptionHeaderWidget(text: 'Work'),
              OptionHeaderWidget(text: 'Testimonials'),
              OptionHeaderWidget(text: 'Contact'),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: VerticalDivider(
              color: Theme.of(context).brightness == Brightness.dark
                  ? AppColors.grayDark[100]
                  : AppColors.grayLight[100],
              thickness: 1,
              width: 24,
              endIndent: 5,
              indent: 5,
            ),
          ),
          const Row(
            children: [
              SwitchThemeWidget(),
              SizedBox(width: 16),
              DownloadButtonWidget(),
            ],
          )
        ],
      ),
    );
  }
}

class _MobileHeaderWidget extends StatelessWidget {
  const _MobileHeaderWidget();

  @override
  Widget build(BuildContext context) {
    final homeCubit = context.read<HomeCubit>();
    return Padding(
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
                builder: (context) => LayoutBuilder(
                  builder: (context, constraints) {
                    if (constraints.maxWidth > 900) {
                      WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
                        if (Navigator.of(context).canPop()) {
                          Navigator.of(context).pop();
                        }
                      });
                    }
                    return BlocProvider.value(
                      value: homeCubit,
                      child: BlocBuilder<HomeCubit, bool>(
                        builder: (context, state) {
                          return _buildModalContent(context, !state);
                        },
                      ),
                    );
                  },
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}

Widget _buildModalContent(BuildContext context, bool isDarkTheme) {
  return Container(
    padding: const EdgeInsets.symmetric(vertical: 16),
    color: isDarkTheme ? AppColors.grayDarkDefault : AppColors.grayLightDefault,
    child: SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              children: [
                const LogoTextWidget(),
                IconButton(
                  onPressed: () => Navigator.of(context).pop(),
                  icon: Icon(
                    Icons.close,
                    size: 30,
                    color: isDarkTheme
                        ? AppColors.grayDark[600]
                        : AppColors.grayLight[600],
                  ),
                )
              ],
            ),
          ),
          Divider(
            color: isDarkTheme
                ? AppColors.grayDark[600]
                : AppColors.grayLight[600],
          ),
          const Padding(
            padding: EdgeInsets.all(16),
            child: Column(
              children: [
                OptionHeaderWidget(text: 'About'),
                SizedBox(height: 15),
                OptionHeaderWidget(text: 'Work'),
                SizedBox(height: 15),
                OptionHeaderWidget(text: 'Testimonials'),
                SizedBox(height: 15),
                OptionHeaderWidget(text: 'Contact'),
              ],
            ),
          ),
          Divider(
            color: isDarkTheme
                ? AppColors.grayDark[600]
                : AppColors.grayLight[600],
          ),
          const Padding(
            padding: EdgeInsets.symmetric(
              vertical: 22,
              horizontal: 16,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
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
    ),
  );
}
