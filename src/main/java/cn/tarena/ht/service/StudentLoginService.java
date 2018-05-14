package cn.tarena.ht.service;

import java.util.List;
import java.util.Map;

public interface StudentLoginService {
    List<Map> findAll(String student);
    String findSuggest(String stuNo);
}
