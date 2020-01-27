package dao;

import java.sql.SQLException;

import dto.TestDTO;

public class TestDAO extends DAO{
	public int insert(TestDTO dto) {
		int n=0;
		String sql ="insert into mvc_board (exam_no, exam_nm, quest_cnt, exam_time, quest_group, exam_desc, exam_type) "
				   +"values((select max(exam_no)+1 from exam), ?, ?, ?, ?, ?, ?)";
		try {
			psmt=conn.prepareStatement(sql);
			psmt.setString(1, dto.getExam_nm());
			psmt.setInt(2, dto.getQuest_cnt());
			psmt.setInt(3, dto.getExam_time());
			psmt.setString(4, dto.getQuest_group());
			psmt.setString(5, dto.getExam_desc());
			psmt.setString(6, dto.getExam_type());
			n = psmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return n;
	}
}
