package cn.tarena.ht.service;

import cn.tarena.ht.mapper.MsgMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MsgServiceImpl implements MsgService {
    @Autowired
    MsgMapper msgMapper;
    @Override
    public String getLastMsg() {
        return msgMapper.getLastMsg();
    }
}
