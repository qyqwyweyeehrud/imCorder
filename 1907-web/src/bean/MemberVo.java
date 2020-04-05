package bean;

public class MemberVo {
	String mid;
	String pwd;
	String rdate;
	int grade;
	String mName;
	public MemberVo() {}
	public MemberVo(String mid ,String pwd ,String rdate , int grade ,String mName) {
		this.mid = mid;
		this.pwd = pwd;
		this.rdate = rdate;
		this.grade = grade;
		this.mName = mName;
	}
	public String getMid() {
		return mid;
	}
	public void setMid(String mid) {
		this.mid = mid;
	}
	public String getPwd() {
		return pwd;
	}
	public void setPwd(String pwd) {
		this.pwd = pwd;
	}
	public String getRdate() {
		return rdate;
	}
	public String getmName() {
		return mName;
	}
	public void setmName(String mName) {
		this.mName = mName;
	}
	public void setRdate(String rdate) {
		this.rdate = rdate;
	}
	public int getGrade() {
		return grade;
	}
	public void setGrade(int grade) {
		this.grade = grade;
	}
}
