/*
* @Class : EtcService
* @ Date : 2018.10.05
* @ Author : 이주원
* @ Desc : EtcMapper 사용, 업무수행.
*/

package tk.copyNpaste.etc;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import tk.copyNpaste.mapper.EtcMapper;
import tk.copyNpaste.vo.ReportVO;

@Service
public class EtcService {
	private EtcMapper etcdao;
	
	//신고 하기
	public int insertReport(int noteNum) throws Exception {
		return etcdao.insertReport(noteNum);
	}
	
	//신고 목록 보기
	public List<ReportVO> selectAllReport() throws Exception {
		return etcdao.selectAllReport();
	}
	
	//신고 처리 하기
	public int updateReport(int reportNum) throws Exception {
		return etcdao.updateReport(reportNum);
	}

	
	
	
	//댓글알림
	public void commAlarm() throws Exception {}

	//노트신고알림
	public void noteReportAlarm() throws Exception {}

	//댓글신고알림
	public void commReportAlarm() throws Exception {}

	//상위랭크알림
	public void topRankAlarm() throws Exception {}

	
	
	
	//통계 회원 가입월
	public void stateMember() throws Exception {
		etcdao.stateMember();
	}
	
	//통계 상위노트 참조수
	public void stateTopRank() throws Exception {
		etcdao.stateTopRank();
	}
	

	

}
