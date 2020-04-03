package com.qfedu.ssm.controller;

import com.qfedu.ssm.entity.Users;
import com.qfedu.ssm.service.UserService;
import com.qfedu.ssm.util.UserIdUtil;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.web.HttpRequestHandler;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import java.io.UnsupportedEncodingException;

@Controller("UserController")
public class UserController {

    final String SUCCESS = "Welcome To The Supermarket";

    final String FAIL = "Name Or Password Error";

    @Resource
    private UserService userService;

    @PostMapping("userLogin")
    public String userLogin(@RequestParam(value = "Name", defaultValue = "") String userName,
                            @RequestParam(value = "password", defaultValue = "") String password,
                            HttpSession session) throws IOException {


        System.out.println(userName);
        System.out.println(password);
        Users users = userService.selectByName(userName);



        if (users != null) {

            if (password.equals(users.getPassword())) {

                session.setAttribute("user", users);



            } else {
                session.setAttribute("msg", FAIL);

            }
        } else {
            session.setAttribute("msg", FAIL);

        }
        return "index";


    }

    @GetMapping("userLogout")
    public String userLogout(HttpSession session) {

        session.removeAttribute("user");

        return "index";
    }

    @PostMapping("createUser")
    public String createUser(
            @RequestParam(value = "username",defaultValue = "")String userName,
            @RequestParam(value = "password",defaultValue = "")String password,
            @RequestParam(value = "Email",defaultValue = "")String email,
            @RequestParam(value = "tel",defaultValue = "")String tel
    ){

        System.out.println(userName);
        System.out.println(password);
        Users users = new Users();
        users.setUserId(UserIdUtil.creatUserId());
        users.setUserName(userName);
        users.setPassword(password);
        users.setEmail(email);
        users.setTel(tel);
        userService.insertSelective(users);


        return "redirect:index";

    }
}
