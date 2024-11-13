%Author name: Brandon Colligen
%Email: collig33@students.rowan.edu
%Course: Matlab Programing - Fall 2024
%Assignment : Midterm
%Date: 11-10-24

classdef StudentDatabase
    properties
        Students = Student.empty
    end

    methods
        % adding student to the database
        function obj = addStudent(obj, student)
        obj.Students(end + 1) = student;
    end


    %saving the database to a .mat file
    function saveToFile(obj, filename)
        studentsData = obj.Students;
        save(filename, 'studentsData');
    end

% Loading database from .mat file
function obj = loadFromFile(obj, filename)
    data = load(filename);
    obj.Students = data.studentsData;
end


% Displaying the students data from the database

function displayAllStudents(obj)
    for i = 1:length(obj.Students)
        obj.Students(i).showStudent();
        fprintf('-------------\n');

    end
end
    

%Finding student by ID
function student = findStudentByID(obj, searchID)
    student = [];
    for i = 1:length(obj.Students)
        if strcmp(obj.Students(i).student_id, searchID)
            student = obj.Students(i);
            return;
        end
    end
    end
    end
end

% Bar graph students gpas

function visualizeGPA(obj)
gpas = [obj.Students.gpa];
bar(gpas);
xlabel('Students');
ylabel('GPA');
title('Students GPA')
end

% Average gpa by major plot
function visualizeAverageGPAByMajor(obj)
majors = {obj.Students.major};
uniqueMajors = unique(majors);
avgGPA = zeros(1, length(uniqueMajors));

for i = 1:length(uniqueMajors)
    gpas = [obj.Students(strcmp(majors, uniqueMajors{i})).gpa];
    avgGPA(i) = mean(gpas);
end
bar(avgGPA);
set(gca, 'XTickLabel', uniqueMajors);
xlabel('Major');
ylabel('Average GPA');
title('Mean GPA by Major');
end
% histogram plot of students
function visualizeAgeDistribution(obj)
ages = [obj.Students.age];
histogram(ages);
xlabel('age');
ylabel('number of students');
title('distrubutions of students age');
end
