package common;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

/**
 * Created by zhengjun on 5/13/14.
 */
public class TestServlet extends HttpServlet {
    public  void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
        PrintWriter pw = response.getWriter();
        response.setContentType("text/html");
        pw.println("<html>");
        pw.println("<head><title>Hello World</title></title>");
        pw.println("<body>");
        pw.println("<h1>Hello World</h1>");
        pw.println("</body></html>");
    }
}
