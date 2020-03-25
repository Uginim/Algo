package com.puercha.algo.user.dao;

import java.util.List;

import com.puercha.algo.user.vo.UserVO;

/**
 * 사용자 데이터 DAO 정의
 * @author Hyeonuk, Youdong
 *
 */
public interface UserDAO {
	
	/* Create */
	//사용자 생성
	int insertUser (UserVO userVO);
	
	/* Read */
	//사용자 전체조회
	List<UserVO> selectAllUser();
	//사용자 개별조회
	UserVO selectUser(String email);	
	UserVO selectUser(String email, String pw);
	
	/* Update */
	// 사용자 수정
	int updateUser (UserVO userVO);
	int changePW(long userNum,String oldPw,String newPw);
	
	/* Delete */
	// 사용자 삭제
	int deleteUser (String email,String pw);
	int deleteUser (long userNum);
	
	
	
}
