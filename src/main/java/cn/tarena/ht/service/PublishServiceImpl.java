package cn.tarena.ht.service;

import cn.tarena.ht.mapper.PublishMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class PublishServiceImpl implements PublishService {
    @Autowired
    PublishMapper publishMapper;

    @Override
    public List<String> findAll() {
        return publishMapper.findAll();
    }

    @Override
    public void addPublish(String msg) {
        publishMapper.addPublish(msg);
    }
}
