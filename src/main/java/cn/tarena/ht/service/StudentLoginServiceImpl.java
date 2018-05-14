package cn.tarena.ht.service;

import cn.tarena.ht.mapper.StudentLoginMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;
@Service
public class StudentLoginServiceImpl implements StudentLoginService {
    @Autowired
    StudentLoginMapper studentLoginMapper;

    @Override
    public List<Map> findAll(String stuNo) {
        return studentLoginMapper.findAll(stuNo);
    }

    @Override
    public String findSuggest(String stuNo) {
        return studentLoginMapper.findSuggest(stuNo);
    }
}
