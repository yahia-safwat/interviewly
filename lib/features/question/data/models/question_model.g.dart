// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'question_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class QuestionModelAdapter extends TypeAdapter<QuestionModel> {
  @override
  final int typeId = 4;

  @override
  QuestionModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return QuestionModel(
      id: fields[0] as String,
      userUid: fields[1] as String,
      categoryId: fields[2] as String,
      subcategoryId: fields[3] as String,
      questionText: fields[4] as String,
      answerText: fields[5] as String,
      isFavorited: fields[6] as bool,
      isCommon: fields[7] as bool,
      knowsAnswer: fields[8] as bool,
      createdAt: fields[9] as DateTime,
    );
  }

  @override
  void write(BinaryWriter writer, QuestionModel obj) {
    writer
      ..writeByte(10)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.userUid)
      ..writeByte(2)
      ..write(obj.categoryId)
      ..writeByte(3)
      ..write(obj.subcategoryId)
      ..writeByte(4)
      ..write(obj.questionText)
      ..writeByte(5)
      ..write(obj.answerText)
      ..writeByte(6)
      ..write(obj.isFavorited)
      ..writeByte(7)
      ..write(obj.isCommon)
      ..writeByte(8)
      ..write(obj.knowsAnswer)
      ..writeByte(9)
      ..write(obj.createdAt);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is QuestionModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
