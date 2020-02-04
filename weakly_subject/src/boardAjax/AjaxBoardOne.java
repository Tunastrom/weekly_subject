package boardAjax;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import command.Command;
import dao.BoardDAO;
import dto.BoardDTO;
import net.sf.json.JSONObject;

public class AjaxBoardOne implements Command{

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		//no 파라미터 받기
		int no = Integer.parseInt(request.getParameter("no"));
		//단건조회
		BoardDAO dao = new BoardDAO();
		BoardDTO dto = dao.SelectOne(no);
		//json
		String result = JSONObject.fromObject(dto).toString();
		return "ajax:" + result;
	}
	
}
