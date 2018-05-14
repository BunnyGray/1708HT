package cn.tarena.ht.service;

import java.util.List;

public interface PublishService {
    List<String> findAll();
    void addPublish(String msg);
}
