SELECT student.FullName AS Студенты, team.NameTeam AS Группы, team.Course AS Курс, faculty.NameFaculty AS Факультеты, control.Mark AS Оценка 
FROM control 
INNER JOIN student 
ON student.id = control.Student_id 
INNER JOIN team 
ON team.id = student.Team_id 
INNER JOIN faculty 
ON faculty.id = team.Faculty_id 
WHERE control.Mark IN(8,9,10);
--получить список и общее число студентов указанных групп или указанного курса указанного факультета, сдавших указанную сессию на отлично
