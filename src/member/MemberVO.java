package member;

public class MemberVO {
	private int id;
	private String pw;
	private String gender;
	private String job;
	private String mail;
	private String Motive;
	private String hobby;
	private String regdate;
	
	public String getRegdate() {
		return regdate;
	}
	public void setRegdate(String regdate) {
		this.regdate = regdate;
	}
	public String getHobby() {
		return hobby;
	}
	public void setHobby(String hobby) {
		this.hobby = hobby;
	}
	public MemberVO(int id, String pw, String gender, String job, String mail, String motive, String hobby ,String regdate) {
		
		this.id = id;
		this.pw = pw;
		this.gender = gender;
		this.job = job;
		this.mail = mail;
		this.Motive = motive;
		this.hobby = hobby;
		this.regdate = regdate;
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
	public MemberVO() {
		// TODO Auto-generated constructor stub
	}
	
}
