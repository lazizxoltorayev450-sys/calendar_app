import 'package:hive/hive.dart';

part 'event_model.g.dart';

// Bitta voqeani (event) ifodalovchi model.
// Hive ma'lumot bazasida saqlanadi.
@HiveType(typeId: 0)
class Event extends HiveObject {
  @HiveField(0)
  String id;

  @HiveField(1)
  String title;

  @HiveField(2)
  String description;

  @HiveField(3)
  DateTime date;

  @HiveField(4)
  TimeOfDayHive? time; // vaqt (soat:daqiqa), ixtiyoriy

  @HiveField(5)
  bool notify; // eslatma yuborilsinmi

  Event({
    required this.id,
    required this.title,
    this.description = '',
    required this.date,
    this.time,
    this.notify = false,
  });
}

// TimeOfDay klassi Hive uchun to'g'ridan-to'g'ri saqlanmaydi,
// shuning uchun soddalashtirilgan versiyasini yaratamiz.
@HiveType(typeId: 1)
class TimeOfDayHive {
  @HiveField(0)
  final int hour;

  @HiveField(1)
  final int minute;

  TimeOfDayHive({required this.hour, required this.minute});
}
