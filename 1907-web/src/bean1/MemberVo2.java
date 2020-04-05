package bean1;

import java.text.SimpleDateFormat;
import java.util.Date;

public class MemberVo2 {
	String mId; //(PK)
	 String mName; // not null
	 String rDate; //입학일 not null
	 int grade; //학년 //check
	SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
	String pattern = "{'mId' : '%s' , 'mName' : '%s' , "
	 + " 'rDate': '%s', 'grade' : '%s'}";

	public MemberVo2() {}
	public MemberVo2(String id, String name, String d, int g) {
		this.mId = id;
		this.mName = name;
		this.rDate = d;
		this.grade = g;
	}
	public String getmId() {
		return mId;
	}
	public void setmId(String mId) {
		this.mId = mId;
	}
	public String getmName() {
		return mName;
	}
	public void setmName(String mName) {
		this.mName = mName;
	}
	public String getrDate() {
		return rDate;
	}
	public void setrDate(String rDate) {
		this.rDate = rDate;
	}
	public int getGrade() {
		return grade;
	}
	public void setGrade(int grade) {
		this.grade = grade;
	}
	public String getPattern() {
		return pattern;
	}
	public void setPattern(String pattern) {
		this.pattern = pattern;
	}
}
