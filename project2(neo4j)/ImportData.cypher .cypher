lOAD CSV with headers FROM 'file:///students.csv' AS line
CREATE (:students { snum:toInteger(line.snum),ssn:toInteger(line.ssn), name:line.name,gender:line.gender,dob:line.dob,c_addr:line.c_addr,c_phone:toInteger(line.c_phone),p_addr:line.p_addr,p_phone:toInteger(line.p_phone) });

lOAD CSV with headers FROM 'file:///register.csv' AS line
CREATE (:register { snum:toInteger(line.snum),course_number:toInteger(line.course_number),regtime:line.regtime,grade:toInteger(line.grade) });

lOAD CSV with headers FROM 'file:///minor.csv' AS line
CREATE (:minor { snum:toInteger(line.snum),name:line.name,level:line.level });

lOAD CSV with headers FROM 'file:///major.csv' AS line
CREATE (:major { snum:toInteger(line.snum),name:line.name,level:line.level });

LOAD CSV with headers FROM 'file:///degrees.csv' AS line
CREATE (dgr:degree {dname:line.name,level:line.level,dcode:toInteger(line.dcode)})
WITH dgr, line
MATCH (dep: department {dcode:toInteger(line.dcode)})
CREATE (dgr)<-[:administer]-(dep);

lOAD CSV with headers FROM 'file:///courses.csv' AS line
CREATE (:courses { number:toInteger(line.number),name:line.name,description:line.description,credithours:toInteger(line.credithours),level:line.level,dcode:toInteger(line.dcode) });

LOAD CVS with headers FROM 'file:///departments.cvs' AS line
CREATE (:departments
{ dcode:toInteger(line.dcode),name:line.name,phone:toInteger(line.phone),college:line.college });

MATCH (c:courses),(d:department)
WHERE d.dcode=c.dcode
CREATE (d)-[of:offers]->(c)

MATCH (r:register),(c:courses)
WHERE r.course_number=c.number
CREATE (r)-[regs:regsIn]->(c)

MATCH (s:students),(r:register)
WHERE s.snum=r.snum
CREATE (s)-[reg:regi]->(r)

MATCH (d:departments),(c:courses)
WHERE d.dcode=c.dcode
CREATE (d)-[of:offers]->(c)

MATCH (s:students),(m:major)
WHERE s.snum=m.snum
CREATE (s)-[maj:majors_IN]->(m)

MATCH (s:students),(n:minor)
WHERE s.snum=n.snum
CREATE (s)-[min:minors_IN]->(n)

MATCH (m:major),(q:degrees)
WHERE m.name=q.name
CREATE (m)-[maj:degrees]->(q)

MATCH (n:minor),(q:degrees)
WHERE n.name=q.name
CREATE (n)-[min:degrees]->(q)




