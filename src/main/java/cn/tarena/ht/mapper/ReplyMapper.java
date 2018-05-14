package cn.tarena.ht.mapper;

import cn.tarena.ht.pojo.Reply;

import java.util.List;

public interface ReplyMapper {
    List<Reply> findAll();
    List<Reply> findAllUnfinished();
    void updateResult(Reply reply);
    void updateGrade(Reply reply);
    void updateGradeAndResult(Reply reply);
    Integer getGrades(Reply reply);
    Integer getResult(Reply reply);
    Integer getQuery(Reply reply);
    void updateStatus(Reply reply);
    void updateStatusToFalse(Reply reply);
    Integer pageTitleSum();
    Integer pass();
    Integer teaProfessor();
    Integer teaAssociateProfessor();
    Integer teaSeniorProgrammer();
    Integer teaPositiveSeniorProgrammer();
    Integer infoFinished();
    Integer majorCUS();
    Integer majorCT();
    Integer majorSE();
    Integer time6();
    Integer time12();
    Integer typeApplyStudy();
    Integer typeEngineDesign();
    Integer typeProductStudy();
    Integer teaTeacher();
    String queryTime();
}
