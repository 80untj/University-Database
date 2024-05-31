SELECT teacher.FullName AS Учителя, candidature.NameCandidature AS Название_Кандитских, department.NameDepartment AS Кафедры, faculty.NameFaculty AS Факультеты 
FROM candidature 
INNER JOIN teacher 
ON teacher.id = candidature.Teacher_id 
INNER JOIN department 
ON department.id= teacher.Department_id 
INNER JOIN faculty 
ON faculty.id = department.Faculty_id;
--Перечень и общее число тем кандидатских, защитивших сотрудниками указанной кафедры либо указанного факультета
