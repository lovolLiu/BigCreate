package logic;
import java.io.BufferedReader;
import java.io.FileInputStream;
import java.io.FileWriter;
import java.io.IOException;
import java.io.InputStreamReader;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.text.DecimalFormat;
import java.util.Vector;
import java.util.regex.Matcher;
import java.util.regex.Pattern;


public class MyDistance {
	
	final int lineNumber = 857;
	final int numberOfResultArray = 20;
	
	static String ans = "";
	private String[][] result_array = new String[numberOfResultArray][7];
	
	public String interaction(String background, String age, String school, String major, String position) throws ClassNotFoundException, SQLException, IOException{
		ans = "";
		
		Translate translate = new Translate();
		BufferedReader reader = null;
		FileInputStream fileInputStream = new FileInputStream(
				Config.resultFilePath);
		InputStreamReader inputStreamReader = new InputStreamReader(
				fileInputStream, "ASCII");
		reader = new BufferedReader(inputStreamReader);

		double[][][] Distance = new double[lineNumber][lineNumber][4];
		int[][] cord = new int[lineNumber][6];
		String data = reader.readLine();


		int i = 0;
		for (i = 0; data != null; data = reader.readLine(), i++) {
			for (int j = 0; j < 6; j++) {            //如果需要添加字段的话,需要把j变大
				cord[i][j] = Integer.parseInt(data.split(" ")[j]);
			}
		}
		System.out.print("请输入学校名称：");
		cord[0][0] =translate.schoolTranslate(school);
		System.out.print("请输入专业名称：");
		cord[0][2] =translate.majorTranslate(major);
		System.out.print("请输入职位名称：");
		cord[0][1] =translate.jobTranslate(position);
		//此人的年龄
		cord[0][3] = Integer.parseInt(age) * 10000;
		//此人的学历
		cord[0][4] = translate.backgroundTranslate(background);
		
		cord[0][5] = 0;
		for (int n = 0; n < i; n++) {
			for (int k = 0; k < i; k++) {
				double d = 0;
				for (int j = 0; j < 5; j++) {            //如果加字段特征值,需要改这里,把J变大即可
					double m = Math.pow(Math.abs((double)(cord[0][j] - cord[k][j]))/10000,2);		
					d += m;
				}
				Distance[n][k][0] = cord[0][5];
				Distance[n][k][1] = cord[k][5];
				Distance[n][k][2] = d;
			}
		}
		double[] index = new double[lineNumber];
		int[] ID = new int[lineNumber];
		FileWriter out = new FileWriter(Config.distanseFilePath);
		int n = 0;
		int count = 0;
		for(int k = 0; k < i; k++){
				DecimalFormat df = new DecimalFormat("######0");   
				String w = "点ID: "+df.format(Distance[n][k][0])+" 测试点ID: "+df.format(Distance[n][k][1])+" 距离的平方: "+Distance[n][k][2]+'\n';
				out.write(w);
				w = "    点数据: "+cord[0][0]+" "+cord[0][1]+" "+cord[0][2]+" "+cord[0][3] +" "+cord[0][4] +" "+cord[0][5] + '\n';
				out.write(w);
				w = "测试点数据: "+cord[k][0]+" "+cord[k][1]+" "+cord[k][2]+" "+cord[k][3]+ " "+cord[k][4] + " " +cord[k][5] + '\n';
				index[count] = Distance[n][k][2];
				ID[count] = (int)Distance[n][k][1];
				count++;
				out.write(w);
		}
		System.out.println(i);
        //ans += i;

		System.out.println(index[3] + " ");
		
        //直接插入排序
        for (int i1 = 1; i1 < index.length; i1++) {
            //待插入元素
            double temp = index[i1];
            int j;
            int temp2 = ID[i1];
            for (j = i1-1; j>=0; j--) {
                //将大于temp的往后移动一位
                if(index[j]>temp){
                    index[j+1] = index[j];
                    ID[j+1] = ID[j];
                }else{
                    break;
                }
            }
            index[j+1] = temp;
            ID[j+1] = temp2;
        }
        
        System.out.println(index[3] + " ");
        
        int[] LineNumberLengthIDArray = new int[lineNumber];
        for(int i1 = 0; i1 < lineNumber; i1++){
        	LineNumberLengthIDArray[i1] = ID[i1];
        }
        System.out.println();
        System.out.println("排序之后：");
        ans += ("排序之后：" + "\n");
        for (int i1 = 0; i1 < numberOfResultArray; i1++) {
            System.out.print("距离："+index[i1]+" ID："+ LineNumberLengthIDArray[i1]+"\n");
            ans += ("距离："+index[i1]+" ID："+LineNumberLengthIDArray[i1]+"\n");
        }
        showDetail(LineNumberLengthIDArray);
       // groupBySalary(LineNumberLengthIDArray);
		translate.freeConnect();
		
		reader.close();
		out.close();
        return ans;
		
	}
	
