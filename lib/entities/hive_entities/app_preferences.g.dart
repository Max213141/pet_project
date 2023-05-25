// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_preferences.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class AppPreferencesAdapter extends TypeAdapter<AppPreferences> {
  @override
  final int typeId = 0;

  @override
  AppPreferences read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return AppPreferences(
      isFirstLaunch: fields[0] as bool,
      isDarkTheme: fields[1] as bool,
    );
  }

  @override
  void write(BinaryWriter writer, AppPreferences obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.isFirstLaunch)
      ..writeByte(1)
      ..write(obj.isDarkTheme);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AppPreferencesAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
