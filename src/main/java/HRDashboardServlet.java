import java.io.IOException;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;




@WebServlet("/HRDashboardServlet")
public class HRDashboardServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        handleRequest(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        handleRequest(request, response);
    }

    private void handleRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();

        // Retrieving session attributes set during login
        String hrName = (String) session.getAttribute("ename");
        String hrID = (String) session.getAttribute("hrID");
        String department = (String) session.getAttribute("department");
        String doj = (String) session.getAttribute("doj");
        String phone = (String) session.getAttribute("phone");

        // Logging to ensure attributes are set correctly
        System.out.println("HR Name: " + hrName);
        System.out.println("HR ID: " + hrID);
        System.out.println("Department: " + department);
        System.out.println("DOJ: " + doj);
        System.out.println("Phone: " + phone);

        // Setting request attributes for forwarding to JSP
        request.setAttribute("hrName", hrName);
        request.setAttribute("hrID", hrID);
        request.setAttribute("department", department);
        request.setAttribute("doj", doj);
        request.setAttribute("phone", phone);

        RequestDispatcher rd = request.getRequestDispatcher("HRDashboard.jsp");
        rd.forward(request, response);
    }
}