	class Ans implements Comparable{
		public double distance;
		public int id;
		public int compareTo(Object b) {
			Ans bb = (Ans) b;
			if (this.distance < bb.distance)
				return -1;
			if (this.distance == bb.distance)
				return 0;
			else return 1;
		}
	}
	
	  public void showDetail(int[] LineNumberLengthIDArray) throws ClassNotFoundException, SQLException{
		  
			//mysql数据库连接
		  	int[] ResultIds = new int[numberOfResultArray];
		  	System.arraycopy(LineNumberLengthIDArray, 0, ResultIds, 0, numberOfResultArray);
			Class.forName("com.mysql.jdbc.Driver");
		    Connection connection = DriverManager.getConnection("jdbc:mysql://127.0.0.1/resume", Config.dbUsername, Config.dbPassword);
			Statement statement = connection.createStatement();
			
			for(int i=0; i< ResultIds.length; i++){
				ResultSet resultSet = statement.executeQuery("SELECT * FROM information4 WHERE ID = '" + ResultIds[i] + "'");
				
				while (resultSet.next()) {
					String skills = getSkills(resultSet.getString("jobexp1_position"));
					System.out.println(resultSet.getString("degree_1") + resultSet.getString("school_1") + " " + resultSet.getString("major_1") + " " + resultSet.getString("jobexp1_position") + " " + resultSet.getString("jobexp1_companyname")+ " " + skills );
					ans += (resultSet.getString("degree_1") + " " + resultSet.getString("school_1") + " " + resultSet.getString("major_1") + " " + resultSet.getString("jobexp1_position") + " " + resultSet.getString("jobexp1_companyname")+ " " + skills+"\n");
				

					result_array[i][0] = resultSet.getString("degree_1");
					result_array[i][1] = resultSet.getString("school_1");
					result_array[i][2] = resultSet.getString("major_1");
					result_array[i][3] = resultSet.getString("jobexp1_position");
					result_array[i][4] = resultSet.getString("jobexp1_companyname");
					result_array[i][5] = skills;
					result_array[i][6] = resultSet.getString("projectName_1");
							
					
				}
			}
			//应学的技能
			//先把posionName
			connection.close();
		  }
	  public String[][] get_result_array(){
		return result_array;
		  
	  }
	  public void showDetail(Vector ids) throws ClassNotFoundException, SQLException{
		  
		  
			Class.forName("com.mysql.jdbc.Driver");
		    Connection connection = DriverManager.getConnection("jdbc:mysql://127.0.0.1/resume", Config.dbUsername, Config.dbPassword);
			Statement statement = connection.createStatement();
			
			
			for(int i=0; i< ids.size(); i++){
				ResultSet resultSet = statement.executeQuery("SELECT * FROM information3 WHERE ID = '" + ids.get(i) + "'");
				String positionName = null;
				
				while (resultSet.next()) {
					String skills = getSkills(resultSet.getString("jobexp1_position"));
					System.out.println(resultSet.getString("degree_1") + resultSet.getString("school_1") + " " + resultSet.getString("major_1") + " " + resultSet.getString("jobexp1_position") + " " + resultSet.getString("jobexp1_companyname")+ " " + skills );
					ans += (resultSet.getString("degree_1") +  " " + resultSet.getString("school_1") + " " + resultSet.getString("major_1") + " " + resultSet.getString("jobexp1_position") + " " + resultSet.getString("jobexp1_companyname")+ " " + skills +"\n");
				}
			}
			//应学的技能
			//先把posionName
			connection.close();
		  }
	  
	  public String getSkills(String position) throws SQLException, ClassNotFoundException{
			//mysql数据库连接
		Class.forName("com.mysql.jdbc.Driver");
		Connection connection = DriverManager.getConnection("jdbc:mysql://localhost/project", Config.dbUsername, Config.dbPassword);
		Statement statement = connection.createStatement();
		ResultSet resultSet = statement.executeQuery("SELECT skill FROM job WHERE job_name like '%" + position + "%'");
		if(resultSet.next()){
			return resultSet.getString(1);
		}
		ResultSet resultSet2 = statement.executeQuery("SELECT skilltb.name FROM job,job_class,skilltb WHERE job.vocation_id = job_class.job_class_id and job_class.job_class_name = skilltb.kind and job_class.job_class_name like '%" + position + "%'");
		String output = "";
		while(resultSet2.next()){
			output += resultSet2.getString(1) + ",";
		}
		connection.close();
		return output;
	  }
	  
