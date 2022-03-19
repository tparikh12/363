MATCH (s:students)
WHERE s.name="Becky"
RETURN s.snum, s.ssn  

MATCH (s:students)-[maj:majors_IN]->(m:major)
WHERE s.ssn=123097834
REturn m.name,m.level

MATCH (c:courses)
WHERE c.dcode=401
return c.name

MATCH (q:degree)
WHERE q.dcode
return q.name,q.level

MATCH (s:students)-[min:minors_IN]->(n:minor)
WHERE n.snum=s.snum
return s.name

MATCH (s:students)-[min:minors_IN]->(n:minor)
WHERE n.snum=s.snum
return s.name,count(n)

MATCH (s:students)
WHERE s.name CONTAINS 'n'or s.name Contains 'N'
REturn s.name,s.snum,s.ssn

MATCH (s:students)
WHERE not s.name CONTAINS 'n'or not s.name Contains  'N'
REturn s.name,s.snum,s.ssn

MAtch (s:students)-[reg:regi]->(r:register)
WHERE s.snum=r.snum
return s.name,r.course_number, count(n)

MAtch (c:courses)
WHERE c.dcode=401
return c.number,c.name

MATCH (d:degree)
WHERE d.dcode=401
return d.name,d.level

MATCH (s:students)
WITH min(s.dob) as min
MATCH (s:students) where s.dob=min
return s.snum

MATCH (s:students)
WITH max(s.dob) as max
MATCH (s:students) where s.dob=max
return s.snum

MATCH (c:courses)
WHERE c.dcode = 401 or c.dcode = 404 
Return c.number,c.name


MATCH (r:register)-[regs]->(s:students)
where r.regtime="Fall2020" 
with  r.snum as dc 
MATCH (r1:register)-[regs]->(s1:students)
where r1.snum = dc 
return s1.name





