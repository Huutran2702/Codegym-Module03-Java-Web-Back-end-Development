select * from student where Status = true;
SELECT S.StudentId, S.StudentName, C.ClassName
FROM Student S join Class C on S.ClassId = C.ClassID;
SELECT S.StudentId, S.StudentName, C.ClassName
FROM Student S join Class C on S.ClassId = C.ClassID
WHERE C.ClassName = 'A1';
select S.studentID, S.StudentName, Sub.SubName, M.Mark from student S join mark M on S.StudentID = M.StudentID join 
subject Sub on M.SubID = Sub.SubID where Sub.SubName = 'CF';