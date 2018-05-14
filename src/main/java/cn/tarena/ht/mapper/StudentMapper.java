package cn.tarena.ht.mapper;

import cn.tarena.ht.pojo.Student;

import java.util.List;

public interface StudentMapper {
    List<Student> findAll();
    Student findOne(String userId);
    void updateOne(Student student);
    void deleteByIds(String[] ids);
    void save(Student student);
}
