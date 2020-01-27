package command;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.TestDAO;
import dto.TestDTO;

public class addTestCommandDAO implements Command{

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		TestDTO dto = new TestDTO();
		TestDAO dao = new TestDAO();
		dto.setExam_nm(request.getParameter("testName"));
		dto.setQuest_cnt(Integer.parseInt(request.getParameter("questCount")));
		dto.setExam_time(Integer.parseInt(request.getParameter("testTime")));
		dto.setQuest_group(request.getParameter("group"));
		dto.setExam_desc(request.getParameter("desc"));
		dto.setExam_type(request.getParameter("type"));
		dao.insert(dto);

		
	}
	
}
