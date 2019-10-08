package site.itwill.dao;

import java.util.List;

import java.util.Map;


import site.itwill.dto.BoardDTO;

public interface BoardDAO {
	int insertBoard(BoardDTO board);
	int updateBoard(BoardDTO board);
	int deleteBoard(int bno);
	BoardDTO selectBoard(int bno);
	List<BoardDTO> selectPageBoard(Map<String, Object> map);
	int selectCountBoard();
	int selectboardTotal(Map<String, Object> map);
}
