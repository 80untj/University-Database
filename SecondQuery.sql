SELECT teacher.FullName AS Учителя, doctorate.NameDoctorate AS Название_Докторских, department.NameDepartment AS Кафедры,  faculty.NameFaculty AS Факультеты
FROM doctorate
INNER JOIN teacher
ON teacher.id = doctorate.Teacher_id
INNER JOIN department
ON department.id= teacher.Department_id
INNER JOIN faculty
ON faculty.id = department.Faculty_id
WHERE department.NameDepartment = @departmentname
--получить перечень и общее число тем докторских диссертаций, защитивших сотрудниками указанной кафедры либо указанного факультета.
