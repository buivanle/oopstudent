class Course {
  final String name;

  Course(this.name);
}

class Student {
  final String name;
  final List<Course> courses;

  Student(this.name, this.courses);
}

class BuildFeature {
  final String name;

  BuildFeature(this.name);
}

class MyApp {
  final List<Course> courses;
  final List<Student> students;
  final List<BuildFeature> buildFeatures;

  MyApp(this.courses, this.students, this.buildFeatures);
}

void main() {
  // Tạo danh sách các lớp học
  final flutterCourse = Course('Flutter');
  final androidCourse = Course('Android');
  final iosCourse = Course('iOS');
  final webCourse = Course('Web');

  // Tạo danh sách các học viên
  final studentA = Student('A', [flutterCourse, webCourse]);
  final studentB = Student('B', [androidCourse, webCourse]);
  final studentC = Student('C', [iosCourse]);
  final studentD = Student('D', [flutterCourse, androidCourse]);
  final studentE = Student('E', [webCourse]);
  final studentF = Student('F', [flutterCourse, iosCourse]);

  // Tạo danh sách các tính năng build
  final buildAndroid = BuildFeature('Build Android');
  final buildiOS = BuildFeature('Build iOS');
  final buildWeb = BuildFeature('Build Web');
  final buildDesktopApp = BuildFeature('Build Desktop App');

  // Tạo đối tượng MyApp
  final myApp = MyApp(
    [flutterCourse, androidCourse, iosCourse, webCourse],
    [studentA, studentB, studentC, studentD, studentE, studentF],
    [buildAndroid, buildiOS, buildWeb, buildDesktopApp],
  );

  // In ra thông tin các lớp học
  print('Các lớp học: ');
  for (var course in myApp.courses) {
    print(course.name);
  }

  // In ra thông tin các học viên
  print('\nCác học viên: ');
  for (var student in myApp.students) {
    print('Tên: ${student.name}');
    print('Các lớp học: ');
    for (var course in student.courses) {
      print(course.name);
    }
    print('---------------------');
  }

  // In ra thông tin các tính năng build
  print('\nCác tính năng build: ');
  for (var feature in myApp.buildFeatures) {
    print(feature.name);
  }
}
