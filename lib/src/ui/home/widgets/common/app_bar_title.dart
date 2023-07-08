import 'package:flutter/cupertino.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:my_portfolio/src/constants/colors.dart';

import '../../../../constants/enums.dart';
import '../../../../logic/repositories/theme_repository.dart';

class AppBarTitle extends ConsumerWidget {
  const AppBarTitle({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isLightTheme = ref.watch(
      themeRepositoryProvider.select((_) => _ == AppTheme.light),
    );
    return Transform.scale(
        scale: MediaQuery.of(context).size.width < 500 ? 0.6 : 0.9,
        child: CupertinoSwitch(
          activeColor: primaryColor,
          value: !isLightTheme,
          onChanged: (isLightTheme) {
            !isLightTheme
                ? ref
                    .read(themeRepositoryProvider.notifier)
                    .setAppTheme(AppTheme.light)
                : ref
                    .read(themeRepositoryProvider.notifier)
                    .setAppTheme(AppTheme.dark);
          },
        ));
  }
}
