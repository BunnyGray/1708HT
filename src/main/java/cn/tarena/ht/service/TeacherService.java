package cn.tarena.ht.service;

import cn.tarena.ht.pojo.Teacher;

import java.util.List;

public interface TeacherService {
    List<Teacher> findAll();
    Teacher findOne(String userId);
    void updateOne(Teacher teacher);
    void save(Teacher teacher);
    void deleteByIds(String[] ids);
}
