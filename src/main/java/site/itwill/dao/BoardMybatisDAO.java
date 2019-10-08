package site.itwill.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import site.itwill.dto.BoardDTO;
import site.itwill.mapper.BoardMapper;

@Repository
public class BoardMybatisDAO implements BoardDAO {
	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public int insertBoard(BoardDTO BoardDTO) {
		return sqlSession.getMapper(BoardMapper.class).insertBoard(BoardDTO);
	}
	
	@Override
	public int deleteBoard(int boardBno) {
		return sqlSession.getMapper(BoardMapper.class).deleteBoard(boardBno);
	}
	
	@Override
	public int updateBoard(BoardDTO BoardDTO) {
		return sqlSession.getMapper(BoardMapper.class).updateBoard(BoardDTO);
	}

	@Override
	public BoardDTO selectBoard(int bno) {
		return sqlSession.getMapper(BoardMapper.class).selectBoard(bno);
	}

	@Override
	public List<BoardDTO> selectPageBoard(Map<String, Object> map) {
		return sqlSession.getMapper(BoardMapper.class).selectPageBoard(map);
	}

	@Override
	public int selectCountBoard() {
		return sqlSession.getMapper(BoardMapper.class).selectCountBoard();
	}
	@Override
	public int selectboardTotal(Map<String, Object> map) {
		return sqlSession.getMapper(BoardMapper.class).selectboardTotal(map);
	}
	
}
