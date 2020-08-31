package member;

public class MemberVO {
	private int id;
	private String pw;
	private String gender;
	private String job;
	private String mail;
	private String Motive;
	public MemberVO(int id, String pw, String gender, String job, String mail, String motive) {
		
		this.id = id;
		this.pw = pw;
		this.gender = gender;
		this.job = job;
		this.mail = mail;
		this.Motive = motive;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getPw() {
		return pw;
	}
	public void setPw(String pw) {
		this.pw = pw;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getJob() {
		return job;
	}
	public void setJob(String job) {
		this.job = job;
	}
	public String getMail() {
		return mail;
	}
	public void setMail(String mail) {
		this.mail = mail;
	}
	public String getMotive() {
		return Motive;
	}
	public void setMotive(String motive) {
		this.Motive = motive;
	}
	@Override
	public String toString() {
		return "MemberVO [id=" + id + ", pw=" + pw + ", gender=" + gender + ", job=" + job + ", mail=" + mail
				+ ", Motive=" + Motive + "]";
	}
	public MemberVO(int id) {
		
		this.id = id;
	}
	
}
