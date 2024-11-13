%Author name: Brandon Colligen
%Email: collig33@students.rowan.edu
%Course: Matlab Programing - Fall 2024
%Assignment : Midterm
%Date: 11-10-24

classdef Student
    properties
        student_id = ""
        f_n = ""
        l_n = ""
        age = 0
        gpa = 0.0
        major = ""
    end
  methods
      % Method for inputing students data into database
      function res = create_student(currentObj, student_id, f_n, l_n, age, gpa, major)
          currentObj.student_id = student_id;
          currentObj.f_n = f_n;
          currentObj.l_n = l_n;
          currentObj.age = age;
          currentObj.gpa = gpa;
          currentObj.major = major;
          res = currentObj;
      end
      % Where users can input the student information
      function res = initStudent(currentObj)
         currentObj.student_id = input('What is the students ID number', 's');
          currentObj.f_n = input('What is the students first name?', 's');
          currentObj.l_n = input('what is the students last name?', 's');
          currentObj.age = input('What is the students age?', 's');
          currentObj.gpa = input ('What is the students GPA?', 's');
          currentObj. major = input ('What is the students major?', 's');
          res = currentObj;
      end
      function res = showStudent(currentObj) % printing student information
          fprintf('Student ID number: %s \n', currentObj.student_id);
          fprintf('Students First name: %s \n', currentObj.f_n);
          fprintf('Students last name: %s \n' ,currentObj.l_n);
          fprintf('Students age: %d \n' , currentObj.age);
          fprintf('Students GPA: %.2f \n', currentObj.gpa);
          fprintf('Students Major: %s \n', currentObj.major);
          res = 1;
      end
  end
end
