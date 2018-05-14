package cn.tarena.ht.service;

import cn.tarena.ht.pojo.AdminUser;
import cn.tarena.ht.pojo.BaseEntity;
import cn.tarena.ht.pojo.Student;
import cn.tarena.ht.pojo.Teacher;

import java.util.Map;

public interface LoginService {

    AdminUser adminLogin(Map map);
    Student studentLogin(Map map);
    Teacher teacherLogin(Map map);
    BaseEntity getUserByUsername(String username);
}
