package cn.tarena.ht.mapper;

import cn.tarena.ht.pojo.Teacher;

import java.util.List;
import java.util.Map;

public interface TeacherLoginMapper {
    List<Map> findResult(String jobNo);
    List<Map> findMyStuInfo(String name);
    List<Teacher> findTeacherList(String name);
}
