package study.day0321;

import java.util.ArrayList;
import java.util.List;
import java.util.Vector;

public class ShopList {

	private List<ShopDto> list=new ArrayList<>();
	
	public ShopList() {
		
		list.add(new ShopDto("구두",10000,"검정","12.jpg"));
		list.add(new ShopDto("목폴라니트",14000,"베이지","5.jpg"));
		list.add(new ShopDto("머리핀",3000,"노랑","26.jpg"));
		list.add(new ShopDto("플랫슈즈",7000,"분홍","15.jpg"));
		list.add(new ShopDto("모자",17000,"갈색","35.jpg"));
		
		
	}
	
	public List<ShopDto> getSangpumList(){
		return list;
	}
	

}
