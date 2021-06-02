package dao;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import dto.BoardDTO;
import mybatis.config.DBService;

public class BoardDAO {

	private SqlSessionFactory factory;
	private static BoardDAO instance = new BoardDAO();
	
	private BoardDAO() {
		factory = DBService.getInstance().getFactory();
	}
	
	public static BoardDAO getInstance() {
		if (instance == null) {
			instance = new BoardDAO();
		}
		return instance;
	}
	
	/* 1. 작성 */
	public int insert(BoardDTO dto) {
		SqlSession ss = factory.openSession(false);  // insert 후 수동커밋하겠다.
		int result = ss.insert("mybatis.mapper.board.insertBoard", dto);  // ss.insert("SQL's id", "인수")
		if (result > 0) {  // ss.insert() 성공하면
			ss.commit();  // 커밋하겠다.
		}
		ss.close();
		return result;
	}
	
	
	
	
	
	
	
}
