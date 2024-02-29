
class Todo {
  late int id;
  late String title;
  late String description;
  late DateTime dateTime;
  late bool status;
  late String category;
  late bool isActive;
  late DateTime createdDateTime;

  Todo({
    required this.id,
    required this.description,
    required this.dateTime,
    required this.status,
    required this.category,
    required this.isActive,
    required this.createdDateTime,
    required this.title,
  });
}