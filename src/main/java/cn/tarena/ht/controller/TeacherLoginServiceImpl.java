package cn.tarena.ht.controller;

import cn.tarena.ht.mapper.TeacherLoginMapper;
import cn.tarena.ht.pojo.Teacher;
import cn.tarena.ht.service.TeacherLoginService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;
@Service
public class TeacherLoginServiceImpl implements TeacherLoginService {
    @Autowired
    TeacherLoginMapper teacherLoginMapper;

    @Override
    public List<Map> findResult(String teacherName) {
        return teacherLoginMapper.findResult(teacherName);
    }

    @Override
    public List<Map> findMyStuInfo(String name) {
        return teacherLoginMapper.findMyStuInfo(name);
    }

    @Override
    public List<Teacher> findTeacherList(String name) {
        return teacherLoginMapper.findTeacherList(name);
    }
}
