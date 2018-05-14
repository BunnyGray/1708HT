package cn.tarena.ht.service;

import cn.tarena.ht.pojo.Reply;

import java.util.List;
import java.util.Map;

public interface ReplyService {
    List<Reply> findAll();
    List<Reply> findAllUnfinished();
    void updateResult(Reply reply);
    void updateGrade(Reply reply);
    void updateGradeAndResult(Reply reply);
    boolean isFinishGrade(Reply reply);
    boolean isFinishResult(Reply reply);
    boolean isFinishQuery(Reply reply);
    void updateStatus(Reply reply);
    void updateStatusToFalse(Reply reply);
    Map<String, String> getReplyStaticsMap();
    void genericWB(Map<String, String> map);
}
