import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../constants/enums.dart';
import '../preference_service.dart';

final themeRepositoryProvider = StateNotifierProvider(
  (ref) {
    final preferenceService = ref.read(preferenceServiceProvider);
    final savedAppTheme =
        AppTheme.values[(preferenceService.getInt(appThemePrefKey) ?? 0)];
    return ThemeRepository(
      savedAppTheme,
      preferenceService: preferenceService,
    );
  },
);

class ThemeRepository extends StateNotifier<AppTheme> {
  final PreferenceService preferenceService;

  ThemeRepository(
    super.state, {
    required this.preferenceService,
  });

  setAppTheme(AppTheme appTheme) {
    // save theme in preferences
    preferenceService.setInt(appThemePrefKey, appTheme.index);
    // set the theme in state
    state = appTheme;
  }
}
