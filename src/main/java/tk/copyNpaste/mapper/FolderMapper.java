/*
* @ Class : FolderMapper
* @ Date : 2018.10.06
* @ Author : boatemplate
* @ Desc : FolderMapper-DAO
*/
package tk.copyNpaste.mapper;

import java.sql.SQLException;
import java.util.List;

import tk.copyNpaste.vo.FolderVO;

public interface FolderMapper {

	//폴더 목록 
	public List<FolderVO> selectAllFolder(String userEmail) throws Exception;
	
	//폴더 추가
	public int insertFolder(FolderVO folder) throws Exception;
		
	//폴더 수정 : 컨텐츠 有
	public int updateFolder(FolderVO folder) throws Exception;

	//폴더 수정 : 컨텐츠 無
	public int updateFolder2(FolderVO folder) throws Exception;
	
	//폴더 삭제 : 컨텐츠 有
	public int deleteFolder(FolderVO folder) throws Exception;
	
	//폴더 삭제 : 컨텐츠 無
	public int deleteFolder2(FolderVO folder) throws Exception;
	
	//기본폴더 지정
	public int setDefaultFolder(FolderVO folder) throws Exception;
	
	//기본폴더 해제
	public int removeDefaultFolder(FolderVO folder) throws Exception;
	
	//회원 가입 시 기본폴더 추가
	public int insertFolderUserDefault(String userEmail)
			throws ClassNotFoundException, SQLException;
	
	//회원 가입 시 스크랩 폴더 추가
	public int insertFolderUserScrap(String userEmail)
			throws ClassNotFoundException, SQLException;

	//폴더 이름 중복 확인
	public int checkFolderName(FolderVO folder) throws Exception;



}
