package qna.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;

import qna.dto.QnaCommentDTO;
import qna.dto.QnaDTO;
import sqlmap.MybatisManager;

public class QnaDAO {
	
	//게시물 목록 리턴
	public List<QnaDTO> list(int start, int end){
		List<QnaDTO> list=null;
		SqlSession session=null;
		try {
			session=MybatisManager.getInstance().openSession();
			Map<String,Object> map=new HashMap<>();
			map.put("start", start);
			map.put("end", end);
			list=session.selectList("qna.list", map);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if(session != null) session.close();
		}
		return list; 
	}

	public void insert(QnaDTO dto) {
		SqlSession session=null;
		try {
			session=MybatisManager.getInstance().openSession();
			session.insert("qna.insert", dto);
			session.commit();//auto commit이 아님
		}catch (Exception e) {
			e.printStackTrace();
		}finally {
			if(session!=null) session.close();
		}
	}//insert()

	//첨부파일 이름 찾기
	public String getFileName(int num) {
		String result="";
		SqlSession session=null;
		try {
			session=MybatisManager.getInstance().openSession();
			result=session.selectOne("qna.getFileName", num);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if(session!=null) session.close();
		}
		return result;
	}//getFileName()

	//다운로드 횟수 증가 처리
	public void plusDown(int num) {
		SqlSession session=null;
		try {
			session=MybatisManager.getInstance().openSession();
			session.update("qna.plusDown", num);
			session.commit();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if(session!=null) session.close();
		}
	}//plusDown()

	public QnaDTO view(int num) {
		QnaDTO dto=null;
		SqlSession session=null;
		try {
			session=MybatisManager.getInstance().openSession();
			dto=session.selectOne("qna.view", num);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if( session!= null ) session.close();
		}
		return dto;
	}//view()
	
	public QnaDTO viewReplace(int num) {
		QnaDTO dto=null;
		SqlSession session=null;
		try {
			session=MybatisManager.getInstance().openSession();
			dto=session.selectOne("qna.view", num);
			//줄바꿈 처리
			String content=dto.getContent();
			content=content.replace("\n", "<br>");
			dto.setContent(content);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if( session!= null ) session.close();
		}
		return dto;
		
	}
	
	
	
	
	//조회수 증가 처리
	public void plusReadCount(int num, HttpSession count_session) {
		SqlSession session=null;
		try {
			long read_time=0;
			if(count_session.getAttribute("read_time_"+num)!=null) {
				read_time=(long)count_session.getAttribute("read_time_"+num);
			}
			long current_time=System.currentTimeMillis();//현재시각
			session=MybatisManager.getInstance().openSession();
			if(current_time-read_time>5*1000) {//현재시간-읽은시간>5초
				//24*60*60*1000 하루에 한번
				session.update("qna.plusReadCount", num);
				session.commit();
				//최근 열람 시각 업데이트
				count_session.setAttribute(
						"read_time_"+num, current_time);
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if( session!= null ) session.close();
		}
	}//plusReadCount()

	//댓글 목록을 구하는 코드
	public List<QnaCommentDTO> commentList(int num) {
		List<QnaCommentDTO> list=null;
		SqlSession session=null;
		try {
			session=MybatisManager.getInstance().openSession();
			list=session.selectList("qna.commentList", num);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if( session!= null ) session.close();
		}
		return list;
	}

	//댓글 추가
	public void commentAdd(QnaCommentDTO dto) {
		SqlSession session=null;
		try {
			session=MybatisManager.getInstance().openSession();
			session.insert("qna.commentAdd", dto);
			session.commit();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if(session!=null) session.close();
		}
		
	}

	//답글의 순서 조정
	public void updateStep(int ref, int re_step) {
		SqlSession session=null;
		try {
			session=MybatisManager.getInstance().openSession();
			QnaDTO dto=new QnaDTO();
			dto.setRef(ref);
			dto.setRe_step(re_step);
			session.update("qna.updateStep", dto);
			session.commit();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if(session!=null) session.close();
		}
	}//updateStep

	//답글 쓰기
	public void reply(QnaDTO dto) {
		SqlSession session=null;
		try {
			session=MybatisManager.getInstance().openSession();
			session.insert("qna.reply", dto);
			session.commit();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if(session!=null) session.close();
		}
	}//reply()

	//비밀번호 체크
	public String passwdCheck(int num, String passwd) {
		String result=null;
		SqlSession session=null;
		try {
			session=MybatisManager.getInstance().openSession();
			Map<String,Object> map=new HashMap<>();
			map.put("num", num);
			map.put("passwd", passwd);
			result=session.selectOne("qna.pass_check", map);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if(session!=null) session.close();
		}
		
		return result;
	}

	//수정
	public void update(QnaDTO dto) {
		SqlSession session=null;
		try {
			session = MybatisManager.getInstance().openSession();
			session.update("qna.update", dto);
			session.commit();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if(session != null) session.close();
		}
	}//update()

	public void delete(int num) {
		SqlSession session=null;
		try {
			session = MybatisManager.getInstance().openSession();
			session.update("qna.delete", num);
			session.commit();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if(session != null) session.close();
		}
		
	}
	
	public int qnaCount() {
		SqlSession session=
				MybatisManager.getInstance().openSession();
		int count=session.selectOne("qna.qnaCount");
		session.close();
		return count;
	}

	

}
