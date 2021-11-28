use quanlysinhvien;
select Address, COUNT(StudentID) AS 'Số lượng học viên' from student group by Address;
select S.StudentID, S.StudentName, avg(Mark) from
student S join Mark M on S.StudentID = M.StudentID 
group by S.StudentID, S.StudentName having avg(Mark)>= ALL (SELECT AVG(Mark) FROM Mark GROUP BY Mark.StudentId);
