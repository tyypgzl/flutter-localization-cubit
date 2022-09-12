part of 'localization_cubit.dart';

class LocalizationState extends Equatable {
  final Locale? locale;

  const LocalizationState({this.locale=L10n.tr});

  @override
  List<Object?> get props => [locale];

  LocalizationState copyWith({
    Locale? locale,
  }) {
    return LocalizationState(
      locale : locale ?? this.locale,
    );
  }
}
