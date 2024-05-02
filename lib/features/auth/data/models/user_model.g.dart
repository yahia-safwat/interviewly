// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class UserModelAdapter extends TypeAdapter<UserModel> {
  @override
  final int typeId = 1;

  @override
  UserModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return UserModel(
      uid: fields[0] as String,
      email: fields[1] as String,
      displayName: fields[2] as String,
      authProvider: fields[3] as String,
      isEmailVerified: fields[4] as bool,
      jobTitle: fields[5] as String?,
      isStudent: fields[6] as bool,
      categoryModels: (fields[7] as List).cast<CategoryModel>(),
      questionModels: (fields[8] as List).cast<QuestionModel>(),
    );
  }

  @override
  void write(BinaryWriter writer, UserModel obj) {
    writer
      ..writeByte(9)
      ..writeByte(0)
      ..write(obj.uid)
      ..writeByte(1)
      ..write(obj.email)
      ..writeByte(2)
      ..write(obj.displayName)
      ..writeByte(3)
      ..write(obj.authProvider)
      ..writeByte(4)
      ..write(obj.isEmailVerified)
      ..writeByte(5)
      ..write(obj.jobTitle)
      ..writeByte(6)
      ..write(obj.isStudent)
      ..writeByte(7)
      ..write(obj.categoryModels)
      ..writeByte(8)
      ..write(obj.questionModels);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is UserModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
