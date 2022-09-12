import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localization/core/extension/context_extension.dart';

import 'cubit/localization_cubit.dart';
import 'l10n/l10n.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(context.l10n!.title),
        centerTitle: true,
        actions: [
          DropdownButton<Locale>(
            value: context.read<LocalizationCubit>().state.locale,
            items: const [
              DropdownMenuItem(
                value: L10n.en,
                child: Text("English"),
              ),
              DropdownMenuItem(
                value: L10n.tr,
                child: Text("Türkçe"),
              ),
            ],
            onChanged: context.read<LocalizationCubit>().changeLocale,
          ),
        ],
      ),
      body: Center(
        child: Text(
          context.l10n!.language,
          style: const TextStyle(fontSize: 44),
        ),
      ),
    );
  }
}
