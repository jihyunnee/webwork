package study.dto;

public class ShopDto {

	private int num;
	private String sangpum;
	private String color;
	private String photo;
	private int su;
	private int dan;
	private String ipgoday;
	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
	}
	public String getSangpum() {
		return sangpum;
	}
	public void setSangpum(String sangpum) {
		this.sangpum = sangpum;
	}
	public String getColor() {
		return color;
	}
	public void setColor(String color) {
		this.color = color;
	}
	public String getPhoto() {
		return photo;
	}
	public void setPhoto(String photo) {
		this.photo = photo;
	}
	public int getSu() {
		return su;
	}
	public void setSu(int su) {
		this.su = su;
	}
	public int getDan() {
		return dan;
	}
	public void setDan(int dan) {
		this.dan = dan;
	}
	public String getIpgoday() {
		return ipgoday;
	}
	public void setIpgoday(String ipgoday) {
		this.ipgoday = ipgoday;
	}
	public ShopDto(String sangpum, String color, String photo, int su, int dan, String ipgoday) {
		super();
		
		this.sangpum = sangpum;
		this.color = color;
		this.photo = photo;
		this.su = su;
		this.dan = dan;
		this.ipgoday = ipgoday;
	}
	
	public ShopDto() {
		
	}
	
	
}
