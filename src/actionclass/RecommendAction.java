package actionclass;

import java.io.IOException;
import java.sql.SQLException;

import logic.LineGraph;
import logic.LineNodeSet;
import logic.MyDistance;
import weight.Calculate;

public class RecommendAction {
	
	private String age;
	private String school;
	private String background;
	private String major;
	private String position;
	private String skill;
	private String project;
	private String salary;
	private String gender;
	
	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	private LineGraph lineGraph;
	private LineNodeSet nodeSet;
	
	private MyDistance distanceObj;
	private String anstr;
	private String[][] resultArr;
	private String[] similarPerson = new String[20];
	
	private double age_score;
	private double school_score;
	private double background_score;
	private double major_score;
	private double position_score;
	private double res[] = new double[5];

	
	private String[] recommendSkills;
	
	
	
	
	public String recommend(){
		try {
			if(isEmptyString(age) || isEmptyString(school) || isEmptyString(background) || isEmptyString(major) || isEmptyString(position)){
				return null;
			}
			
			
			lineGraph = new LineGraph();
			String strKey = age + school + background + major + position;
			nodeSet = lineGraph.getLineNodeSet(strKey);
			Calculate calculate = new Calculate();
			System.out.println(age);
			System.out.println(school);
			System.out.println(background);
			distanceObj.interaction(background, age, school, major, position);
			resultArr = distanceObj.get_result_array().clone();
			for(int i=1;i<resultArr.length;i++){
				similarPerson[i] = "";
				for(int j=1;j<resultArr[j].length;j++){
					if(resultArr[i][j] == null) continue;
					similarPerson[i] += (resultArr[i][j]+" ");
				}
				System.out.println(i + " " + similarPerson[i]);
			}
			
			recommendSkills = calculate.getRecommendSkills(position);
			
			age_score = calculate.ageTranslate(age);
			school_score = calculate.schoolTranslate(school);
			background_score = calculate.backgroundTranslate(background);
			major_score = calculate.majorTranslate(major);
			position_score = calculate.positionTranslate(position);
			calculate.freeConnect();
			System.out.println(age_score);
			
			
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
		return "success";
	}
	
	public String[] getRecommendSkills() {
		return recommendSkills;
	}

	public void setRecommendSkills(String[] recommendSkills) {
		this.recommendSkills = recommendSkills;
	}
	
	public String getRecommendSkills1() {
		return recommendSkills[0];
	}
	
	public String getRecommendSkills2() {
		return recommendSkills[1];
	}
	
	public String getRecommendSkills3() {
		return recommendSkills[2];
	}

	public boolean isEmptyString(String str){
		return (str==null || str.equals(""));
	}
	
	
	public MyDistance getDistanceObj() {
		return distanceObj;
	}

	public void setDistanceObj(MyDistance distanceObj) {
		this.distanceObj = distanceObj;
	}

	public String getAnstr() {
		return anstr;
	}

	public void setAnstr(String anstr) {
		this.anstr = anstr;
	}

	public String[][] getResultArr() {
		return resultArr;
	}

	public void setResultArr(String[][] resultArr) {
		this.resultArr = resultArr;
	}

	public String[] getSimilarPerson() {
		return similarPerson;
	}
	
	public String getSimilarPerson1() {
		return similarPerson[1];
	}
	public String getSimilarPerson2() {
		return similarPerson[2];
	}
	public String getSimilarPerson3() {
		return similarPerson[3];
	}
	public String getSimilarPerson4() {
		return similarPerson[4];
	}
	public String getSimilarPerson5() {
		return similarPerson[5];
	}
	public String getSimilarPerson6() {
		return similarPerson[6];
	}
	public String getSimilarPerson7() {
		return similarPerson[7];
	}
	public String getSimilarPerson8() {
		return similarPerson[8];
	}
	public String getSimilarPerson9() {
		return similarPerson[9];
	}
	public String getSimilarPerson10() {
		return similarPerson[10];
	}

	public void setSimilarPerson(String[] similarPerson) {
		this.similarPerson = similarPerson;
	}

	public String getAge() {
		return age;
	}

	public void setAge(String age) {
		this.age = age;
	}

	public String getSchool() {
		return school;
	}

	public void setSchool(String school) {
		this.school = school;
	}

	public String getBackground() {
		return background;
	}

	public void setBackground(String background) {
		this.background = background;
	}

	public String getMajor() {
		return major;
	}

	public void setMajor(String major) {
		this.major = major;
	}

	public String getPosition() {
		return position;
	}

	public void setPosition(String position) {
		this.position = position;
	}

	public String getSkill() {
		return skill;
	}

	public void setSkill(String skill) {
		this.skill = skill;
	}

	public String getProject() {
		return project;
	}

	public void setProject(String project) {
		this.project = project;
	}

	public String getSalary() {
		return salary;
	}

	public void setSalary(String salary) {
		this.salary = salary;
	}

	public double getAge_score() {
		return age_score;
	}

	public void setAge_score(int age_score) {
		this.age_score = age_score;
	}

	public double getSchool_score() {
		return school_score;
	}

	public void setSchool_score(int school_score) {
		this.school_score = school_score;
	}

	public double getBackground_score() {
		return background_score;
	}

	public void setBackground_score(int background_score) {
		this.background_score = background_score;
	}

	public double getMajor_score() {
		return major_score;
	}

	public void setMajor_score(int major_score) {
		this.major_score = major_score;
	}

	public double getPosition_score() {
		return position_score;
	}

	public void setPosition_score(int position_score) {
		this.position_score = position_score;
	}
	
	public LineGraph getLineGraph() {
		return lineGraph;
	}

	public void setLineGraph(LineGraph lineGraph) {
		this.lineGraph = lineGraph;
	}

	public LineNodeSet getNodeSet() {
		return nodeSet;
	}

	public void setNodeSet(LineNodeSet nodeSet) {
		this.nodeSet = nodeSet;
	}

	public double[] getRes() {
		return res;
	}

	public void setRes(double[] res) {
		this.res = res;
	}

	public void setAge_score(double age_score) {
		this.age_score = age_score;
	}

	public void setSchool_score(double school_score) {
		this.school_score = school_score;
	}

	public void setBackground_score(double background_score) {
		this.background_score = background_score;
	}

	public void setMajor_score(double major_score) {
		this.major_score = major_score;
	}

	public void setPosition_score(double position_score) {
		this.position_score = position_score;
	}
	
	
	
}
