import com.alibaba.fastjson.JSON;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.List;

@WebServlet("/NewListServlet")
public class NewListServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List list = new ArrayList();
        list.add(new News("Tiobe: 2021 top rank of program","2020 -1 -1","tencent","hah"));
        list.add(new News("Tiobe: 2022 top rank of program","2019 -1 -1","lili","hah"));
        list.add(new News("Tiobe: 2023 top rank of program","2018 -1 -2","tencent","hah"));
        list.add(new News("Tiobe: 2024 top rank of program","2017 -2 -1","tiobe","hah"));
        String json = JSON.toJSONString(list);
        System.out.println(json);
        response.setContentType("text/html;charset=UTF-8");
        response.getWriter().println(json);
    }
}
