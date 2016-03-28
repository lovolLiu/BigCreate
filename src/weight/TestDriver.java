package weight;
import java.io.FileNotFoundException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;


public class TestDriver {

	public static void main(String[] args) throws SQLException, ClassNotFoundException {
		double weight;
		int i=6;
		double[][] array = new double[100][2];
		//for(weight = 0.5;weight<1;weight=weight+0.1){
			//array[i][0]=(double)i;
			//array[i][1]=weight;
			//System.out.println("文件"+i+":  "+"权值： "+weight);
		Translate2 tl = new Translate2();
		Class.forName("com.mysql.jdbc.Driver");
		Connection connection = DriverManager.getConnection("jdbc:mysql://localhost/resume", "root", "");
		Statement statement = connection.createStatement();
		ResultSet resultSet = statement.executeQuery("Select * from information2");
		
		Connection connection2 = DriverManager.getConnection("jdbc:mysql://localhost/resume", "root", "");
		Statement statement2 = connection2.createStatement();
		ResultSet re2 = statement2.executeQuery("Select isOutstanding from tokenresume");
		PrintWriter out = null;
		try {
			out = new PrintWriter("H:\\SelectWeight_fin_12.17.arff");
		} catch (FileNotFoundException e1) {
			e1.printStackTrace();
		}
//		out.println("@relation model");
//		out.println("@attribute 'education' numeric");
//		out.println("@attribute 'job' numeric");
//		out.println("@attribute 'project' numeric");
//		out.println("@attribute 'age' numeric");
//		out.println("@attribute 'gender' numeric");
//		out.println("@attribute 'area' numeric");
//		out.println("@attribute 'skill' numeric");
//		out.println("@attribute 'jd_length' numeric");
//		out.println("@attribute 'job_years' numeric");
//		out.println("@attribute 'id' numeric");
//		out.println("@attribute 'isgoodman' {'0','1'}");
//		out.println("@data");
		
		while(resultSet.next() && re2.next() ){ //&& re2.next()

			out.print(tl.eduTranslate(resultSet) + " ");
			
			out.print(tl.jobTranslate(resultSet) + " ");
			out.print(tl.pojectNumTranslate(resultSet) + " ");
			out.print(tl.ageTranslate(resultSet) + " ");
			out.print(tl.genderTranslate(resultSet) + " ");
			out.print(tl.areaTranslate(resultSet) + " ");
			//out.print(tl.skill_score(tl.skillTranslate(resultSet)) + " ");
			out.print(tl.jd_length(tl.lengthOfJobDescription(resultSet)) + " ");
			out.print(tl.jobYearsTranslate(resultSet) + " ");
			out.print(resultSet.getString("ID")+ " ");
			out.println(re2.getString("isOutstanding"));
			//System.out.println(tl.year+" "+tl.pos);
			out.flush();
			
//			System.out.println("**********");
//			System.out.println("ID:" + resultSet.getString("ID"));
//			System.out.println("项目得分:" + tl.pojectNumTranslate(resultSet));
//			System.out.println("工作得分:" + tl.jobTranslate(resultSet));
//			System.out.println("教育得分:" + tl.eduTranslate(resultSet));
		}
		//学校权重
//		int sum1 = 0;
//		int u =0;
//		for( u = 0; u< 7; u++){
//			sum1 += tl.sch_array[u];
//		}
//		float[] sch_weight = new float[]{0,0,0,0,0,0,0};
//		float[] bak_weight = new float[]{0,0,0,0,0};
//		int sum2 = 0;
//		for(u = 0;u < 5 ;u++){
//			sum2 += tl.bak_array[u];
//		}
//		for(u = 0 ; u < 7; u++){
//			sch_weight[u] = (float)tl.sch_array[u]/(float)sum1;
//			System.out.println("学校"+u+"的权重："+sch_weight[u]);
//		}
//		for(u = 0 ; u < 5; u++){
//			bak_weight[u] = (float)tl.bak_array[u]/(float)sum2;
//			System.out.println("学历"+u+"的权重："+bak_weight[u]);
//		}
		out.close();
		System.out.println("Finish");
		i++;
		//}
	}

}
