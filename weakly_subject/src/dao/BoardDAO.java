package dao;

import java.sql.SQLException;
import java.util.ArrayList;

import dto.BoardDTO;


public class BoardDAO extends DAO {
	private BoardDTO dto = new BoardDTO();
	private ArrayList<BoardDTO> list;
	
	public BoardDAO() {
		super();
	}
		
	public ArrayList<BoardDTO> selectList(){ //전체리스트 또는 한 개 리스트 가져오
		list = new ArrayList<>(); //id = 0: 전체 or 그룹전체
		dto = null;
		String sql = "select * from employees";
		try {
			psmt=conn.prepareStatement(sql);
			rs = psmt.executeQuery();
			while(rs.next()) {
				dto = new BoardDTO();
				dto.setEmployee_id(rs.getInt("employee_id"));
				dto.setFirst_name(rs.getString("first_name"));
				dto.setLast_name(rs.getString("last_name"));
			//	dto.setHire_date(rs.getDate("hire_date"));
				dto.setSalary(rs.getInt("salary"));
				list.add(dto);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
			//resultset 삭제됨
		}
	
		return list; 
	}
	
	public BoardDTO SelectOne(int no) {
		String sql = "select * from employees where employee_no = ?";
		dto = null;
		try {
			psmt = conn.prepareStatement(sql);
			psmt.setInt(1,no);
			rs = psmt.executeQuery();
			while(rs.next()) {
				dto = new BoardDTO();
				dto.setEmployee_id(rs.getInt("employee_id"));
				dto.setFirst_name(rs.getString("first_name"));
				dto.setLast_name(rs.getString("last_name"));
				dto.setHire_date(rs.getDate("hire_date"));
				dto.setSalary(rs.getInt("salary"));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return dto;
	}
	
//	public int insert(BoardDTO dto) {
//		int n=0;
//		String sql ="insert into mvc_board (bid, bname, btitle, bcontent, bgroup, bstep, bident, userid) "
//				   +"values(b_num.nextval, ?, ?, ?, b_num.currval, 0, 0, ?)";
//		try {
//			psmt=conn.prepareStatement(sql);
//			psmt.setString(1, dto.getWriter());
//			psmt.setString(2, dto.getTitle());
//			psmt.setString(3, dto.getContents());
//			psmt.setString(4, dto.getUserId());
//			n = psmt.executeUpdate();
//		} catch (SQLException e) {
//			e.printStackTrace();
//		} finally {
//			close();
//		}
//		return n;
//	}
}
