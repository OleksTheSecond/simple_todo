class ToDo {
  final int id;
  final String title;
  final String body;
  final bool isDone;

  const ToDo({
    required this.id,
    required this.title,
    required this.body,
    required this.isDone,
  });

  ToDo copyWith({
    String? title,
    String? body,
    bool? isDone,
  }) {
    return ToDo(
      id: id,
      title: title ?? this.title,
      body: body ?? this.body,
      isDone: isDone ?? this.isDone,
    );
  }
}
