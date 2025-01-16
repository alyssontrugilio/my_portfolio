import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../core/core.dart';
import '../../bloc/bloc.dart';

class SwitchThemeWidget extends StatefulWidget {
  final bool isMobile;
  const SwitchThemeWidget({
    super.key,
    this.isMobile = false,
  });

  @override
  State<SwitchThemeWidget> createState() => _SwitchThemeWidgetState();
}

class _SwitchThemeWidgetState extends State<SwitchThemeWidget> {
  @override
  Widget build(BuildContext context) {
    final homeCubit = context.read<HomeCubit>();
    final isDarkTheme = Theme.of(context).brightness == Brightness.dark;

    return BlocBuilder(
      bloc: homeCubit,
      builder: (context, state) => widget.isMobile
          ? MouseRegion(
              cursor: MaterialStateMouseCursor.clickable,
              child: GestureDetector(
                onTap: () => homeCubit.switchTheme(),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Switch Theme',
                      style: GoogleFonts.inter(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        color: isDarkTheme
                            ? AppColors.grayDark[600]
                            : AppColors.grayLight[600],
                      ),
                    ),
                    Icon(
                      isDarkTheme
                          ? Icons.dark_mode_outlined
                          : Icons.light_mode_outlined,
                      size: 30,
                      color: isDarkTheme
                          ? AppColors.grayDark[600]
                          : AppColors.grayLight[600],
                    ),
                  ],
                ),
              ),
            )
          : MouseRegion(
              cursor: MaterialStateMouseCursor.clickable,
              child: GestureDetector(
                onTap: () => homeCubit.switchTheme(),
                child: Icon(
                  isDarkTheme
                      ? Icons.dark_mode_outlined
                      : Icons.light_mode_outlined,
                  size: 30,
                  color: isDarkTheme
                      ? AppColors.grayDark[600]
                      : AppColors.grayLight[600],
                ),
              ),
            ),
    );
  }
}
