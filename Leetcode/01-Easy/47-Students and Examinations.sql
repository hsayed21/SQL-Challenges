SELECT stud.student_id, stud.student_name, sub.subject_name, COUNT(ex.subject_name) AS attended_exams 
FROM Students stud
CROSS JOIN Subjects sub
LEFT JOIN Examinations ex ON ex.student_id = stud.student_id AND sub.subject_name = ex.subject_name
GROUP BY stud.student_id, stud.student_name, sub.subject_name