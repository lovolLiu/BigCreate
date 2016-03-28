package weight;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Vector;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class Translate2 {
	
	Connection connection;
	Statement statement;
	Vector<String> skillDict = null;
	public Translate2(){
	    try {
	    	Class.forName("com.mysql.jdbc.Driver");
			connection = DriverManager.getConnection("jdbc:mysql://localhost/project", "root", "");
			statement = connection.createStatement();
		} catch (SQLException e) {
			e.printStackTrace();
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
	}
	
	public double year;
	public double pos;
	public double jobTranslate(ResultSet resultSet) throws ClassNotFoundException, SQLException{
		//double jobYears = jobYearsTranslate(resultSet);
		double position = positionTranslate(resultSet);
		
		double ans = position;
		//year = (int)jobYears;
		pos = position;
		return ans;
	}
	
	
	public int pojectNumTranslate(ResultSet resultSet){
		int num = 0;
		try {
			if(resultSet.getString("projectName_1") != null) num++;
			if(resultSet.getString("projectName_2") != null) num++;
			if(resultSet.getString("projectName_3") != null) num++;
			if(resultSet.getString("projectName_4") != null) num++;
			if(resultSet.getString("projectName_5") != null) num++;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		int ans = 0;
		if(num == 0) ans = 1;
		if(num >=1 && num <= 4) ans = 4;
		if(num >= 5) ans = 5;
		return ans;
	}
	
	public double jobYearsTranslate(ResultSet resultSet){
		int jobYears = 0;
		int i = 0;
		
		while(true){        //每次循环处理一个工作经历
			int fromYear = 0, toYear = 0;
			i++;
			String fieldNameOfFromDate = "jobExp" + i + "_fromDate";
			String fieldNameOfToDate = "jobExp" + i + "_toDate";
			try {
				String jobExp_fromDate = resultSet.getString(fieldNameOfFromDate);
				String jobExp_toDate = resultSet.getString(fieldNameOfToDate);
				
				if(jobExp_fromDate == null) break;   //如果已经没有工作经历了就退出循环
				
				String regEx="([0-9]+)-[0-9]+-[0-9]+";
		        Pattern p = Pattern.compile(regEx);
		        Matcher m1 = p.matcher(jobExp_fromDate);
		        if(m1.find()){ 
		        	 fromYear = Integer.parseInt(m1.group(1));
		        }
		        if(jobExp_toDate != null){
		        	Matcher m2 = p.matcher(jobExp_toDate);
		        	if(m2.find()){
		        		toYear = Integer.parseInt(m2.group(1));
		        	}
		        }
		        else{
		        	toYear = 2015;
		        }
		        
			} catch (SQLException e) {
				e.printStackTrace();
			}
			jobYears = jobYears + (toYear - fromYear);
		}
//		
//		double ans = 0;
//		if(jobYears == 0) ans = 0.863;
//		if(jobYears > 0 && jobYears <2) ans = 3.505;
//		if(jobYears >= 2 && jobYears < 5) ans = 6.054;
//		if(jobYears >=5 && jobYears < 10) ans = 7.97;
//		if(jobYears >= 10) ans = 9.562;

		return (double)jobYears;
	}
	

		public double positionTranslate(ResultSet resultSet) throws SQLException, ClassNotFoundException{
			double[] jobValue = new double[17];
			for(int i = 0; i < 17; i++){
				jobValue[i] = -1;
			}
			String[] hierarchy = {"总经理", "董事长", "副总经理", "总经理助理", "董事长助理", "总监", "经理", "主管"};
			for(int i = 0; i < 17; i++){
				String columnName = "jobExp" + (i+1) + "_position";
				String companycolumn = "jobExp" + (i+1) + "_companyName";
				String jobPosition = resultSet.getString(columnName);
				if(jobPosition != null){
					if(jobPosition.contains(hierarchy[0]) || jobPosition.contains(hierarchy[1])
							|| jobPosition.contains(hierarchy[2]) || jobPosition.contains(hierarchy[3]) 
							|| jobPosition.contains(hierarchy[4]) || jobPosition.contains(hierarchy[5])
							|| jobPosition.contains(hierarchy[6]) || jobPosition.contains(hierarchy[7])){
						jobValue[i] = 2.1*0.5;
					}
					else{
						jobValue[i] = 7.9*0.5;
					}
					jobValue[i] += jobTranslate(resultSet, columnName)*0.5;
					double ans = companyTranslate(resultSet, companycolumn);
					jobValue[i] = jobValue[i] * ans;
					
				}
			}
			double sum = 0;
			int cnt=0;
			for(int i=0; i<jobValue.length; i++){
				if(jobValue[i] > 0){
					sum += jobValue[i];
					cnt++;
				}
			}
			if(cnt == 0) return 0;
			double ans = sum/cnt;
			return ans;
		
		}
		
		public int jobTranslate(ResultSet resultSet, String columnName) throws SQLException{
			if(resultSet.getString(columnName) == null)
				return 3;
			ResultSet result_id = statement.executeQuery("Select job_name from job where job_name like '%"+ resultSet.getString(columnName) +"%'");
			if(result_id.next()){
				return 7;
			}
			ResultSet result_id2 = statement.executeQuery("Select job_class_name from job_class where job_class_name like '%" + resultSet.getString(columnName) +"%'");

			if(result_id2.next()){
				return 7;
			}
			return 3;
		}

		public double companyTranslate(ResultSet resultSet, String columnName) throws SQLException, ClassNotFoundException{
			double res = 1;
			if(resultSet.getString(columnName) == null) 
				return res;
			String companyName = resultSet.getString(columnName);
			ResultSet result_company = statement.executeQuery("SELECT rank FROM company_info where name = '" + resultSet.getString(columnName) + "'");
			if(!result_company.next()){
				result_company = statement.executeQuery("SELECT rank FROM company_info where name like '%" + resultSet.getString(columnName) + "%'");
			}
			if(!result_company.next()){
				result_company = statement.executeQuery("SELECT rank FROM company_info where licence_name like '%" + resultSet.getString(columnName) + "%'");
			}
			if(result_company.next()){
				String result = result_company.getString("rank");
				if(result.equals("Top500")) res = 9.5;
				else if(result.equals("大型")) res = 7.0;
				else if(result.equals("中型")) res = 3.4;
				else if(result.equals("小型")) res = 0.9;
				else res = 0.9;
			}
			return res;
		}



		int[] sch_array = new int[]{0,0,0,0,0,0,0};
		int[] bak_array = new int[]{0,0,0,0,0};
		//教育经历得分		
		public float eduTranslate(ResultSet resultSet){
					int i=0;
					float totalScore = 0;
					while(true){
						++i;
						double score=0;
						float tempScore=0;
						String schoolName = "school_"+i;
						String degreeName = "degree_"+i;
						try{
							String school_exp = resultSet.getString(schoolName);
							String degree_exp = resultSet.getString(degreeName);
							if(school_exp==null)break;
							ResultSet result = statement.executeQuery("SELECT class_id FROM school_info where school_name ='" + school_exp+"' or school_name like '%英国%'");
							String schoolExp = null;
							if(result.next()){
								schoolExp = result.getString("class_id").split(";")[0];
							}
							else{
								break;
							}
							if(schoolExp.equals("01")) {score = 0.9929; sch_array[0]++;}
							else if(schoolExp.equals("02")) {score = 0.9556; sch_array[1]++;}
							else if(schoolExp.equals("03")) {score = 0.867; sch_array[2]++;}
							else if(schoolExp.equals("04")) {score = 0.7728; sch_array[3]++;}
							else if(schoolExp.equals("05")) {score = 0.6271; sch_array[4]++;}
							else if(school_exp.contains("美国")||school_exp.contains("英国")||school_exp.contains("澳大利亚")||school_exp.contains("university")||school_exp.contains("University")||school_exp.contains("college")){
								 score = 0.867;
								 sch_array[5]++;
							 } 
							else {score = 0.2585; sch_array[6]++;}

							
							
							if(degree_exp.equals("博士"))
								{tempScore=(float)(0.5640*score); bak_array[0]++;}
							else if(degree_exp.equals("硕士"))
								{tempScore = (float)(0.5618*score); bak_array[1]++;}
							else if(degree_exp.equals("本科"))
								{tempScore = (float)(0.4914*score); bak_array[2]++;}
							else if(degree_exp.equals("大专"))
								{tempScore = (float)(0.3156*score); bak_array[3]++;}
							else 
								{tempScore = (float)(0.1203*score); bak_array[4]++;}
							totalScore = totalScore+tempScore;
							
						}catch (SQLException e) {
							e.printStackTrace();
						}

					}
					return totalScore;
		}
	
		
		
		public int ageTranslate(ResultSet resultSet) throws SQLException{
			
			String birthday = resultSet.getString("birthDate");
			//正则表达式,将出生日期更改为年龄
			int age = 30;    //如果没填写年龄,默认30岁
			String regEx="([0-9]+)-[0-9]+-[0-9]+";
	        Pattern p = Pattern.compile(regEx);
	        if(birthday != null) {
	        	Matcher m = p.matcher(birthday);
		        if(m.find()){ 
		        	age = 2015 - Integer.parseInt(m.group(1));
		        }
	        }
			return age;
		}
		
		public int genderTranslate(ResultSet resultSet) throws SQLException{
			String gender = resultSet.getString("sex");
			return Integer.parseInt(gender);
		}
		
		
		public int areaTranslate(ResultSet resultSet) throws SQLException{
			int areaResult = 0;
			if(resultSet == null)
				return areaResult;
			String area = resultSet.getString("address");
			String[] addressList = {"北京", "北京市", "东城区", "丰台区", "大兴区", "宣武区", "崇文区", "平谷区", 
					"延庆县", "怀柔区", "房山区", "昌平区", "朝阳区", "海淀区", "石景山区", "西城区", 
					"通州区", "门头沟区", "顺义区"};
			for(int i = 0; i < 19; i++){
				if(i < 2){
					if(area.equals(addressList[i])){
						areaResult = 1;
						break;
					}
				}
				else{
					if(area.contains(addressList[i])){
						areaResult = i-1;
						break;
					}
				}
			}
			return areaResult;
		}
//		public int skillTranslate(ResultSet resultSet) throws SQLException{
//			String skillRawStr = resultSet.getString("skillName");
//			String regEx=" +";
//	        Pattern p = Pattern.compile(regEx);
//	        String skills[] = p.split(skillRawStr);    //技能数组
//	        int cnt = 0;
//	        ReadFile readfile = new ReadFile();
//	        if(skillDict == null){
//	        	skillDict = readfile.getSkillVec();
//	        }
//	        for(int i=0; i<skills.length; i++){
//	        	if(skillDict.contains(skills[i])){
//	        		cnt++;
//	        	}
//	        }
//			return cnt;
//		}
		
		public int lengthOfJobDescription(ResultSet resultSet) throws SQLException{
			String totalDsrp = "";
			for(int i=0;i<17;i++){
				String columnName = "jobExp" + (i+1) + "_description";
				String jobDsrp = resultSet.getString(columnName);
				if(jobDsrp != null){
					totalDsrp += jobDsrp;
				}
			}
			return totalDsrp.length();
		}

		public float skill_score(int num){
			float temp = 0;
			if (num >= 5) temp = 10; 
			else if(num >= 3) temp = 6;
			else if(num >= 1) temp = 4;
			else temp = 1;

			return temp;	
		}
		public float jd_length(int total_size){
			float sum = 0;
			sum = total_size/20 ;
			return sum;
		}
		
		
		
		
}
