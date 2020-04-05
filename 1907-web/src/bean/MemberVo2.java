package bean;

import java.util.Date;
import java.util.List;

public class MemberVo2 {
	String mId;
	String pwd;
	Date rDate;
	int grade;
	String mName;
	List<MemberPhoto> photos;
	String photo;
	
	public String getPhoto() {
		return photo;
	}
	public void setPhoto(String photo) {
		this.photo = photo;
	}
	public MemberVo2() {}
	public MemberVo2(String mId,String pwd,Date rDate,int grade,String mName) {
		this.mId = mId;
		this.pwd = pwd;
		this.rDate = rDate;
		this.grade = grade;
		this.mName = mName;
	}
	public String getmId() {
		return mId;
	}
	public void setmId(String mId) {
		this.mId = mId;
	}
	public List<MemberPhoto> getPhotos() {
		return photos;
	}
	public void setPhotos(List<MemberPhoto> photos) {
		this.photos = photos;
	}
	public String getPwd() {
		return pwd;
	}
	public void setPwd(String pwd) {
		this.pwd = pwd;
	}
	public Date getrDate() {
		return rDate;
	}
	public void setrDate(Date rDate) {
		this.rDate = rDate;
	}
	public int getGrade() {
		return grade;
	}
	public void setGrade(int grade) {
		this.grade = grade;
	}
	public String getmName() {
		return mName;
	}
	public void setmName(String mName) {
		this.mName = mName;
	}
	
}
