package weight;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class Calculate {
	
	Connection connection;
	Statement statement;
	
	public Calculate(){
		try {
			Class.forName("com.mysql.jdbc.Driver");
			connection = DriverManager.getConnection("jdbc:mysql://localhost/project?characterEncoding=utf-8", logic.Config.dbUsername, logic.Config.dbPassword);
			statement = connection.createStatement();

		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
	
	public String[]	getRecommendSkills(String position){
		String[] ans = new String[3];
		
		
		try {
			ResultSet result = statement.executeQuery("SELECT skill_1,skill_2,skill_3 FROM job_skill where job_name ='" + position +"'");
			if(result.next()){
			   ans[0] = result.getString("skill_1");
			   ans[1] = result.getString("skill_2");
			   ans[2] = result.getString("skill_3");
			}
			else{
				ans[0] = "算法与数据结构,C,操作系统";
				ans[1] = "框架,数据库,设计模式";
				ans[2] = "软件工程化,软件设计思想,软件过程改进";
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return ans;
	}
	
	public double ageTranslate(String year) throws SQLException{
		double age_score = 60;
		if(year != null) age_score =Integer.parseInt(year);
		if(age_score == 0) age_score= 60.0;
		else if(age_score < 3&&age_score > 0) age_score= 75.0;
		else if(age_score >= 3) age_score= 85.0;
		return age_score;

	}
	public double positionTranslate(String pos) throws SQLException, ClassNotFoundException{
		double jobValue  = 60.0;
		String[] hierarchy = {"总经理", "董事长", "副总经理", "总经理助理", "董事长助理", "总监", "经理", "主管"};
		if(pos != null){
				if(pos.contains(hierarchy[0]) || pos.contains(hierarchy[1])
						|| pos.contains(hierarchy[2]) || pos.contains(hierarchy[3]) 
						|| pos.contains(hierarchy[4]) || pos.contains(hierarchy[5])
						|| pos.contains(hierarchy[6]) || pos.contains(hierarchy[7])){
					jobValue = 50.0;
				}
				else{
					jobValue = 79.0;
				}
		}
		return jobValue;
	}
	
	public double majorTranslate(String major) throws SQLException{
		double major_score = 60.0;
		ResultSet result = statement.executeQuery("SELECT major_name FROM major_name where major_name ='" + major +"'");
		if(result.next()){
		   major_score = 80.0;
		}
		return major_score;
	}
	public double schoolTranslate(String school){
			double school_score = 60;
			try{
				System.out.println(school);
				String query = "SELECT class_id FROM school_info where school_name ='" + school +"' or school_alias like '%" + school + "%'";
				
				System.out.println(query);
				ResultSet result = statement.executeQuery("SELECT class_id FROM school_info where school_name ='" + school +"' or school_alias like '%" + school + "%'");
				String schoolExp = null;
				if(result.next()){
					schoolExp = result.getString("class_id").split(";")[0];
				}
				if(schoolExp != null){
					if(schoolExp.equals("01")) {school_score = 99.29; }
					else if(schoolExp.equals("02")) {school_score = 95.56; }
					else if(schoolExp.equals("03")) {school_score = 86.7; }
					else if(schoolExp.equals("04")) {school_score = 77.28; }
					else if(schoolExp.equals("05")) {school_score = 62.71;}
					else if(school.contains("美国")||school.contains("英国")||school.contains("澳大利亚")||school.contains("university")||school.contains("University")||school.contains("college")){
						school_score = 86.7;
					 } else {school_score = 25.85;}
				}
				else {school_score = 25.85;}
		
			}catch (SQLException e) {
				e.printStackTrace();
			}

		
		return school_score;
	}
	public double backgroundTranslate(String back){
		double background_score = 40;
		if(back.equals("博士"))
			{background_score=background_score+56.4; }
		else if(back.equals("硕士"))
			{background_score=background_score+56.18;}
		else if(back.equals("本科"))
			{background_score=background_score+49.14;}
		else if(back.equals("大专"))
			{background_score=background_score+31.56;}
		else 
			{background_score=background_score+12.03;}
		return background_score;
	}

	public void freeConnect(){
		try {
			connection.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
}
