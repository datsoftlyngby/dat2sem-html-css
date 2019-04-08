package dk.cphbusiness.html;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Enumeration;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "FrontController", urlPatterns = {"/FrontController"})
public class FrontController extends HttpServlet {

    @Override
    protected void service(
            HttpServletRequest request,
            HttpServletResponse response
            ) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        //try (
            PrintWriter out = response.getWriter();
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("  <head>");
            out.println("    <title>Servlet FrontController</title>");            
            out.println("  </head>");
            out.println("  <body>");
            out.println("    <h1>Servlet FrontController at " + request.getContextPath() + "</h1>");
            out.println("    <ol>");
            Enumeration<String> e = request.getParameterNames();
            while (e.hasMoreElements()) {
                String name = e.nextElement();
                String value = request.getParameter(name);
                out.println("      <li>"+name+": "+value+"</li>");
                }
            out.println("    </ol>");

            String giftNo = request.getParameter("gift");
            out.println("<p>The gift chosen was: "+giftNo.trim()+"</p>");
                    
            String[] iams = request.getParameterValues("iam");
            for (String iam : iams) out.println(iam);
            
            out.println("  </body>");
            out.println("</html>");
    }

    }
