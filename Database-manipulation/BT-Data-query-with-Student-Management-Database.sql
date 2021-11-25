use quanlysinhvien;
select * from student where StudentName like "h%";
select * from class where StartDate like '%-12-%'; 
select * from subject where Credit between 3 and 5;
update student set classID = 2 where StudentName = 'Hung';
select S.studentName, Sub.SubName, M.Mark from student S join mark M on S.StudentID = M.StudentID join
subject Sub on Sub.SubID = M.SubID ORDER BY Mark DESC ; 