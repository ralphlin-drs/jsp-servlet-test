package mvctwo;

import java.util.*;

public class StudentDataUtil {

	public static List<Student> getStudents(){
		//create an empty list
		List<Student> student = new ArrayList<>();
		
		//add sample data
		student.add(new Student("Clayton" , "Kershaw" , "Clayton@dodgers.com"));
		student.add(new Student("Juan" , "Soto" , "Juan@nationals.com"));
		student.add(new Student("Gary" , "Sanchez" , "Gary@yankees.com"));
		//return the list
		return student;
	}
}
