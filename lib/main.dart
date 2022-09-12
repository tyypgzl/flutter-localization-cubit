import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localization/home_view.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'cubit/localization_cubit.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LocalizationCubit(),
      child: BlocBuilder<LocalizationCubit, LocalizationState>(
        builder: (context, state) {
          return MaterialApp(
            title: 'Flutter Demo',
            supportedLocales: AppLocalizations.supportedLocales,
            locale: state.locale,
            localizationsDelegates: const [
              AppLocalizations.delegate,
              GlobalMaterialLocalizations.delegate,
              GlobalCupertinoLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
            ],
            theme: ThemeData(
              primarySwatch: Colors.blue,
            ),
            home: const HomeView(),
          );
        },
      ),
    );
  }
}
