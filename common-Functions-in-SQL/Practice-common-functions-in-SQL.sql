use quanlysinhvien;
select subject.SubID, subject.SubName, max(Credit)  from subject group by SubID having max(Credit)>= all (select max(Credit) from subject );
select Sub.SubID, Sub.SubName, max(M.Mark) from subject Sub inner join mark M on Sub.SubID = M.SubID group by
Sub.SubID having max(M.Mark) >= all (select max(Mark) from mark);
select S.StudentID, S.StudentName, avg(M.Mark) from student S join mark M on S.StudentID = M.StudentID group by StudentID, StudentName 
order by avg(M.Mark) desc;