class StudentRepository {
  
  List<Student> students = [];

  void add(Student s) {
    students.add(s);
  }

  List<Student> getAll() {
    return students;
  }
}


class Student {

  final int Id;
  final String Name;

  Student({required this.Id, required this.Name});
}


class TeacherRepository {
  List<Teacher> teachers = [];

  void add(Teacher t) {
    teachers.add(t);
  }

  List<Teacher> getAll() {
    return teachers;
  }
}


class Teacher {

  final int Id;
  final String Name;

  Teacher({required this.Id, required this.Name});
}