	  public int parseSalaryFromStringToInt(String salaryStr){
		  		int salary = 0;
				if(salaryStr.contains("面议")){
					salary = -1;
				}
				else{
	                String regEx="([0-9]+)-([0-9]+)";
	                Pattern p = Pattern.compile(regEx);
	                Matcher m = p.matcher(salaryStr);
	                if(m.find()){ 
	                	salary = (Integer.parseInt(m.group(1))+Integer.parseInt(m.group(1)))/2;
	                }
	                else{
	                	String regEx2="([0-9]+)";
		                Pattern p2 = Pattern.compile(regEx2);
		                Matcher m2 = p2.matcher(salaryStr);
		                if(m2.find())
		                	salary = Integer.parseInt(m2.group(1));
	                } 	
				}
                return salary;
	  }
	  
	  
//	  public void groupBySalary(int[] ids) throws SQLException, ClassNotFoundException{
//		  	Class.forName("com.mysql.jdbc.Driver");
//		    Connection connection = DriverManager.getConnection("jdbc:mysql://127.0.0.1/resume", Config.dbUsername, Config.dbPassword);
//			Statement statement = connection.createStatement();
//			int[] salary = new int[lineNumber+1];
//			int[] salaryid = new int[lineNumber*5];
//			int n=0;
//			
//			int[] ResultIds = new int[numberOfResultArray];
//			System.arraycopy(ids, 0, ResultIds, 0, numberOfResultArray);
//			
//			for(int i=0; i< ResultIds.length; i++){
//				ResultSet resultSet = statement.executeQuery("SELECT expectSalary FROM information3 WHERE ID = '" + ResultIds[i] + "'");
//				
//				while (resultSet.next()) {
//					
//					int salary_ =  parseSalaryFromStringToInt(resultSet.getString(1));
//					if(salary_ < 0) continue;
//					salary[n] = salary_;
//					salaryid[n++] = ResultIds[i];
////	                } 	
//				}
//			}
//			int min = 1000000, max = 0;
//			for(int k=0; k<n; k++){
//				if(min > salary[k]){
//					min = salary[k];
//				}
//				if(max < salary[k]){
//					max = salary[k];
//				}
//			}
//			int[] level = new int[4];
//			int stage = (max - min) / 4;
//			level[0] = min + stage;
//			level[1] = level[0] + stage;
//			level[2] = level[1] + stage;
//			level[3] = level[2] + stage;
//			
//			Vector v0 = new Vector(4);
//			Vector v1 = new Vector(4);
//			Vector v2 = new Vector(4);
//			Vector v3 = new Vector(4);
//			
//			for(int k = 0; k < n; k++){
//				if(salary[k] < level[0]){
//					v0.add(salaryid[k]);
//				}
//				else if(salary[k] < level[1]){
//					v1.add(salaryid[k]);
//				}
//				else if(salary[k] < level[2]){
//					v2.add(salaryid[k]);
//				}
//				else{
//					v3.add(salaryid[k]);
//				}
//			}
//			
//			System.out.println("salary<" + level[0]);
//			ans += ("salary<" + level[0] + "\n");
//			showDetail(v0);
//
//			System.out.println("salary<" + level[1]);
//			ans += ("salary<" + level[1] + "\n");
//			showDetail(v1);
//
//			System.out.println("salary<" + level[2]);
//			ans += ("salary<" + level[2] + "\n");
//			showDetail(v2);
//
//			System.out.println("salary<" + level[3]);
//			ans += ("salary<" + level[3] + "\n");
//			showDetail(v3);
//			
//			int[] jobYears = new int[lineNumber];
//			//散点图
//			for(int i = 0; i<ids.length; i++){
//				ResultSet resultSet = statement.executeQuery("SELECT expectSalary, jobExp1_fromDate FROM information3 WHERE ID = '" + ids[i] + "'");
//				
//				if(resultSet.next()){
//					int salary_ = parseSalaryFromStringToInt(resultSet.getString(1));
//					resultSet.getString(2);           //这句话不能删。
//					if(salary_ < 0 || resultSet.wasNull()) continue;
//					salary[n] = salary_;
//					//分析日期，并保存到数组
//	                String regEx="([0-9]+)-[0-9]+-[0-9]+";
//	                Pattern p = Pattern.compile(regEx);
//	                Matcher m = p.matcher(resultSet.getString(2));
//	                if(m.find()){ 
//	                	jobYears[i] = 2015 - Integer.parseInt(m.group(1));
//	                }
//					//id
//					salaryid[n++] = ids[i];
//				}
//			}
//			 connection.close();	
//	  }
	 
}
	