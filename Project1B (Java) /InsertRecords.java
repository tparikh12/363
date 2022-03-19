package test;
import java.sql.Connection;



import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;
import java.sql.Connection;

public class InsertRecords {
	private static Connection connect = null;
	public static void main(String[] args)  throws SQLException{
		// TODO Auto-generated method stub
		try {
			String userName ="coms363";
			String password="password";
			String dbSever="jdbc:mysql://localhost:3306/project1";
			connect = DriverManager.getConnection(dbSever,userName,password);
			
		}
		catch(Exception e) {
			
		}
		Statement stmt = null;
		try {
		stmt=connect.createStatement();
			String tab1 = "INSERT INTO students(snum,ssn,name,gender,dob,c_addr,c_phone,p_addr,p_phone)" +
					"VALUES(1001,654651234,'Randy','M','2000/12/01','301 E Hall','5152700988','121 Main','7083066321')";
			stmt.executeUpdate(tab1);
			String tab2 ="INSERT INTO students\n" + 
					"(snum,ssn,name,gender,dob,c_addr,c_phone,p_addr,p_phone)\n" + 
					"VALUES(1002,123097834,\"Victor\",\"M\",\"2000/05/06\",\"270 W Hall\",5151234578,\"702 Walnut\",7080366333)";
			stmt.executeUpdate(tab2);
		String tab3 ="INSERT INTO students\n" + 
				"(snum,ssn,name,gender,dob,c_addr,c_phone,p_addr,p_phone)\n" + 
				"VALUES(1004,746897816,\"Seth\",\"M\",\"1998/12/30\",\"199 N Hall\",5158891504,\"21 Green\",5154132907)";
		stmt.executeUpdate(tab3);
		String tab4 = "INSERT INTO students\n" + 
				"(snum,ssn,name,gender,dob,c_addr,c_phone,p_addr,p_phone)\n" + 
				"VALUES(1005,186032894,\"Nicole\",\"F\",\"2001/04/01\",\"178 S Hall\",5158891155,\"13 Gray\",5157162071)";
		stmt.executeUpdate(tab4);
		String tab5 ="INSERT INTO students\n" + 
				"(snum,ssn,name,gender,dob,c_addr,c_phone,p_addr,p_phone)\n" + 
				"VALUES(1006,534218752,\"Becky\",\"F\",\"2001/05/16\",\"12 N Hall\",5157083698,\"189 Clark\",2034367632)";
		stmt.executeUpdate(tab5);
		String tab6 ="INSERT INTO students\n" + 
				"(snum,ssn,name,gender,dob,c_addr,c_phone,p_addr,p_phone)\n" + 
				"VALUES(1007,432609519,\"Kevin\",\"M\",\"2000/08/12\",\"75 E Hall\",5157082497,\"89 National\",7182340772)";
		stmt.executeUpdate(tab6);
		String tab7 ="INSERT INTO departments\n" + 
				"(code,name,phone,college)\n" + 
				"VALUES(401,\"Computer Science\",5152982801,\"LAS\")";
		stmt.executeUpdate(tab7);
		String tab8= "INSERT INTO departments\n" + 
				"(code,name,phone,college)\n" + 
				"VALUES(402,\"Mathematics\",5152982802,\"LAS\")";
			stmt.executeUpdate(tab8);
		String tab9 ="INSERT INTO departments\n" + 
				"(code,name,phone,college)\n" + 
				"VALUES(403,\"Chemical Engineering\",5152982803,\"Engineering\")";
		stmt.executeUpdate(tab9);
		String tab10 ="INSERT INTO departments\n" + 
				"(code,name,phone,college)\n" + 
				"VALUES(404,\"Landscape Architect\",5152982804,\"Design\")";
		stmt.executeUpdate(tab10);
		String tab11 = "INSERT INTO degrees\n" + 
				"(name,level,department_code)\n" + 
				"VALUES(\"Computer Science\",\"BS\",401)";
		stmt.executeUpdate(tab11);
		String tab12 ="INSERT INTO degrees\n" + 
				"(name,level,department_code)\n" + 
				"VALUES(\"Software Engineering\",\"BS\",401)";
		stmt.executeUpdate(tab12);
		String tab13 ="INSERT INTO degrees\n" + 
				"(name,level,department_code)\n" + 
				"VALUES(\"Computer Science\",\"MS\",401);";
		stmt.executeUpdate(tab13);
		String tab14 ="INSERT INTO degrees\n" + 
				"(name,level,department_code)\n" + 
				"VALUES(\"Computer Science\",\"PhD\",401)";
		stmt.executeUpdate(tab14);
		String tab15 ="INSERT INTO degrees\n" + 
				"(name,level,department_code)\n" + 
				"VALUES(\"Applied Mathematics\",\"MS\",402)";
		stmt.executeUpdate(tab15);
		String tab16 ="INSERT INTO degrees\n" + 
				"(name,level,department_code)\n" + 
				"VALUES(\"Chemical Engineering\",\"BS\",403)";
		stmt.executeUpdate(tab16);
		String tab17 ="INSERT INTO degrees\n" + 
				"(name,level,department_code)\n" + 
				"VALUES(\"Landscape Architect\",\"BS\",404)";
				stmt.executeUpdate(tab17);
				String tab18 ="INSERT INTO major\n" + 
						"(snum,name,level)\n" + 
						"VALUES(1001,\"Computer Science\",\"BS\")";
				stmt.executeUpdate(tab18);
				String tab19 ="INSERT INTO major\n" + 
						"(snum,name,level)\n" + 
						"VALUES(1002,\"Software Engineering\",\"BS\")";
				stmt.executeUpdate(tab19);
				String tab20 ="INSERT INTO major\n" + 
						"(snum,name,level)\n" + 
						"VALUES(1003,\"Chemical Engineering\",\"BS\")";
				stmt.executeUpdate(tab20);
				String tab21 ="INSERT INTO major\n" + 
						"(snum,name,level)\n" + 
						"VALUES(1004,\"Landscape Architect\",\"BS\")";
				stmt.executeUpdate(tab21);
				String tab22 ="INSERT INTO major\n" + 
						"(snum,name,level)\n" + 
						"VALUES(1005,\"Computer Science\",\"MS\")";
				stmt.executeUpdate(tab22);
				String tab23 = "INSERT INTO major\n" + 
						"(snum,name,level)\n" + 
						"VALUES(1006,\"Applied Mathematics\",\"MS\")";
				stmt.executeUpdate(tab23);
				String tab24 = "INSERT INTO major\n" + 
						"(snum,name,level)\n" + 
						"VALUES(1007,\"Computer Science\",\"PhD\")";
				stmt.executeUpdate(tab24);
				String tab25 ="INSERT INTO minor\n" + 
						"(snum,name,level)\n" + 
						"VALUES(1007,\"Applied Mathematics\",\"MS\")";
				stmt.executeUpdate(tab25);
				String tab26 = "INSERT INTO minor\n" + 
						"(snum,name,level)\n" + 
						"VALUES(1005,\"Applied Mathematics\",\"MS\")";
				stmt.executeUpdate(tab26);
				String tab27 ="INSERT INTO minor\n" + 
						"(snum,name,level)\n" + 
						"VALUES(1001,\"Software Engineering\",\"BS\")";
				stmt.executeUpdate(tab27);
				String tab28 = "INSERT INTO courses\n" + 
						"(number,name,description,credithours,level,department_code)\n" + 
						"VALUES(113,\"Spreadsheet\",\"Microsoft Excel and Access\",\"3\",\"Undergraduate\",401)";
				stmt.executeUpdate(tab28);
				String tab29 = "INSERT INTO courses\n" + 
						"(number,name,description,credithours,level,department_code)\n" + 
						"VALUES(311,\"Algorithm\",\"Design and Analysis\",3,\"Undergraduate\",401)";
				stmt.executeUpdate(tab29);
				String tab30 ="INSERT INTO courses\n" + 
						"(number,name,description,credithours,level,department_code)\n" + 
						"VALUES(531,\"Theory of Computation\",\"Theorem and Probability\",3,\"Graduate\",401)";
				stmt.executeUpdate(tab30);
				String tab31 = "INSERT INTO courses\n" + 
						"(number,name,description,credithours,level,department_code)\n" + 
						"VALUES(363,\"Database\",\"Design Principle\",3,\"Undergraduate\",401)";
				stmt.executeUpdate(tab31);
				String tab32 ="INSERT INTO courses\n" + 
						"(number,name,description,credithours,level,department_code)\n" + 
						"VALUES(412,\"Water Management\",\"Water Management\",3,\"Undergraduate\",404)";
						stmt.executeUpdate(tab32);		
						String tab33 ="INSERT INTO courses\n" + 
								"(number,name,description,credithours,level,department_code)\n" + 
								"VALUES(228,\"Special Topics\",\"Interesting Topics about CE\",3,\"Undergraduate\",403)";
						stmt.executeUpdate(tab33);
						String tab34 ="INSERT INTO courses\n" + 
								"(number,name,description,credithours,level,department_code)\n" + 
								"VALUES(101,\"Calculus\",\"Limit and Derivative\",4,\"Undergraduate\",402)";
						stmt.executeUpdate(tab34);
						String tab35 ="INSERT INTO register\n" + 
								"(snum,course_number,regtime,grade)\n" + 
								"VALUES(1001,363,\"Fall2020\",3)";
						stmt.executeUpdate(tab35);
						String tab36 ="INSERT INTO register\n" + 
								"(snum,course_number,regtime,grade)\n" + 
								"VALUES(1002,311,\"Fall2020\",4)";
						stmt.executeUpdate(tab36);
						String tab37 ="INSERT INTO register\n" + 
								"(snum,course_number,regtime,grade)\n" + 
								"VALUES(1003,228,\"Fall2020\",4)";
						stmt.executeUpdate(tab37);
						String tab38 ="INSERT INTO register\n" + 
								"(snum,course_number,regtime,grade)\n" + 
								"VALUES(1004,363,\"Spring2021\",3)";
						stmt.executeUpdate(tab38);
						String tab39=  "INSERT INTO register\n" + 
								"(snum,course_number,regtime,grade)\n" + 
								"VALUES(1005,531,\"Spring2021\",4)";
						stmt.executeUpdate(tab39);
						String tab40 = "INSERT INTO register\n" + 
								"(snum,course_number,regtime,grade)\n" + 
								"VALUES(1006,363,\"Fall2020\",3)";
						stmt.executeUpdate(tab40);
						String tab41 = "INSERT INTO register\n" + 
								"(snum,course_number,regtime,grade)\n" + 
								"VALUES(1007,531,\"Spring2021\",4)";
						stmt.executeUpdate(tab41);
						
		}
		
		finally {
			try {
				if(stmt !=null) {
					stmt.close();
				}
				if(connect !=null) {
					connect.close();
				}
				
			}
			catch (Exception e) {
				e.printStackTrace();
			}
		}

	}

}
