package unit11;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class testServlet
 */
@WebServlet("/testServlet")
public class testServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public testServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
//		response.getWriter().append("Served at: ").append(request.getContextPath());
		response.setContentType("text/html;charset=UTF-8");
		String[] contents = new String[100];
		contents[0] = "이름: "+request.getParameter("name");
		contents[1] = "주민등록번호: "+request.getParameter("ssn1")+request.getParameter("ssn2");
		contents[2] = "아이디: "+request.getParameter("id");
		contents[3] = "비밀번호: "+request.getParameter("pw");
		contents[4] = "메일주소: "+request.getParameter("mail1")+"@"+request.getParameter("mail2");
		contents[5] = "우편번호: "+request.getParameter("post");
		contents[6] = "주소: "+request.getParameter("addr1")+request.getParameter("addr2");
		contents[7] = "직업: "+request.getParameter("job");
		String cbox[] = request.getParameterValues("interest");
		//contents[8] = "관심분야: "+request.getParameterValues("interest");
//		String name = request.getParameter("name");
//		String ssn1 = request.getParameter("ssn1");
//		String ssn2 = request.getParameter("ssn2");
//		String id = request.getParameter("id");
//		String pw = request.getParameter("pw");
//		String repw = request.getParameter("repw");
//		String mail1 = request.getParameter("mail1");
//		String mail2 = request.getParameter("mail2");
//		String post = request.getParameter("post");
//		String addr1 = request.getParameter("addr1");
//		String addr2 = request.getParameter("addr2");
//		String job = request.getParameter("job");
//		String mailrcv = request.getParameter("mailrcv");
//		String[] interest = request.getParameterValues("interest");
		PrintWriter out = response.getWriter();
		out.print("입력 값은 아래와 같습니다.");
		out.print("<html><body>");
		for (int i = 0; i<contents.length; i++) {
			if(contents[i] == null) {
				break;
			}
			out.print(contents[i]+"<br>");
		}
		out.print("관심 분야:");
		for (int i = 0; i<contents.length; i++) {
			if(cbox[i] == null) {
				break;
			}
			out.print(cbox[i]+" ,");
		}
		out.print("<a href='javascript:history.go(-1)'>돌아가기</a>");
		out.print("</body></html>");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}