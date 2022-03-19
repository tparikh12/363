MATCH (s:students)
WHERE s.ssn =746897816
SET s.name="Scott"

match (s:students)-[maj:majors_IN]->(m:major)
WHERE s.ssn=746897816
SET m.name = "Computer Science", m.level = "MS"

MATCH (r:register)
WHERE r.regtime ="Spring2021"
detach delete r;