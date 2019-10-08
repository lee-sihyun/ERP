package site.itwill.service;

import java.util.List;
import java.util.Map;

import site.itwill.dto.BoardDTO;

public interface BoardService {
	void addBoard(BoardDTO board);
	void updateBoard(BoardDTO board);
	void eraseBoard(int bno);
	BoardDTO getBoard(int bno);
	int getCountBoard();
	List<BoardDTO> getBoardList(Map<String, Object> map);
	int selectboardTotal(Map<String, Object> map);
}

