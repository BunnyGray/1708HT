package cn.tarena.ht.service;

import cn.tarena.ht.mapper.LoginServiceMapper;
import cn.tarena.ht.pojo.AdminUser;
import cn.tarena.ht.pojo.Student;
import cn.tarena.ht.pojo.Teacher;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Map;

@Service
public class LoginServiceImpl implements LoginService {
    @Autowired
    LoginServiceMapper loginServiceMapper;
    public AdminUser adminLogin(Map map) {
        return loginServiceMapper.adminLogin(map);
    }

    public Student studentLogin(Map map) {
        return loginServiceMapper.studentLogin(map);
    }

    public Teacher teacherLogin(Map map) {
        return loginServiceMapper.teacherLogin(map);
    }
}
