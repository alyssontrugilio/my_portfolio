import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../presentation/presentation.dart';
import 'app_colors.dart';

class AppWidget extends StatefulWidget {
  const AppWidget({super.key});

  @override
  State<AppWidget> createState() => _AppWidgetState();
}

class _AppWidgetState extends State<AppWidget> {
  late final HomeCubit homeCubit;
  @override
  void initState() {
    homeCubit = HomeCubit();
    super.initState();
  }

  @override
  void dispose() {
    homeCubit.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: homeCubit,
      child: BlocBuilder<HomeCubit, bool>(
        builder: (context, state) {
          final isLightTheme = state;
          final theme = ThemeData(
            brightness: isLightTheme ? Brightness.light : Brightness.dark,
            colorScheme: ColorScheme.fromSwatch(
              primarySwatch: isLightTheme ? Colors.blue : Colors.red,
              brightness: isLightTheme ? Brightness.light : Brightness.dark,
            ).copyWith(
              secondary: isLightTheme
                  ? AppColors.grayLight[500]
                  : AppColors.grayDark[500],
            ),
            scaffoldBackgroundColor:
                isLightTheme ? AppColors.grayLight[50] : AppColors.grayDark[50],
            textTheme: TextTheme(
              bodyLarge: TextStyle(
                  color: isLightTheme
                      ? AppColors.grayLight[900]
                      : AppColors.grayDark[900]),
              bodyMedium: TextStyle(
                  color: isLightTheme
                      ? AppColors.grayLight[900]
                      : AppColors.grayDark[900]),
            ),
          );

          return MaterialApp(
            title: 'My Portfolio',
            theme: theme,
            home: const HomePage(),
          );
        },
      ),
    );
  }
}
