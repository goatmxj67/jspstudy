package dao;

import java.util.List;
import java.util.Map;

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
	
	final String NAMESPACE = "mybatis.mapper.board";
	
	/* 1. 작성 */
	public int insert(BoardDTO dto) {
		SqlSession ss = factory.openSession(false);  // insert 후 수동커밋하겠다.
		int result = ss.insert(NAMESPACE + ".insertBoard", dto);  // ss.insert("SQL's id", "인수")
		if (result > 0) {  // ss.insert() 성공하면
			ss.commit();  // 커밋하겠다.
		}
		ss.close();
		return result;
	}
	
	/* 전체 레코드 개수 */
	public int getTotalRecord() {
		SqlSession ss = factory.openSession();  // 커밋이 필요 없는 SELECT문
		int count = ss.selectOne("mybatis.mapper.board.getTotalRecord");
		ss.close();
		return count;
	}
	
	/* 3. 목록 */
	public List<BoardDTO> selectList(Map<String, Integer> map) {
		SqlSession ss = factory.openSession();
		List<BoardDTO> list = ss.selectList("mybatis.mapper.board.selectList", map);
		ss.close();
		return list;
	}
	
	
	
}
