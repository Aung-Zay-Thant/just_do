class Task {
  int id;
  DateTime date;
  String title;
  String priority;
  int status;

  Task({this.id, this.date, this.priority, this.status, this.title});
  Task.withID({this.id, this.date, this.priority, this.status, this.title});

  Map<String, dynamic> toMap() {
    final map = Map<String, dynamic>();
   if(id != null){
      map['id'] = id;
   }
    map['title'] = title;
    map['date'] = date.toIso8601String();
    map['priority'] = priority;
    map['status'] = status;
    return map;
  }

  factory Task.fromMap(Map<String, dynamic> map) {
    return Task.withID(
        id: map['id'],
        title: map['title'],
        date: DateTime.parse(map['date']),
        priority: map['priority'],
        status: map['status'],
        );
  }
}
