package bean;

public class MemberPhoto {
	String oriFile;
	String sysFile;
	
	int serial;
	
	public MemberPhoto() {}
	public MemberPhoto(String ori,String sys) {
		this.oriFile = ori;
		this.sysFile = sys;
	}
	public String getOriFile() {
		return oriFile;
	}
	public void setOriFile(String oriFile) {
		this.oriFile = oriFile;
	}
	public String getSysFile() {
		return sysFile;
	}
	public void setSysFile(String sysFile) {
		this.sysFile = sysFile;
	}
	public int getSerial() {
		return serial;
	}
	public void setSerial(int serial) {
		this.serial = serial;
	}
}
