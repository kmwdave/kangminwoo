package org.edu.dao;

import java.util.List;

import org.edu.vo.BoardVO;
import org.edu.vo.PageVO;

public interface IF_BoardDAO {
	public List<BoardVO> selectBoard(PageVO pageVO) throws Exception;
	public int countBoard(PageVO pageVO) throws Exception;
	// 게시물 상세조회 시작
	public BoardVO readBoard(Integer bno) throws Exception;
	public List<String> readAttach(Integer bno) throws Exception;
	public void updateViewCount(Integer bno) throws Exception;
	// 게시물 상세조회 끝
	public void insertBoard(BoardVO boardVO) throws Exception;
	public void deleteBoard(Integer bno) throws Exception;
	public void updateBoard(BoardVO boardVO) throws Exception;
	// 첨부파일 저장
	public void insertAttach(String save_file_name, String real_file_name) throws Exception;
}
