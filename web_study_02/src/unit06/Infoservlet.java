package unit06;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Infoservlet
 */
@WebServlet("/Infoservlet")
public class Infoservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Infoservlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		/*response.getWriter().append("Served at: ").append(request.getContextPath());*/
		response.setContentType("text/html;charset=UTF-8");
		String name=request.getParameter("name");
		String addr=request.getParameter("addr");
		PrintWriter out=response.getWriter();
		out.print("<html><body>");
		out.print("당신이 입력한 정보입니다.<br>");
		out.print("이름:");
		out.print(name);
		out.print("<br>주소 :");
		out.print(addr);
		out.print("<br><a href='javascript:history.go(-1)'>다시</a>");
		out.print("</html></body>");
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
