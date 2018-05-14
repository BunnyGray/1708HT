package cn.tarena.ht.service;

import cn.tarena.ht.pojo.Teacher;

import java.util.List;
import java.util.Map;

public interface TeacherLoginService {
    List<Map> findResult(String teacherName);
    List<Map> findMyStuInfo(String name);
    List<Teacher> findTeacherList(String name);
}
