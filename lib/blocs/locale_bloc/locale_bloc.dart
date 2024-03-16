import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';
import 'package:life_sync/entities/entities.dart';
import 'package:life_sync/entities/hive_entities/hive_entities.dart';

part 'locale_event.dart';
part 'locale_state.dart';

//TODO do smth with this at least imlement freezed
class LocaleBloc extends Bloc<LocaleEvent, LocaleState> {
  LocaleBloc() : super(LocaleState(locale: HiveStore().getLocale() ?? 'ru')) {
    on<ChangeLocale>(
      (event, emit) async {
        Box<AppPreferences> preferencesBox = HiveStore().getAppPreferencesBox();
        AppPreferences? appPreferences = preferencesBox.getAt(0);
        if (appPreferences != null) {
          appPreferences.locale = event.locale;
          await appPreferences.save();
          emit(
            state.copyWith(locale: event.locale),
          );
        }
      },
    );
  }
}
