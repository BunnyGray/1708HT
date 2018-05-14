package cn.tarena.ht.controller;

import cn.tarena.ht.service.LoginService;
import cn.tarena.ht.tool.VerifyCode;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

@Controller
public class LoginController extends BaseController {
    @Autowired
    LoginService loginService;

    @RequestMapping("tologin")
    public String tologin() {
        return "/sysadmin/login/login";
    }

    @RequestMapping("/logout")
    public String logout(HttpSession session) {
        session.removeAttribute("_CURRENT_USER");
        return "/sysadmin/login/logout";
    }

    @RequestMapping("login")
    public String login(String username, String password, String usertype, String valicode, Model model, HttpSession session) {

        if (valicode == null) {
            model.addAttribute("errorInfo", "请输入验证码！");
            return "/sysadmin/login/login";
        }
        String code = session.getAttribute("valicode") == null ? "" : (String) session.getAttribute("valicode");
        if (!code.equalsIgnoreCase(valicode)) {
//            model.addAttribute("errorInfo", "验证码错误！");
//            return "/sysadmin/login/login";
        }
        if (StringUtils.isEmpty(username) || StringUtils.isEmpty(password)) {
            model.addAttribute("errorInfo", "用户名或密码不能为空！");
            return "/sysadmin/login/login";
        }
        //        password = Md5Utils.getMd5(password, username);
        Object user;
        Map<String, String> map = new HashMap<String, String>();
        map.put("username", username);
        map.put("password", password);
        if (usertype.equals("1")) {
            user = loginService.adminLogin(map);
        } else if (usertype.equals("2")) {
            user = loginService.studentLogin(map);
        } else {
            user = loginService.teacherLogin(map);
        }
        if (user == null) {
            model.addAttribute("errorInfo", "用户名或密码不正确！");
            return "/sysadmin/login/login";
        }

        //把登录成功的用户信息 保存到session域中
        session.setAttribute("_CURRENT_USER", user);
        //登录成功跳转到首页
        return "redirect:/home";
        //        return "/sysadmin/login/login";
    }

    @RequestMapping("/servlet/ValiImageServlet")
    public void getVerify(Model model, HttpServletResponse response, HttpSession session) throws IOException {
        response.setDateHeader("Expires", -1);
        response.setHeader("Cache-Control", "no-cache");
        VerifyCode vc = new VerifyCode();
        vc.drawImage(response.getOutputStream());
        session.setAttribute("valicode", vc.getCode());
    }
}
