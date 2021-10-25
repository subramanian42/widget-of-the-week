class Mapmodel {
  int userId;
  int id;
  String title;
  bool completed;

  Mapmodel({
    required this.userId,
    required this.id,
    required this.title,
    required this.completed,
  });

  Mapmodel fromJSON(Map<String, dynamic> data) {
    return Mapmodel(
      id: data['id'],
      userId: data['userId'],
      title: data['title'],
      completed: data['completed'],
    );
  }

  Mapmodel.namedconstructor()
      : id = 0,
        title = '',
        userId = 0,
        completed = false;
}
