%Author name: Brandon Colligen
%Email: collig33@students.rowan.edu
%Course: Matlab Programing - Fall 2024
%Assignment : Midterm
%Date: 11-10-24


clear;
clc;

%intro message
disp('Student Database System');

db = StudentDatabase();

% creating student database
db = StudentDatabase();

disp('Adding new sample students');

try
    s1 = Student().create_student('1', 'Jeff','Dahmer', 16, 3.6, 'Physics');
    s2 = Student().create_student('2', 'Jose', 'Menedez', 10, 2.6, 'Math');
    
    db = db.addStudent(s1);
    db = db.addStudent(s2);

    disp(['Sample students add' ...
        '' ...
       ed']);

catch ME
    disp('Adding students failed');
    disp(ME.message);
end

% Saving database to file
disp('Saving database to file');
try
    db.saveToFile('studentDatabase.mat');
    disp('Save Successful.');
catch ME
    disp('There was a problem while saving the database');
    disp(ME.message);
end
%Loading the database from file
disp('loading database from file');
try
    db = db.loadFromFile('studentDatabase.mat');
    disp('Database loaded');
catch ME
    disp('Problem loading database');
    disp(ME.message);

end
%Display all students in database
    db.displayAllStudents();

    %Look up students by ID #
    searchID = '1';
    disp(['Looking up student by ID #', searchID]);
    student = db.findStudentByID(searchID);
    if isempty(student)
        fprintf('Student with ID # %s not found. \n', searchID);
       
    else
        disp('Student ID # located');
        student.showStudent();
    end

    % data visualizations and error message
    disp('Compiling data visualzation');

    try
        db.visualizeGPA();
        db.visualizeAverageGPAByMajor();
        db.visualizeAgeDistriubution();
        disp('Visualizations Displayed');
    catch ME
        disp('Compliing failed');
        disp(ME.message);
    end
    






