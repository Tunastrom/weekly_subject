package ajax;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class GetXML
 */
@WebServlet("GetXML.do")
public class GetXML extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public GetXML() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/xml; charset=UTF-8"); 
		PrintWriter out = response.getWriter();
		out.print("<emplist>");
		out.print("<emp>");
		out.print("<no>1</no>");
		out.print("<name>고길동</name>");
		out.print("</emp>");
		
		out.print("<emp>");
		out.print("<no>2</no>");
		out.print("<name>둘리</name>");
		out.print("</emp>");
		
		out.print("<emp>");
		out.print("<no>3</no>");
		out.print("<name>희동이</name>");
		out.print("</emp>");
		out.print("</emplist>");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
