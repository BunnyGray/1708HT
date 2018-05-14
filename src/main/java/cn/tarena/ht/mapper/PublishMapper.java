package cn.tarena.ht.mapper;

import java.util.List;

public interface PublishMapper {
    List<String> findAll();
    void addPublish(String msg);
}
