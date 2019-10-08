package site.itwill.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import site.itwill.dao.BoardDAO;
import site.itwill.dto.BoardDTO;

@Service
public class BoardServiceImpl implements BoardService {
	@Autowired
	private BoardDAO boardDAO;

	@Transactional
	@Override
	public void addBoard(BoardDTO board) {
		boardDAO.insertBoard(board);
	}

	@Transactional
	@Override
	public void updateBoard(BoardDTO board) {
		/*
		//테이블에 저장된 정보를 이용하여 전달값에 대한 유효성 검사
		if(restBoardDAO.selectRestBoard(board.getNum())==null) {
			//개발자가 작성한 예외 클래스로 예외 발생
			throw new Exception("변경하고자 하는 게시글이 존재하지 않습니다."); 
		}
		*/
		boardDAO.updateBoard(board);
	}

	@Transactional
	@Override
	public void eraseBoard(int bno) {
		boardDAO.deleteBoard(bno);
	}

	@Override
	public BoardDTO getBoard(int bno) {
		return boardDAO.selectBoard(bno);
	}

	@Override
	public List<BoardDTO> getBoardList(Map<String, Object> map) {
		return boardDAO.selectPageBoard(map);
	}

	@Override
	public int getCountBoard() {
		return boardDAO.selectCountBoard();
	}

	@Override
	public int selectboardTotal(Map<String, Object> map) {
		return boardDAO.selectboardTotal(map);
	}

}

