package controller;

import model.CalculateCommand;
import model.InquiryCommand;

public class ModelMapper {
	
	// 한 번에 하나의 Model만 반환할 수 있도록 Singleton 처리
	private static ModelMapper mapper = new ModelMapper();
	private ModelMapper() {}
	public static ModelMapper getInstance() {
		if (mapper == null) {
			mapper = new ModelMapper();
		}
		return mapper;
	}

	// Model을 반환시키는 getModel() 메소드
	public CalculateCommand getModel(String cmd) {
		CalculateCommand command = null;
		switch (cmd) {
		case "inquiry.do":
			command = new InquiryCommand();
			break;
		}
		return command;
	}
	
}
