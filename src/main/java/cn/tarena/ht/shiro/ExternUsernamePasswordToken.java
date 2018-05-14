package cn.tarena.ht.shiro;

import org.apache.shiro.authc.UsernamePasswordToken;

public class ExternUsernamePasswordToken extends UsernamePasswordToken {
    private String captcha;

    public ExternUsernamePasswordToken(String username, char[] password, boolean rememberMe, String host, String captcha) {
        super(username, password, rememberMe, host);
        this.captcha = captcha;
    }

    public String getCaptcha() {
        return captcha;
    }

    public void setCaptcha(String captcha) {
        this.captcha = captcha;
    }
}
