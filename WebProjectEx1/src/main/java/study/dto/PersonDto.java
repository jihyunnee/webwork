package study.dto;

public class PersonDto {
	private int personNum;
	private String personName;
	private int personYear;
	private String personAddress;
	private String personJob;
	private String personPhoto;
	
	public int getPersonNum() {
		return personNum;
	}
	public void setPersonNum(int personNum) {
		this.personNum = personNum;
	}
	public String getPersonName() {
		return personName;
	}
	public void setPersonName(String personName) {
		this.personName = personName;
	}
	public int getPersonYear() {
		return personYear;
	}
	public void setPersonYear(int personYear) {
		this.personYear = personYear;
	}
	public String getPersonAddress() {
		return personAddress;
	}
	public void setPersonAddress(String personAddress) {
		this.personAddress = personAddress;
	}
	public String getPersonJob() {
		return personJob;
	}
	public void setPersonJob(String personJob) {
		this.personJob = personJob;
	}
	public String getPersonPhoto() {
		return personPhoto;
	}
	public void setPersonPhoto(String personPhoto) {
		this.personPhoto = personPhoto;
	}
	public PersonDto(int personNum, String personName, int personYear, String personAddress, String personJob,
			String personPhoto) {
		super();
		this.personNum = personNum;
		this.personName = personName;
		this.personYear = personYear;
		this.personAddress = personAddress;
		this.personJob = personJob;
		this.personPhoto = personPhoto;
	}
	public PersonDto() {
		super();
	}
	
	
}
