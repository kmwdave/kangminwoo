package org.edu.service;

import java.util.List;

import javax.inject.Inject;

import org.edu.dao.IF_BoardDAO;
import org.edu.vo.BoardVO;
import org.edu.vo.PageVO;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service // 스프링빈으로 사용하기 위해서 애노테이션 명시
public class BoardServiceImpl implements IF_BoardService{

	@Inject // DAO클래스를 주입받아서 사용변수 생성
	private IF_BoardDAO boardDAO;
	
	@Override
	public List<BoardVO> selectBoard(PageVO pageVO) throws Exception {
		// DAO클래스 사용코드 (아래)
		return boardDAO.selectBoard(pageVO);
	}

	@Override
	public int countBoard(PageVO pageVO) throws Exception {
		// DAO클래스 사용코드 (아래)
		return boardDAO.countBoard(pageVO);
	}

	// 아래 메서드는 구현이 2개 있는데 조회수 업데이트 정상처리 후 조회에러 발생시 업데이트한 조회수를 원상복귀시키는 작업. = 트랜잭션
	@Transactional // 에러 발생시 update부분이 롤백.
	@Override   
	public BoardVO readBoard(Integer bno) throws Exception {
		// bno번호에 해당하는 게시물 조회하는 쿼리 DAO연결 + 해당 게시물 조회수 업데이트 (아래)
		boardDAO.updateViewCount(bno);
		return boardDAO.readBoard(bno);
	}

	@Override
	public List<String> readAttach(Integer bno) throws Exception {
		// bno번호에 해당하는 게시물 첨부파일 조회쿼리 DAO연결 (아래)
		return boardDAO.readAttach(bno);
	}
	
	@Transactional
	@Override
	public void insertBoard(BoardVO boardVO) throws Exception {
		// 게시물 등록 DAO연결 (아래)
		boardDAO.insertBoard(boardVO);
		// 첨부파일 등록 DAO연결 (아래)
		String[] save_file_names = boardVO.getSave_file_names();
		String[] real_file_names = boardVO.getReal_file_names();
		// 첨부파일이 여러개일때 상황 대비
		int index = 0;
		String real_file_name = "";
		if(save_file_names == null) {return;}
		for(String save_file_name:save_file_names) { // 첨부파일이 1개일때는 한번만 반복
			real_file_name = real_file_names[index];
			boardDAO.insertAttach(save_file_name, real_file_name);
			index = index + 1;
		}	
	}

	@Override
	public void deleteBoard(Integer bno) throws Exception {
		// 게시물 삭제 DAO연결 (아래)
		boardDAO.deleteBoard(bno);
	}

	@Override
	public void updateBoard(BoardVO boardVO) throws Exception {
		// 게시물 업데이트 DAO연결 (아래)
		boardDAO.updateBoard(boardVO);
	}

}
