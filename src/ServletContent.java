import javax.servlet.annotation.WebServlet;
import java.io.IOException;


@WebServlet("/ServeltContent")
public class ServletContent extends javax.servlet.http.HttpServlet {
    protected void doPost(javax.servlet.http.HttpServletRequest request, javax.servlet.http.HttpServletResponse response) throws javax.servlet.ServletException, IOException {

    }

    protected void doGet(javax.servlet.http.HttpServletRequest request, javax.servlet.http.HttpServletResponse response) throws javax.servlet.ServletException, IOException {
        response.getWriter().print("<b>I am server content</b>");
    }
}
