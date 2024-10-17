// model/todo_model.dart
class Todo {
  int? id;
  String name;
  String description;
  String day; // خاصية اليوم

  Todo({
    this.id,
    required this.name,
    required this.description,
    required this.day, // تعديل في المُنشئ
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'description': description,
      'day': day, // إضافة اليوم للخريطة
    };
  }
}
