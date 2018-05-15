package cn.tarena.ht.controller;

import cn.tarena.ht.pojo.BaseEntity;
import cn.tarena.ht.service.LoginService;
import cn.tarena.ht.shiro.ExternUsernamePasswordToken;
import cn.tarena.ht.shiro.IncorrectCaptchaException;
import cn.tarena.ht.tool.MD5Utils;
import cn.tarena.ht.tool.VerifyCode;
import org.apache.ibatis.jdbc.Null;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.subject.Subject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

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
    public String login(String username, String password, String usertype, String valicode, Model model, HttpSession session, ServletRequest request) {
        //获取subject对象
        Subject subject = SecurityUtils.getSubject();
        //创建一个用户名和密码的令牌
        ExternUsernamePasswordToken token = null;
        try {
            token = new ExternUsernamePasswordToken(username, MD5Utils.md5(password).toCharArray(), false, null, valicode);
        } catch (NullPointerException e) {
            return "/sysadmin/login/login";
        }
        try {
            doExternValidate((HttpServletRequest) request, token);
            subject.login(token);
            //从subject中得到正确的用户对象 放到session
            BaseEntity user = (BaseEntity) subject.getPrincipal();
            session.setAttribute("_CURRENT_USER", user);
            //登录成功跳转到首页
            return "redirect:/home";
        } catch (AuthenticationException e) {
            e.printStackTrace();
            if (e.getMessage() == "验证码错误！") {
                model.addAttribute("errorInfo", e.getMessage());
            } else {
                model.addAttribute("errorInfo", "用户名或密码不正确！");
            }
            return "/sysadmin/login/login";
        }
    }

    protected void doExternValidate(HttpServletRequest request, ExternUsernamePasswordToken token) {
        String captcha = request.getParameter("valicode");
        String code = request.getSession().getAttribute("valicode") == null ? "" : (String) request.getSession().getAttribute("valicode");
        if (!code.equalsIgnoreCase(captcha)) {
            throw new IncorrectCaptchaException("验证码错误！");
        }
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
