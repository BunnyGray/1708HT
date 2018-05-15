package cn.tarena.ht.shiro;

import cn.tarena.ht.pojo.AdminUser;
import cn.tarena.ht.pojo.BaseEntity;
import cn.tarena.ht.pojo.Teacher;
import cn.tarena.ht.service.LoginService;
import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.AuthenticationInfo;
import org.apache.shiro.authc.AuthenticationToken;
import org.apache.shiro.authc.SimpleAuthenticationInfo;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.authz.AuthorizationInfo;
import org.apache.shiro.realm.SimpleAccountRealm;
import org.apache.shiro.subject.PrincipalCollection;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class AuthRealm extends SimpleAccountRealm {
    @Autowired
    private LoginService loginService;

    //登录证明
    @Override
    protected AuthenticationInfo doGetAuthenticationInfo(AuthenticationToken token) throws AuthenticationException {
        //得到用户名
        UsernamePasswordToken loginToken = (ExternUsernamePasswordToken) token;
        //给Info准备数据
        //得到正确的用户信息
        BaseEntity user = loginService.getUserByUsername(loginToken.getUsername());
//        System.err.println(user);
        /**
         * principal:代表正确的对象
         * credentials：代表正确的密码
         * realmName:原材料对象的名称
         */
        AuthenticationInfo info = new SimpleAuthenticationInfo(user, user.getPasswd(), this.getName());
        return info;
    }

    //权限认证
    @Override
    protected AuthorizationInfo doGetAuthorizationInfo(PrincipalCollection principals) {
        return super.doGetAuthorizationInfo(principals);
    }
}
