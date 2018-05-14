package cn.tarena.ht.service;

import cn.tarena.ht.mapper.StudentMapper;
import cn.tarena.ht.pojo.Student;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class StudentServiceImpl implements StudentService {
    @Autowired
    private StudentMapper studentMapper;

    @Override
    public List<Student> findAll() {
        return studentMapper.findAll();
    }

    @Override
    public Student findOne(String userId) {
        return studentMapper.findOne(userId);
    }

    @Override
    public void updateOne(Student student) {
        studentMapper.updateOne(student);
    }

    @Override
    public void deleteByIds(String[] ids) {
        studentMapper.deleteByIds(ids);
    }

    @Override
    public void save(Student student) {
        studentMapper.save(student);
    }
}
