package cn.tarena.ht.mapper;

import cn.tarena.ht.pojo.AdminUser;
import cn.tarena.ht.pojo.Student;
import cn.tarena.ht.pojo.Teacher;

import java.util.Map;

public interface LoginServiceMapper {
    AdminUser adminLogin(Map map);
    Student studentLogin(Map map);
    Teacher teacherLogin(Map map);
}
