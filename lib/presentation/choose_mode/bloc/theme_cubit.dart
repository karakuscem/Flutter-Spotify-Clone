import 'package:flutter/material.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';

class ThemeCubit extends HydratedCubit<ThemeMode> {
  ThemeCubit() : super(ThemeMode.system);

  void updateTheme(ThemeMode themeMode) {
    emit(themeMode);
  }
  
  @override
  ThemeMode? fromJson(Map<String, dynamic> json) {
    try {
      return ThemeMode.values[json['theme'] as int];
    } catch (_) {
      return ThemeMode.system;
    }
  }
  
  @override
  Map<String, dynamic>? toJson(ThemeMode state) {
    try {
      return {'theme': state.index};
    } catch (_) {
      return null;
    }
  }
}