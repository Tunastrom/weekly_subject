package controller;

import java.io.IOException;
import java.util.HashMap;

import javax.servlet.Servlet;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import command.Command;
import command.addTestCommand;
import command.addTestCommandDAO;


/**
 * Servlet implementation class NewFrontController
 */
@WebServlet("*.do")
public class CBTController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       HashMap<String, Command> cont = new HashMap<>(); 
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CBTController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see Servlet#init(ServletConfig)
	 */
	public void init(ServletConfig config) throws ServletException {
//		cont.put("/index.do", );
		cont.put("/addtest.do", new addTestCommand());
		cont.put("/addtestdao.do", new addTestCommandDAO());
//		cont.put("/loginOk.do", );
//		cont.put("/logout.do",);
//		cont.put("/newMember.do", );
//		cont.put("/idCheck.do", );
//		cont.put("/newMemberOk.do", );
//		cont.put("/memberList.do", );
//		cont.put("/notice.do", );
//		cont.put("/noticeInput.do", );
//		cont.put("/noticeInputOk.do", );
//		cont.put("/boardList.do", );
//		cont.put("/boardWrite.do",);
//		cont.put("/boardWriteOk.do", );
//		cont.put("/boardRead.do", );
		
		
		
		
		
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
		System.out.println(path);
		
		Command commandImpl = cont.get(path);
		commandImpl.execute(request, response);	
	}

}
