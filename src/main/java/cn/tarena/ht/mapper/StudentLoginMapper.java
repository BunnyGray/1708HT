package cn.tarena.ht.mapper;

import java.util.List;
import java.util.Map;

public interface StudentLoginMapper {
    List<Map> findAll(String stuNo);
    String findSuggest(String stuNo);
}
