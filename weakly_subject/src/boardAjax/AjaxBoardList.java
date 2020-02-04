package boardAjax;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import command.Command;
import dao.BoardDAO;
import dto.BoardDTO;
import net.sf.json.JSONArray;

public class AjaxBoardList implements Command{

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		BoardDAO dao = new BoardDAO();
		List<BoardDTO> list = dao.selectList();
		// 자바 객체 -> JSON string
		String result = JSONArray.fromObject(list).toString();
		return "ajax:"+ result;
	}
	
}
