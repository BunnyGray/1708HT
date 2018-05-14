package cn.tarena.ht.pojo;

public class Reply {
    private Integer stuNo;
    private String name;
    private String gender;
    private String teacherIn;
    private String teacherOut;
    private String pageTopic;
    private Integer pageType;
    private Integer queryResult;
    private Integer grade1;
    private Integer grade2;
    private Integer replyGrade;
    private String replyResult;
    private String isFinished;

    @Override
    public String toString() {
        return "Reply{" + "stuNo=" + stuNo + ", name='" + name + '\'' + ", gender='" + gender + '\'' + ", teacherIn='" + teacherIn + '\'' + ", teacherOut='" + teacherOut + '\'' + ", pageTopic='" + pageTopic + '\'' + ", pageType=" + pageType + ", queryResult=" + queryResult + ", grade1=" + grade1 + ", grade2=" + grade2 + ", replyGrade=" + replyGrade + ", replyResult='" + replyResult + '\'' + ", isFinished='" + isFinished + '\'' + '}';
    }

    public Integer getStuNo() {
        return stuNo;
    }

    public void setStuNo(Integer stuNo) {
        this.stuNo = stuNo;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public String getTeacherIn() {
        return teacherIn;
    }

    public void setTeacherIn(String teacherIn) {
        this.teacherIn = teacherIn;
    }

    public String getTeacherOut() {
        return teacherOut;
    }

    public void setTeacherOut(String teacherOut) {
        this.teacherOut = teacherOut;
    }

    public String getPageTopic() {
        return pageTopic;
    }

    public void setPageTopic(String pageTopic) {
        this.pageTopic = pageTopic;
    }

    public Integer getPageType() {
        return pageType;
    }

    public void setPageType(Integer pageType) {
        this.pageType = pageType;
    }

    public Integer getQueryResult() {
        return queryResult;
    }

    public void setQueryResult(Integer queryResult) {
        this.queryResult = queryResult;
    }

    public Integer getGrade1() {
        return grade1;
    }

    public void setGrade1(Integer grade1) {
        this.grade1 = grade1;
    }

    public Integer getGrade2() {
        return grade2;
    }

    public void setGrade2(Integer grade2) {
        this.grade2 = grade2;
    }

    public Integer getReplyGrade() {
        return replyGrade;
    }

    public void setReplyGrade(Integer replyGrade) {
        this.replyGrade = replyGrade;
    }

    public String getReplyResult() {
        return replyResult;
    }

    public void setReplyResult(String replyResult) {
        this.replyResult = replyResult;
    }

    public String getIsFinished() {
        return isFinished;
    }

    public void setIsFinished(String isFinished) {
        this.isFinished = isFinished;
    }
}