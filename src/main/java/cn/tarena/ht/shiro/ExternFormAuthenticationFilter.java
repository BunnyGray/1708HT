package cn.tarena.ht.shiro;

import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.subject.Subject;
import org.apache.shiro.web.filter.authc.FormAuthenticationFilter;
import org.apache.shiro.web.util.WebUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;

public class ExternFormAuthenticationFilter extends FormAuthenticationFilter {
    private static final Logger LOG = LoggerFactory.getLogger(ExternFormAuthenticationFilter.class);

    public ExternFormAuthenticationFilter() {
    }

    @Override
    protected boolean executeLogin(ServletRequest request, ServletResponse response) throws Exception {
        ExternUsernamePasswordToken token = createToken(request, response);
        try {
            doExternValidate((HttpServletRequest) request, token);
            Subject subject = getSubject(request, response);
            subject.login(token);
            LOG.info(token.getUsername() + " login success");
            return onLoginSuccess(token, subject, request, response);
        } catch (AuthenticationException e) {
            LOG.info(token.getUsername() + " login failed");
            return onLoginFailure(token, e, request, response);
        }
    }

    protected void doExternValidate(HttpServletRequest request, ExternUsernamePasswordToken token) {
        String captcha = request.getParameter("valicode");
        String code = request.getSession().getAttribute("valicode") == null ? "" : (String) request.getSession().getAttribute("valicode");
        if (!code.equalsIgnoreCase(captcha)) {
            throw new IncorrectCaptchaException("验证码错误！");
        }

    }

    @Override
    protected ExternUsernamePasswordToken createToken(ServletRequest request, ServletResponse response) {
        String username = getUsername(request);
        String password = getPassword(request);
        String captcha = getcaptcha(request);
        boolean rememberMe = isRememberMe(request);
        String host = getHost(request);
        return new ExternUsernamePasswordToken(username, password.toCharArray(), rememberMe, host, captcha);
    }

    public static final String DEFAULT_CAPTCHA_PARAM = "captcha";
    private String captchaParam = DEFAULT_CAPTCHA_PARAM;

    private String getcaptcha(ServletRequest request) {
        return WebUtils.getCleanParam(request, getCaptchaParam());
    }

    public String getCaptchaParam() {
        return captchaParam;
    }

    public void setCaptchaParam(String captchaParam) {
        this.captchaParam = captchaParam;
    }

    protected String getCaptcha(ServletRequest request) {
        return WebUtils.getCleanParam(request, getCaptchaParam());
    }

    @Override
    protected void setFailureAttribute(ServletRequest request, AuthenticationException ae) {
        request.setAttribute(getFailureKeyAttribute(), ae);
    }
}
