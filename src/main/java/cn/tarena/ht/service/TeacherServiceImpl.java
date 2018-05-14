package cn.tarena.ht.service;

import cn.tarena.ht.mapper.TeacherMapper;
import cn.tarena.ht.pojo.Teacher;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class TeacherServiceImpl implements TeacherService {
    @Autowired
    TeacherMapper teacherMapper;

    @Override
    public List<Teacher> findAll() {
        return teacherMapper.findAll();
    }

    @Override
    public Teacher findOne(String userId) {
        return teacherMapper.findOne(userId);
    }

    @Override
    public void updateOne(Teacher teacher) {
        teacherMapper.updateOne(teacher);
    }

    @Override
    public void save(Teacher teacher) {
        teacherMapper.save(teacher);
    }

    @Override
    public void deleteByIds(String[] ids) {
        teacherMapper.deleteByIds(ids);
    }
}
