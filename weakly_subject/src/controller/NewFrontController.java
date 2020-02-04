package controller;

import java.io.IOException;
import java.util.HashMap;
import java.util.function.BiFunction;

import javax.servlet.RequestDispatcher;
import javax.servlet.Servlet;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import boardAjax.AjaxBoardList;
import command.Command;


/**
 * Servlet implementation class NewFrontController
 */
@WebServlet("*.do")
public class NewFrontController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       HashMap<String, Command> cont = new HashMap<>(); 
    /**
     * @see HttpServlet#HttpServlet()
     */
    public NewFrontController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see Servlet#init(ServletConfig)
	 */
	public void init(ServletConfig config) throws ServletException {
		//cont.put("/index.do", new IndexCommand());
		//board
		//등록
		//수정
		//삭제
		//member
		//ajax
		cont.put("/ajaxBoardList.do", new AjaxBoardList());
			
	}

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//실행할 Class객체를 찾아주는 부분
		//hashMap의 키값인 문자열 ".xxxxx"를 만드는 과정
		request.setCharacterEncoding("utf-8");
		String uri = request.getRequestURI();
		String context = request.getContextPath();
		String path = uri.substring(context.length());
		//로그처리
		System.out.println("path="+path);
		//권한체크(로그인 체크)
		
		
		Command commandImpl = cont.get(path);
		String page = null;
		response.setContentType("text/html; charset=UTF-8");
		if(commandImpl != null) {
			//return 된 viewpage 주소 텍스트 실행 
			page = commandImpl.execute(request, response);
			if (page != null & page.isEmpty()) {
				if (page.startsWith("redirect:")){
					String view = page.substring(9);
					response.sendRedirect(view);
				} else if (page.startsWith("ajax:")){
					response.getWriter().append(page.substring(5));
				} else if (page.startsWith("script:")){
					response.getWriter().append("<script>")
                    .append(page.substring(7))
                    .append("</script>");
				} else {
					request.getRequestDispatcher(page)
					.forward(request, response); 
				}
			}
		} else {
			response.getWriter().append("잘못된 요청");
		}
	}
}

