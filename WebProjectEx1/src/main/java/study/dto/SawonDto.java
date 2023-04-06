package study.dto;

public class SawonDto {
	private int num;
	private String name;
	private int score;
	private String gender;
	private String buseo;
	
	
	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getScore() {
		return score;
	}
	public void setScore(int score) {
		this.score = score;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getBuseo() {
		return buseo;
	}
	public void setBuseo(String buseo) {
		this.buseo = buseo;
	}
	public SawonDto(int num, String name, int score, String gender, String buseo) {
		super();
		this.num = num;
		this.name = name;
		this.score = score;
		this.gender = gender;
		this.buseo = buseo;
	}
	public SawonDto(String name, int score, String gender, String buseo) {
		super();
		this.name = name;
		this.score = score;
		this.gender = gender;
		this.buseo = buseo;
	}
	public SawonDto() {
		super();
	}
	
	
}
