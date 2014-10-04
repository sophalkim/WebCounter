package servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.FileDao;

/**
 * Servlet implementation class FileCounter
 */
@WebServlet("/FileCounter")
public class FileCounter extends HttpServlet {
	private static final long serialVersionUID = 1L;
	int count;
	private FileDao dao;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public FileCounter() {
        super();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
    @Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession(true);
		session.setMaxInactiveInterval(5);
		response.setContentType("text/plain");
		PrintWriter out = response.getWriter();
		if (session.isNew()) {
			count++;
		}
		out.println("This site has been accessed " + count + " times.");
		out.println("<a href='Test.jsp'>Link to Test</a>");
	}
	
	@Override
	public void init() throws ServletException {
		dao = new FileDao();
		try {
			count = dao.getCount();
		} catch (Exception e) {
			getServletContext().log("An exception occurred in FileCounter", e);
			throw new ServletException("An exception occurred in FileCounter" + e.getMessage());
		}
	}
	
	public void destroy() {
		super.destroy();
		try {
			dao.save(count);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
