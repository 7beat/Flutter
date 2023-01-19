class ToDo{
  String? id;
  String? todoText;
  bool isDone;

  ToDo({
    required this.id,
    required this.todoText,
    this.isDone = false,
});

  static List<ToDo> todoList(){
    return [
      ToDo(id: '01', todoText: 'Pobiegać', isDone: true),
      ToDo(id: '02', todoText: 'Naprawić auto', isDone: true),
      ToDo(id: '03', todoText: 'Wyjść z psem', ),
      ToDo(id: '04', todoText: 'Zrobić zakupy', ),
    ];
  }
}