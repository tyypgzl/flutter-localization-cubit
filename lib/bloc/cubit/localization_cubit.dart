import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localization/l10n/l10n.dart';

part 'localization_state.dart';

class LocalizationCubit extends Cubit<LocalizationState> {
  LocalizationCubit() : super(const LocalizationState());

  void changeLocale(Locale? locale) {
    emit(state.copyWith(locale: locale));
  }
}
