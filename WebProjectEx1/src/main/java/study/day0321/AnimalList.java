package study.day0321;

import java.util.List;
import java.util.Vector;

public class AnimalList {

	private List<AnimalDto> list=new Vector<>();
	
	public AnimalList() {
		list.add(new AnimalDto("영식이",23,"C1"));
		list.add(new AnimalDto("춘식이",20,"C3"));
		list.add(new AnimalDto("검순이",32,"C3"));
		list.add(new AnimalDto("춘식이",15,"C8"));
		list.add(new AnimalDto("불똥이",20,"C2"));
		
		AnimalDto dto1=new AnimalDto();
		dto1.setAnimalName("순자");
		dto1.setAnimalAge(19);
		dto1.setAnimalPhoto("C5");
		list.add(dto1);
		
	}
	
	public List<AnimalDto> getAllAnimals(){
		
		return list;
	}
	
	
}
